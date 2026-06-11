# Frontier LLM Wiki

This directory is the browsable wiki layer for the Frontier knowledge system.

The evidence backend lives one level up:

- `../sources/` stores source registration, transcript hashes, corpus snapshots, and quote spans.
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

1. Register source and quote spans in the backend.
2. Add or update atomic insights.
3. Add or update synthesized claims.
4. Update relevant wiki pages.
5. Update [index.md](index.md).
6. Append [log.md](log.md).
7. Run `ruby analysis/knowledge/scripts/validate_wiki.rb`.

