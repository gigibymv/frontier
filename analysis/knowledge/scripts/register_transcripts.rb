#!/usr/bin/env ruby
# frozen_string_literal: true

require "date"
require "digest"
require "json"
require "pathname"
require "psych"

ROOT = Pathname(__dir__).join("..", "..", "..").expand_path
TRANSCRIPT_ROOT = ROOT.join("interviews", "transcripts")
MANIFEST_PATH = ROOT.join("analysis", "knowledge", "sources", "transcript_manifest.yaml")
REGISTRY_PATH = ROOT.join("analysis", "knowledge", "sources", "source_registry.yaml")
CORPUS_SNAPSHOT_ID = "frontier-corpus-2026-06-11-v1"
DEFAULT_SOURCE_TYPE = "transcript_markdown"
DEFAULT_PARSER_VERSION = "pending-parser-selection"
DEFAULT_EXTRACTION_RUN_ID = "pending-extraction"

SAFE_METADATA_OVERRIDES = {
  "interviews/transcripts/startups/Startup_Arnon_20260608.md" => {
    "company" => "Arbio",
    "company_type" => "startup_scaleup"
  },
  "interviews/transcripts/startups/Startup_Kal Gangavarapu_20260608.md" => {
    "company" => "JPMorgan Chase",
    "company_type" => "enterprise_large_org"
  },
  "interviews/transcripts/startups/Startup_Mahesh_20260522.md" => {
    "company" => "Databricks",
    "company_type" => "enterprise_large_org"
  },
  "interviews/transcripts/startups/Startup_Tyler Malone_20260520.md" => {
    "company" => "Satiri",
    "company_type" => "startup_scaleup"
  },
  "interviews/transcripts/startups/Startup_Whoz_20260611.md" => {
    "interviewee" => "unknown",
    "company" => "Whoz",
    "company_type" => "mixed_or_unknown"
  }
}.freeze

def cohort_and_default_company_type(relative_path)
  case relative_path.each_filename.to_a[2]
  when "enterprise"
    ["enterprise", "enterprise_large_org"]
  when "expert"
    ["expert", "expert"]
  when "startups"
    ["startup", "mixed_or_unknown"]
  else
    raise "Unsupported transcript folder for #{relative_path}"
  end
end

def parse_file_name(relative_path)
  basename = relative_path.basename(".md").to_s
  stem = basename.sub(/\A(?:Startup|Enterprise|Expert)_/, "")
  match = stem.match(/\A(?<label>.*?)(?:\s+-\s+|_)(?<date>\d{8})\z/)
  raise "Unable to parse transcript filename: #{relative_path}" unless match

  raw_label = match[:label]
  interviewee = raw_label.sub(/\s+Follow Up\z/, "")
  interview_date = Date.strptime(match[:date], "%Y%m%d").iso8601
  [raw_label, interviewee, interview_date]
end

def source_id_for(cohort, interview_date, raw_label)
  slug = raw_label.downcase.gsub(/[^a-z0-9]+/, "-").gsub(/\A-|-\z/, "")
  compact_date = interview_date.delete("-")
  "src-#{cohort}-#{compact_date}-#{slug}"
end

def source_record_for(relative_path)
  cohort, default_company_type = cohort_and_default_company_type(relative_path)
  raw_label, interviewee, interview_date = parse_file_name(relative_path)
  overrides = SAFE_METADATA_OVERRIDES.fetch(relative_path.to_s, {})
  transcript_text = ROOT.join(relative_path).read

  {
    "source_id" => source_id_for(cohort, interview_date, raw_label),
    "source_version" => "sha256:#{Digest::SHA256.hexdigest(transcript_text)}",
    "transcript_file" => relative_path.to_s,
    "source_type" => DEFAULT_SOURCE_TYPE,
    "interviewee" => overrides.fetch("interviewee", interviewee),
    "company" => overrides.fetch("company", "unknown"),
    "company_type" => overrides.fetch("company_type", default_company_type),
    "interview_date" => interview_date,
    "parser_version" => DEFAULT_PARSER_VERSION,
    "extraction_run_id" => DEFAULT_EXTRACTION_RUN_ID,
    "corpus_snapshot_id" => CORPUS_SNAPSHOT_ID
  }
end

transcript_paths = Dir.glob(TRANSCRIPT_ROOT.join("**", "*.md").to_s).sort.map do |path|
  Pathname(path).relative_path_from(ROOT)
end

records = transcript_paths.map { |relative_path| source_record_for(relative_path) }

manifest = {
  "schema_version" => 0.1,
  "corpus_snapshot_id" => CORPUS_SNAPSHOT_ID,
  "default_source_type" => DEFAULT_SOURCE_TYPE,
  "default_parser_version" => DEFAULT_PARSER_VERSION,
  "default_extraction_run_id" => DEFAULT_EXTRACTION_RUN_ID,
  "transcripts" => records
}

registry = {
  "schema_version" => 0.1,
  "description" => "Canonical registry for transcript sources anchored in the Frontier knowledge tree.",
  "required_fields" => [
    "source_id",
    "source_version",
    "transcript_file",
    "source_type",
    "interviewee",
    "company",
    "company_type",
    "interview_date",
    "parser_version",
    "extraction_run_id",
    "corpus_snapshot_id"
  ],
  "registered_sources" => records.map { |record| record.merge("status" => "active") }
}

MANIFEST_PATH.write(Psych.dump(manifest))
REGISTRY_PATH.write(Psych.dump(registry))

puts JSON.pretty_generate(
  {
    "manifest_path" => MANIFEST_PATH.to_s,
    "registry_path" => REGISTRY_PATH.to_s,
    "registered_source_count" => records.length
  }
)
