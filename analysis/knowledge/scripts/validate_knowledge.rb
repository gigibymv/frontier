#!/usr/bin/env ruby
# frozen_string_literal: true

require "digest"
require "json"
require "pathname"
require "psych"
require "date"
require "set"

ROOT = Pathname(__dir__).join("..", "..", "..").expand_path
KNOWLEDGE_ROOT = ROOT.join("analysis", "knowledge")
TRANSCRIPT_ROOT = ROOT.join("interviews", "transcripts")
PILLARS_PATH = KNOWLEDGE_ROOT.join("ontology", "pillars.yaml")
COMPANY_TYPES_PATH = KNOWLEDGE_ROOT.join("ontology", "company_types.yaml")
MANIFEST_PATH = KNOWLEDGE_ROOT.join("sources", "transcript_manifest.yaml")
REGISTRY_PATH = KNOWLEDGE_ROOT.join("sources", "source_registry.yaml")
INGESTION_STATUS_PATH = KNOWLEDGE_ROOT.join("sources", "ingestion_status.yaml")
QUOTE_SPANS_PATH = KNOWLEDGE_ROOT.join("sources", "quote_spans.jsonl")
ATOMIC_INSIGHTS_DIR = KNOWLEDGE_ROOT.join("insights", "atomic")
SYNTHESIZED_CLAIMS_PATH = KNOWLEDGE_ROOT.join("claims", "synthesized_claims.yaml")
SCORECARD_CLAIMS_PATH = KNOWLEDGE_ROOT.join("claims", "scorecard_claims.yaml")
SLIDE_CLAIM_REGISTRY_PATH = KNOWLEDGE_ROOT.join("deck_trace", "slide_claim_registry.yaml")
ROOT_README_PATH = ROOT.join("README.md")
CONTEXT_WINDOW = 120
LEGACY_SECOND_PILLAR = ["Har", "ness"].join

REQUIRED_ATOMIC_FIELDS = %w[
  insight_id
  title
  pillar
  dimension
  claim_type
  maturity_level
  summary
  evidence_status
  synthesis_status
  scorecard_status
  deck_status
  weighted_support
  source_links
  caveats
  contradiction_links
  human_review
  provenance
].freeze

REQUIRED_WEIGHTED_SUPPORT_FIELDS = %w[
  supporting_quote_span_count
  supporting_source_count
  contradicting_source_count
  weighted_support_score
  confidence_note
].freeze

def load_yaml(path)
  Psych.safe_load(path.read, permitted_classes: [Date], aliases: false)
end

def sha256(text)
  "sha256:#{Digest::SHA256.hexdigest(text)}"
end

def validation_error(message)
  raise message
end

results = {
  "checks" => [],
  "transcript_source_coverage" => {},
  "quote_span_count" => 0,
  "atomic_insight_count" => 0,
  "ingestion_status_counts" => {}
}

allowed_pillars = load_yaml(PILLARS_PATH).fetch("allowed_values")
allowed_company_types = load_yaml(COMPANY_TYPES_PATH).fetch("allowed_values")

manifest = load_yaml(MANIFEST_PATH)
registry = load_yaml(REGISTRY_PATH)
manifest_records = manifest.fetch("transcripts")
registry_records = registry.fetch("registered_sources")

actual_transcripts = Dir.glob(TRANSCRIPT_ROOT.join("**", "*.md").to_s).sort.map do |path|
  Pathname(path).relative_path_from(ROOT).to_s
end

[["manifest", manifest_records], ["registry", registry_records]].each do |label, records|
  files = records.map { |record| record.fetch("transcript_file") }
  duplicates = files.group_by(&:itself).select { |_file, values| values.length > 1 }.keys
  missing = actual_transcripts - files
  extra = files - actual_transcripts
  validation_error("#{label} missing transcript files: #{missing.join(', ')}") unless missing.empty?
  validation_error("#{label} has extra transcript files: #{extra.join(', ')}") unless extra.empty?
  validation_error("#{label} has duplicate transcript files: #{duplicates.join(', ')}") unless duplicates.empty?

  records.each do |record|
    transcript_text = ROOT.join(record.fetch("transcript_file")).read
    validation_error("#{label} source_version mismatch for #{record.fetch('transcript_file')}") unless record.fetch("source_version") == sha256(transcript_text)
  end
