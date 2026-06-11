# Frontier LLM Wiki

This directory is the browsable wiki layer for the Frontier knowledge system.

For the operating schema, read [schema.md](schema.md). For query behavior, read [workflows/query-wiki.md](workflows/query-wiki.md).

The evidence backend lives one level up:

- `../sources/` stores source registration, transcript hashes, corpus snapshots, and quote spans.
- `../sources/ingestion_status.yaml` stores per-source processing state so registered-only transcripts are explicit.
- `../insights/atomic/` stores narrow evidence-backed insights.
- `../claims/` stores synthesized claims that remain blocked until human review.
- `../deck_trace/` stores slide-claim traceability and deck risk.

The wiki turns that backend into a readable, linked research surface. It is meant to be maintained by an LLM agent and reviewed by humans.

## Operating Rule

Every strong wiki statement should link to one of:

- a `claim_id`
- an `insight_id`
- a `quote_span_id`
- a registered source page

If a statement is exploratory, label it as an open question or synthesis caveat.

## Reading Flow

1. Start with [index.md](index.md).
2. Use [syntheses/current-thesis.md](syntheses/current-thesis.md) for the current top-level view.
3. Use concept pages for focused questions.
4. Use people and source pages when checking provenance.
5. Use [log.md](log.md) to understand what changed.

## Maintenance Flow

When a new transcript or question arrives:

1. Follow [workflows/ingest-new-transcript.md](workflows/ingest-new-transcript.md) for transcript ingest.
2. Update only the wiki pages whose human-readable understanding changes.
3. Update [sources/ingestion-status.md](sources/ingestion-status.md) or its backend status file if the source moved from registered-only to quote-backed or insight-backed.
4. Update [index.md](index.md) if new pages need to be reachable.
5. Append [log.md](log.md).
6. Run both validators:

```sh
ruby analysis/knowledge/scripts/validate_knowledge.rb
ruby analysis/knowledge/scripts/validate_wiki.rb
```
