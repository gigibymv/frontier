# Wiki Schema

This file is the operating schema for the Frontier LLM Wiki. It tells an LLM agent how to maintain the wiki rather than treating each query as a fresh RAG search.

## Architecture

The system has three layers:

1. Raw sources: immutable source files under `../../../interviews/raw/` and transcript markdown under `../../../interviews/transcripts/`.
2. Provenance backend: registered sources, quote spans, atomic insights, synthesized claims, and deck trace under `../sources/`, `../insights/`, `../claims/`, and `../deck_trace/`.
3. Wiki: human-facing Markdown under this directory. The LLM writes and maintains this layer; humans read it, review it, and guide priorities.

## Page Types

- `index.md`: content-oriented catalog and starting point.
- `log.md`: append-only timeline of ingests, queries, lint passes, and maintenance actions.
- `concepts/*.md`: durable conceptual pages that compile evidence across sources.
- `people/*.md`, `companies/*.md`, `sources/*.md`: entity and source navigation pages.
- `syntheses/*.md`: cross-cutting interpretations and benchmark-facing synthesis.
- `questions/*.md`: active questions, caveats, contradictions, and blocked claims.
- `workflows/*.md`: repeatable operating loops for LLM agents.

## Obsidian Compatibility

All wiki pages should remain plain Markdown and readable in Obsidian. New pages should use stable filenames, clear headings, and normal Markdown links. Wikilinks are allowed for human navigation, but canonical validator-checked links should remain Markdown links.

Optional frontmatter for new pages:

```yaml
---
type: concept
status: draft
updated: YYYY-MM-DD
source_count: 0
claim_ids: []
insight_ids: []
tags:
  - frontier
---
```

Do not retrofit frontmatter mechanically. Add it when a page is substantively updated or created.

## Strong Statement Rule

Every strong statement should cite one of:

- `claim_id`
- `insight_id`
- `quote_span_id`
- registered `source_id`

If the statement is exploratory, label it as an open question, caveat, contradiction, or hypothesis.

## Concept Page Minimum

Concept pages should grow toward this shape:

- Short Definition
- Boundary: what this is not
- Why It Matters
- Observed Patterns
- Startup Shape
- Enterprise Shape
- Maturity Signals
- Scorecard Implications
- Evidence Trail
- Caveats And Contradictions
- Open Questions

Do not fill these sections with generic prose. If evidence is missing, say that the section is not yet supported and add the gap to [questions/open-questions.md](questions/open-questions.md).

## Maintenance Rules

- Read [index.md](index.md) before answering substantive questions.
- Read [sources/ingestion-status.md](sources/ingestion-status.md) before claiming the corpus has been fully concept-integrated.
- Update affected pages after every source ingest or substantive query.
- Append [log.md](log.md) after ingests, query writebacks, and lint passes.
- Run validators before claiming the wiki is healthy.
