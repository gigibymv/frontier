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
INDEX_PATH = WIKI_ROOT.join("index.md")
LOG_PATH = WIKI_ROOT.join("log.md")
LEGACY_SECOND_PILLAR = ["Har", "ness"].join

def load_yaml(path)
  Psych.safe_load(path.read, permitted_classes: [Date], aliases: false)
end

def validation_error(message)
  raise message
end

validation_error("Missing wiki root: #{WIKI_ROOT}") unless WIKI_ROOT.directory?
validation_error("Missing wiki index.md") unless INDEX_PATH.file?
validation_error("Missing wiki log.md") unless LOG_PATH.file?

claim_ids = load_yaml(CLAIMS_PATH).fetch("claims").map { |claim| claim.fetch("claim_id") }.to_set

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
unknown_claim_refs = []
unknown_insight_refs = []
unknown_quote_refs = []
live_legacy_hits = []

index_text = INDEX_PATH.read

wiki_files.each do |path|
  relative = path.relative_path_from(WIKI_ROOT).to_s
  text = path.read

  missing_backlinks << relative unless relative == "index.md" || index_text.include?(relative)

  text.scan(/\[[^\]]+\]\(([^)]+)\)/).flatten.each do |target|
    next if target.start_with?("http://", "https://", "#")
    next if target.start_with?("../")

    clean_target = target.split("#", 2).first
    next if clean_target.empty?

    resolved = path.dirname.join(clean_target).cleanpath
    unless resolved.to_s.start_with?(WIKI_ROOT.to_s) && resolved.file?
      broken_links << "#{relative} -> #{target}"
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
validation_error("Unknown claim refs: #{unknown_claim_refs.join(', ')}") unless unknown_claim_refs.empty?
validation_error("Unknown insight refs: #{unknown_insight_refs.join(', ')}") unless unknown_insight_refs.empty?
validation_error("Unknown quote_span refs: #{unknown_quote_refs.join(', ')}") unless unknown_quote_refs.empty?
validation_error("Live legacy second-pillar wiki headings found: #{live_legacy_hits.join(', ')}") unless live_legacy_hits.empty?

puts JSON.pretty_generate(
  {
    "checks" => [
      "wiki index and log exist",
      "all wiki markdown files are reachable from index.md",
      "internal wiki markdown links resolve",
      "claim_id references resolve",
      "insight_id references resolve",
      "quote_span_id references resolve",
      "no live legacy second-pillar headings in wiki"
    ],
    "wiki_file_count" => wiki_files.length,
    "claim_ref_count" => claim_ids.length,
    "insight_ref_count" => insight_ids.length,
    "quote_span_ref_count" => quote_span_ids.length
  }
)
