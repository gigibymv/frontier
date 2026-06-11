# Ingestion Protocol

## Purpose

Bring new source material into the knowledge system without losing source identity or version control.

## Steps

1. Register the source in `sources/transcript_manifest.yaml` or the future equivalent source manifest.
2. Assign or confirm `source_id`, `source_version`, `transcript_file`, `interviewee`, `company`, `interview_date`, `parser_version`, `extraction_run_id`, and `corpus_snapshot_id`.
3. If the source will support downstream claims, create quote spans with stable anchors in `sources/quote_spans.jsonl`.
4. Create or update atomic insights only after the quote spans exist.
5. Leave unverifiable fields as explicit placeholders rather than guessing.

## Guardrails

- Do not treat a paraphrase-only note as equivalent to a quote span.
- Do not register the same source twice under competing ids.
- If a transcript file changes materially, create a new `source_version` and re-check downstream quote anchors.