end

registry_by_source_id = registry_records.to_h { |record| [record.fetch("source_id"), record] }
registry_source_ids = registry_by_source_id.keys

validation_error("Manifest and registry source counts differ") unless manifest_records.length == registry_records.length

registry_records.each do |record|
  company_type = record.fetch("company_type")
  unless allowed_company_types.include?(company_type)
    validation_error("Invalid company_type #{company_type} for #{record.fetch('source_id')}")
  end
end

results["transcript_source_coverage"] = {
  "actual_transcript_count" => actual_transcripts.length,
  "manifest_count" => manifest_records.length,
  "registry_count" => registry_records.length
}

results["checks"] << "Transcript coverage and source_version hashing verified"
results["checks"] << "Registry company_type values verified"

quote_spans = {}
quote_span_source_ids = Set.new
QUOTE_SPANS_PATH.each_line.with_index(1) do |line, line_number|
  next if line.strip.empty?

  record = JSON.parse(line)
  quote_span_id = record.fetch("quote_span_id")
  validation_error("Duplicate quote_span_id #{quote_span_id}") if quote_spans.key?(quote_span_id)

  source = registry_by_source_id.fetch(record.fetch("source_id")) do
    validation_error("Unknown source_id #{record.fetch('source_id')} in quote_spans.jsonl line #{line_number}")
  end
  transcript_text = ROOT.join(source.fetch("transcript_file")).read
  validation_error("quote_span source_version mismatch for #{quote_span_id}") unless record.fetch("source_version") == sha256(transcript_text)

  char_start = record.fetch("char_start")
  char_end = record.fetch("char_end")
  validation_error("Invalid char range for #{quote_span_id}") unless char_start.is_a?(Integer) && char_end.is_a?(Integer) && char_start >= 0 && char_end > char_start && char_end <= transcript_text.length

  quote_text = transcript_text[char_start...char_end]
  validation_error("quote_hash mismatch for #{quote_span_id}") unless record.fetch("quote_hash") == sha256(quote_text)

  context_start = [char_start - CONTEXT_WINDOW, 0].max
  context_end = [char_end + CONTEXT_WINDOW, transcript_text.length].min
  surrounding_text = transcript_text[context_start...context_end]
  validation_error("surrounding_text_hash mismatch for #{quote_span_id}") unless record.fetch("surrounding_text_hash") == sha256(surrounding_text)

  quote_spans[quote_span_id] = record
  quote_span_source_ids << record.fetch("source_id")
end

results["quote_span_count"] = quote_spans.length
results["checks"] << "Quote span hashes and transcript anchors verified"

atomic_paths = Dir.glob(ATOMIC_INSIGHTS_DIR.join("*.yaml").to_s).sort.reject do |path|
  File.basename(path) == "ATOMIC_INSIGHT_TEMPLATE.yaml"
end

