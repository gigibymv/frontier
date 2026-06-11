#!/usr/bin/env ruby
# frozen_string_literal: true

require "digest"
require "json"
require "pathname"
require "psych"
require "date"

ROOT = Pathname(__dir__).join("..", "..", "..").expand_path
KNOWLEDGE_ROOT = ROOT.join("analysis", "knowledge")
TRANSCRIPT_ROOT = ROOT.join("interviews", "transcripts")
PILLARS_PATH = KNOWLEDGE_ROOT.join("ontology", "pillars.yaml")
MANIFEST_PATH = KNOWLEDGE_ROOT.join("sources", "transcript_manifest.yaml")
REGISTRY_PATH = KNOWLEDGE_ROOT.join("sources", "source_registry.yaml")
QUOTE_SPANS_PATH = KNOWLEDGE_ROOT.join("sources", "quote_spans.jsonl")
ATOMIC_INSIGHTS_DIR = KNOWLEDGE_ROOT.join("insights", "atomic")
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
  "atomic_insight_count" => 0
}

allowed_pillars = load_yaml(PILLARS_PATH).fetch("allowed_values")

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

validation_error("Manifest and registry source counts differ") unless manifest_records.length == registry_records.length

results["transcript_source_coverage"] = {
  "actual_transcript_count" => actual_transcripts.length,
  "manifest_count" => manifest_records.length,
  "registry_count" => registry_records.length
}

results["checks"] << "Transcript coverage and source_version hashing verified"

quote_spans = {}
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
end

results["quote_span_count"] = quote_spans.length
results["checks"] << "Quote span hashes and transcript anchors verified"

atomic_paths = Dir.glob(ATOMIC_INSIGHTS_DIR.join("*.yaml").to_s).sort.reject do |path|
  File.basename(path) == "ATOMIC_INSIGHT_TEMPLATE.yaml"
end

atomic_paths.each do |path|
  record = load_yaml(Pathname(path))
  missing_fields = REQUIRED_ATOMIC_FIELDS.reject { |field| record.key?(field) }
  validation_error("Missing required atomic fields in #{path}: #{missing_fields.join(', ')}") unless missing_fields.empty?

  unless allowed_pillars.include?(record.fetch("pillar"))
    validation_error("Invalid pillar #{record.fetch('pillar')} in #{path}")
  end

  weighted_support = record.fetch("weighted_support")
  missing_weighted_fields = REQUIRED_WEIGHTED_SUPPORT_FIELDS.reject { |field| weighted_support.key?(field) }
  validation_error("Missing weighted_support fields in #{path}: #{missing_weighted_fields.join(', ')}") unless missing_weighted_fields.empty?

  record.fetch("source_links").each do |source_link|
    source_link.fetch("quote_span_ids").each do |quote_span_id|
      validation_error("Unknown quote_span_id #{quote_span_id} referenced in #{path}") unless quote_spans.key?(quote_span_id)
    end
  end
end

results["atomic_insight_count"] = atomic_paths.length
results["checks"] << "Atomic insight required fields, pillars, and quote_span references verified"

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
