#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "pathname"
require "psych"
require "set"
require "date"

ROOT = Pathname(__dir__).join("..", "..", "..").expand_path
KNOWLEDGE_ROOT = ROOT.join("analysis", "knowledge")
WIKI_ROOT = KNOWLEDGE_ROOT.join("wiki")
CLAIMS_PATH = KNOWLEDGE_ROOT.join("claims", "synthesized_claims.yaml")
ATOMIC_INSIGHTS_DIR = KNOWLEDGE_ROOT.join("insights", "atomic")
QUOTE_SPANS_PATH = KNOWLEDGE_ROOT.join("sources", "quote_spans.jsonl")
REGISTRY_PATH = KNOWLEDGE_ROOT.join("sources", "source_registry.yaml")
INGESTION_STATUS_PATH = KNOWLEDGE_ROOT.join("sources", "ingestion_status.yaml")
INDEX_PATH = WIKI_ROOT.join("index.md")
LOG_PATH = WIKI_ROOT.join("log.md")
SCHEMA_PATH = WIKI_ROOT.join("schema.md")
TRANSCRIPT_INDEX_PATH = WIKI_ROOT.join("sources", "transcript-index.md")
LEGACY_SECOND_PILLAR = ["Har", "ness"].join

def load_yaml(path)
  Psych.safe_load(path.read, permitted_classes: [Date], aliases: false)
end

def slug_for(value)
  value.to_s.downcase.gsub(/[^a-z0-9]+/, "-").gsub(/\A-|-\z/, "")
end

def validation_error(message)
  raise message
end

validation_error("Missing wiki root: #{WIKI_ROOT}") unless WIKI_ROOT.directory?
validation_error("Missing wiki index.md") unless INDEX_PATH.file?
validation_error("Missing wiki log.md") unless LOG_PATH.file?
validation_error("Missing wiki schema.md") unless SCHEMA_PATH.file?

claim_ids = load_yaml(CLAIMS_PATH).fetch("claims").map { |claim| claim.fetch("claim_id") }.to_set
registry_records = load_yaml(REGISTRY_PATH).fetch("registered_sources")
status_by_source_id = load_yaml(INGESTION_STATUS_PATH).fetch("sources").to_h do |record|
  [record.fetch("source_id"), record.fetch("status")]
end

insight_ids = Dir.glob(ATOMIC_INSIGHTS_DIR.join("*.yaml").to_s).sort.reject do |path|
  File.basename(path) == "ATOMIC_INSIGHT_TEMPLATE.yaml"
end.map do |path|
  load_yaml(Pathname(path)).fetch("insight_id")
end.to_set

quote_span_ids = QUOTE_SPANS_PATH.each_line.map do |line|
  next if line.strip.empty?

  JSON.parse(line).fetch("quote_span_id")
end.compact.to_set

wiki_files = Dir.glob(WIKI_ROOT.join("**", "*.md").to_s).sort.map { |path| Pathname(path) }
relative_wiki_files = wiki_files.map { |path| path.relative_path_from(WIKI_ROOT).to_s }.to_set

missing_backlinks = []
broken_links = []
broken_inline_paths = []
missing_integrated_pages = []
misclassified_entity_pages = []
unknown_claim_refs = []
unknown_insight_refs = []
unknown_quote_refs = []
live_legacy_hits = []

index_text = INDEX_PATH.read

registry_records.each do |record|
  next unless status_by_source_id.fetch(record.fetch("source_id")) == "integrated_into_insights"

  entity_label = record.fetch("interviewee") == "unknown" ? record.fetch("company") : record.fetch("interviewee")
  entity_path = "people/#{slug_for(entity_label)}.md"
  entity_file = WIKI_ROOT.join(entity_path)

  unless entity_file.file? && index_text.include?(entity_path)
    missing_integrated_pages << "#{record.fetch('source_id')} -> #{entity_path}"
    next
  end

  entity_text = entity_file.read
  if record.fetch("company_type") == "enterprise_large_org" && entity_text.include?("Startup interview source")
    misclassified_entity_pages << "#{entity_path}: enterprise_large_org described as startup"
  end
  if record.fetch("company_type") == "startup_scaleup" && entity_text.include?("Enterprise interview source")
    misclassified_entity_pages << "#{entity_path}: startup_scaleup described as enterprise"
  end
end