atomic_source_ids = Set.new
atomic_insight_ids = Set.new
atomic_paths.each do |path|
  record = load_yaml(Pathname(path))
  insight_id = record.fetch("insight_id")
  validation_error("Duplicate atomic insight_id #{insight_id}") if atomic_insight_ids.include?(insight_id)
  atomic_insight_ids << insight_id

  missing_fields = REQUIRED_ATOMIC_FIELDS.reject { |field| record.key?(field) }
  validation_error("Missing required atomic fields in #{path}: #{missing_fields.join(', ')}") unless missing_fields.empty?

  unless allowed_pillars.include?(record.fetch("pillar"))
    validation_error("Invalid pillar #{record.fetch('pillar')} in #{path}")
  end

  weighted_support = record.fetch("weighted_support")
  missing_weighted_fields = REQUIRED_WEIGHTED_SUPPORT_FIELDS.reject { |field| weighted_support.key?(field) }
  validation_error("Missing weighted_support fields in #{path}: #{missing_weighted_fields.join(', ')}") unless missing_weighted_fields.empty?

  record.fetch("source_links").each do |source_link|
    source_id = source_link.fetch("source_id")
    validation_error("Unknown source_id #{source_id} referenced in #{path}") unless registry_by_source_id.key?(source_id)

    atomic_source_ids << source_id
    source_link.fetch("quote_span_ids").each do |quote_span_id|
      validation_error("Unknown quote_span_id #{quote_span_id} referenced in #{path}") unless quote_spans.key?(quote_span_id)
      if quote_spans.fetch(quote_span_id).fetch("source_id") != source_id
        validation_error("quote_span_id #{quote_span_id} source mismatch in #{path}")
      end
    end
  end
end

results["atomic_insight_count"] = atomic_paths.length
results["checks"] << "Atomic insight required fields, pillars, source links, and quote_span references verified"

synthesized_claims = load_yaml(SYNTHESIZED_CLAIMS_PATH).fetch("claims")
synthesized_claim_ids = Set.new
synthesized_claims.each do |claim|
  claim_id = claim.fetch("claim_id")
  validation_error("Duplicate synthesized claim_id #{claim_id}") if synthesized_claim_ids.include?(claim_id)
  synthesized_claim_ids << claim_id

  claim.fetch("based_on_atomic_insights").each do |insight_id|
    validation_error("Unknown atomic insight #{insight_id} referenced by #{claim_id}") unless atomic_insight_ids.include?(insight_id)
  end

  human_gate = claim.fetch("human_gate")
  %w[scorecard_ready slide_ready].each do |ready_field|
    next unless claim.fetch(ready_field)

    if human_gate.fetch("review_state") != "approved" || human_gate.fetch("reviewer").to_s.strip.empty? || human_gate.fetch("last_reviewed").nil?
      validation_error("#{claim_id} is #{ready_field} without an approved named human review")
    end
  end
end
results["checks"] << "Synthesized claim references and human promotion gates verified"

scorecard_claims = load_yaml(SCORECARD_CLAIMS_PATH).fetch("scorecard_claims")
scorecard_claims.each do |scorecard_claim|
  upstream_claim_id = scorecard_claim.fetch("synthesized_claim_id")
  upstream_claim = synthesized_claims.find { |claim| claim.fetch("claim_id") == upstream_claim_id }
  validation_error("Unknown synthesized claim #{upstream_claim_id} in scorecard claims") unless upstream_claim
  validation_error("Scorecard claim references non-scorecard-ready claim #{upstream_claim_id}") unless upstream_claim.fetch("scorecard_ready")
end
results["checks"] << "Scorecard claim promotion references verified"

slide_registry = load_yaml(SLIDE_CLAIM_REGISTRY_PATH)
slide_registry_role = slide_registry.fetch("registry_role", "slide_ready_approval")
slide_registry.fetch("slide_claims").each do |slide_claim|
  claim_id = slide_claim.fetch("claim_id")
  if claim_id != "unresolved"
    upstream_claim = synthesized_claims.find { |claim| claim.fetch("claim_id") == claim_id }
    validation_error("Unknown synthesized claim #{claim_id} in slide claim registry") unless upstream_claim

    if slide_registry_role != "risk_inventory_not_slide_ready_approval" && !upstream_claim.fetch("slide_ready")
      validation_error("Slide-ready registry references non-slide-ready claim #{claim_id}")
    end
  end

  upstream_atomic_insight_id = slide_claim["upstream_atomic_insight_id"]
  if upstream_atomic_insight_id && !atomic_insight_ids.include?(upstream_atomic_insight_id)
    validation_error("Unknown atomic insight #{upstream_atomic_insight_id} in slide claim registry")
  end

  if slide_registry_role == "risk_inventory_not_slide_ready_approval" && slide_claim.fetch("unresolved_issue").to_s.strip.empty?
    validation_error("Risk inventory row #{slide_claim.fetch('slide_claim_id')} is missing unresolved_issue")
  end
