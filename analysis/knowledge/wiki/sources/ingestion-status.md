# Ingestion Status

This page explains how to read the machine-checked source processing status in `../../sources/ingestion_status.yaml`.

## Status Meanings

- `registered_only`: the transcript is registered and hash-checked, but it has not yet been converted into quote spans or atomic insights.
- `quote_spans_only`: quote spans exist, but no atomic insight currently uses this source.
- `integrated_into_insights`: at least one atomic insight cites quote spans from this source.

## Current Interpretation

The corpus is fully registered at the source-provenance layer. It is not fully concept-integrated. Several transcripts are still `registered_only`, which means the wiki should not claim that every transcript has contributed to concept extraction.

Use the status file before broad claims such as "the corpus shows" or "the interviews establish." The right wording may be "current anchored insights show" until the relevant transcript subset has been reviewed.