wiki_files.each do |path|
  relative = path.relative_path_from(WIKI_ROOT).to_s
  text = path.read

  missing_backlinks << relative unless relative == "index.md" || index_text.include?(relative)

  text.scan(/\[[^\]]+\]\(([^)]+)\)/).flatten.each do |target|
    next if target.start_with?("http://", "https://", "#")

    clean_target = target.split("#", 2).first
    next if clean_target.empty?

    resolved = path.dirname.join(clean_target).cleanpath
    unless resolved.to_s.start_with?(ROOT.to_s) && (resolved.file? || resolved.directory?)
      broken_links << "#{relative} -> #{target}"
    end
  end

  text.scan(/`((?:\.\.?\/)[^`]+)`/).flatten.each do |target|
    clean_target = target.split("#", 2).first
    next if clean_target.empty?

    resolved = path.dirname.join(clean_target).cleanpath
    unless resolved.to_s.start_with?(ROOT.to_s) && (resolved.file? || resolved.directory?)
      broken_inline_paths << "#{relative} -> #{target}"
    end
  end

  text.scan(/`(clm-[a-z0-9-]+)`/).flatten.each do |claim_id|
    unknown_claim_refs << "#{relative}:#{claim_id}" unless claim_ids.include?(claim_id)
  end

  text.scan(/`(ins-[a-z0-9-]+)`/).flatten.each do |insight_id|
    unknown_insight_refs << "#{relative}:#{insight_id}" unless insight_ids.include?(insight_id)
  end

  text.scan(/`(qsp-[a-z0-9-]+)`/).flatten.each do |quote_span_id|
    unknown_quote_refs << "#{relative}:#{quote_span_id}" unless quote_span_ids.include?(quote_span_id)
  end

  text.each_line.with_index(1) do |line, index|
    if line.match?(/^\s*#*\s*#{Regexp.escape(LEGACY_SECOND_PILLAR)}\b/i)
      live_legacy_hits << "#{relative}:#{index}"
    end
  end
end

validation_error("Wiki files missing from index.md: #{missing_backlinks.join(', ')}") unless missing_backlinks.empty?
validation_error("Broken wiki links: #{broken_links.join(', ')}") unless broken_links.empty?
validation_error("Broken inline wiki/backend paths: #{broken_inline_paths.join(', ')}") unless broken_inline_paths.empty?
validation_error("Integrated sources missing wiki entity pages: #{missing_integrated_pages.join(', ')}") unless missing_integrated_pages.empty?
validation_error("Wiki entity pages conflict with registry company_type: #{misclassified_entity_pages.join(', ')}") unless misclassified_entity_pages.empty?
validation_error("Unknown claim refs: #{unknown_claim_refs.join(', ')}") unless unknown_claim_refs.empty?
validation_error("Unknown insight refs: #{unknown_insight_refs.join(', ')}") unless unknown_insight_refs.empty?
validation_error("Unknown quote_span refs: #{unknown_quote_refs.join(', ')}") unless unknown_quote_refs.empty?
validation_error("Live legacy second-pillar wiki headings found: #{live_legacy_hits.join(', ')}") unless live_legacy_hits.empty?

if TRANSCRIPT_INDEX_PATH.file?
  transcript_index_text = TRANSCRIPT_INDEX_PATH.read
  validation_error("Transcript index registered transcript count is stale") unless transcript_index_text.include?("- Registered transcripts: #{registry_records.length}")
  validation_error("Transcript index quote span count is stale") unless transcript_index_text.include?("- Quote spans: #{quote_span_ids.length}")
  validation_error("Transcript index atomic insight count is stale") unless transcript_index_text.include?("- Atomic insights: #{insight_ids.length}")
end

puts JSON.pretty_generate(
  {
    "checks" => [
      "wiki index and log exist",
      "wiki schema exists",
      "all wiki markdown files are reachable from index.md",
      "internal wiki markdown links resolve",
      "inline relative wiki/backend paths resolve",
      "integrated sources have reachable wiki entity pages",
      "wiki entity pages do not conflict with registry company_type",
      "claim_id references resolve",
      "insight_id references resolve",
      "quote_span_id references resolve",
      "transcript index counts match backend counts",
      "no live legacy second-pillar headings in wiki"
    ],
    "wiki_file_count" => wiki_files.length,
    "claim_ref_count" => claim_ids.length,
    "insight_ref_count" => insight_ids.length,
    "quote_span_ref_count" => quote_span_ids.length
  }
)