end
results["checks"] << "Deck trace registry role and references verified"

ingestion_status = load_yaml(INGESTION_STATUS_PATH)
allowed_statuses = ingestion_status.fetch("allowed_statuses").to_set
status_records = ingestion_status.fetch("sources")
status_by_source_id = status_records.to_h { |record| [record.fetch("source_id"), record.fetch("status")] }

duplicates = status_records.map { |record| record.fetch("source_id") }.group_by(&:itself).select { |_source_id, values| values.length > 1 }.keys
validation_error("Duplicate ingestion status source_ids: #{duplicates.join(', ')}") unless duplicates.empty?

missing_status = registry_source_ids - status_by_source_id.keys
extra_status = status_by_source_id.keys - registry_source_ids
validation_error("Missing ingestion status for sources: #{missing_status.join(', ')}") unless missing_status.empty?
validation_error("Ingestion status has unknown sources: #{extra_status.join(', ')}") unless extra_status.empty?

status_by_source_id.each do |source_id, status|
  validation_error("Invalid ingestion status #{status} for #{source_id}") unless allowed_statuses.include?(status)

  if status == "quote_spans_only" && !quote_span_source_ids.include?(source_id)
    validation_error("Source marked quote_spans_only without quote spans: #{source_id}")
  end

  if status == "integrated_into_insights" && !atomic_source_ids.include?(source_id)
    validation_error("Source marked integrated_into_insights without atomic insight source_links: #{source_id}")
  end

  if atomic_source_ids.include?(source_id) && status != "integrated_into_insights"
    validation_error("Source has atomic insight links but status is #{status}: #{source_id}")
  end

  if quote_span_source_ids.include?(source_id) && status == "registered_only"
    validation_error("Source has quote spans but is marked registered_only: #{source_id}")
  end
end

results["ingestion_status_counts"] = status_by_source_id.values.each_with_object(Hash.new(0)) do |status, counts|
  counts[status] += 1
end
results["checks"] << "Per-source ingestion statuses cover the registry and match quote/insight usage"

if ROOT_README_PATH.file?
  readme_text = ROOT_README_PATH.read
  actual_startup_folder_count = actual_transcripts.count { |path| path.start_with?("interviews/transcripts/startups/") }
  unless readme_text.include?("| Startup-folder transcripts | #{actual_startup_folder_count} |")
    validation_error("README startup-folder transcript count is stale")
  end
  unless readme_text.include?("| **Total** | **#{actual_transcripts.length}** |")
    validation_error("README total transcript count is stale")
  end
  results["checks"] << "Root README transcript counts match registered corpus"
end

live_legacy_alias_hits = Dir.glob(KNOWLEDGE_ROOT.join("**", "*").to_s).select { |path| File.file?(path) }.flat_map do |path|
  relative_path = Pathname(path).relative_path_from(ROOT).to_s
  File.readlines(path, chomp: true).each_with_index.map do |line, index|
    next unless line.match?(/^\s*pillar\s*:\s*["']?#{Regexp.escape(LEGACY_SECOND_PILLAR)}["']?\s*$/i)

    "#{relative_path}:#{index + 1}"
  end
end
live_legacy_alias_hits.compact!

validation_error("Live legacy second-pillar labels found: #{live_legacy_alias_hits.join(', ')}") unless live_legacy_alias_hits.empty?
results["checks"] << "No structured live pillar labels use the retired second-pillar alias"

puts JSON.pretty_generate(results)
