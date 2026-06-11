# Frontier Knowledge System

Start with the readable wiki: [`wiki/index.md`](wiki/index.md).

This tree has two layers:

- `wiki/` is the human-facing LLM Wiki. It is the entrypoint for reading, maintaining, and updating Frontier research knowledge.
- The other folders are the provenance backend. They preserve source hashes, quote spans, atomic insights, synthesized claims, and deck traceability.

The operating rule is simple: every promoted research object should be traceable back to a specific source version and, where possible, a stable quote span. The intended chain is:

1. source provenance
2. quote spans
3. atomic insights
4. synthesized claims
5. wiki pages
6. scorecard items
7. deck trace

## Provenance Model

- `ontology/` defines the controlled vocabulary used everywhere else.
- `sources/` records source identity, transcript manifests, corpus snapshots, quote-span anchors, and per-source ingestion status.
- `insights/atomic/` is the first layer where interpretation is allowed. Each atomic insight should stay narrow, source-linked, and separately reviewable.
- `claims/` is the synthesis layer. Claims may combine multiple atomic insights, but they remain blocked from `scorecard_ready` or `slide_ready` until a human explicitly approves them.
- `wiki/concepts/` is the live concept surface.
- `concepts/` is deprecated and retained only as a compatibility pointer to `wiki/concepts/`.
- `clusters/` proposes candidate grouping structures for later synthesis work.
- `deck_trace/` provides the contract for slide-level traceability and risk review.
- `workflows/` defines backend promotion and verification protocols.
- `wiki/workflows/` defines the human-readable wiki maintenance loop.

## Status Rules

- Evidence should be added conservatively. If the source basis is weak or unclear, leave placeholders rather than filling gaps with inference.
- `Platform` is the live second pillar label in this repo. Historical notes may mention the older alias `harness`, but it should not be used as the active pillar name.
- A claim can be interesting before it is usable. Keep `synthesis_status`, `scorecard_status`, and `deck_status` separate.

## Maintenance

- `scripts/register_transcripts.rb` regenerates transcript registration from `interviews/transcripts/` with conservative metadata defaults.
- `scripts/validate_knowledge.rb` checks transcript coverage, source-version hashing, quote-span integrity, atomic-insight field completeness, and pillar-label compliance.
- `scripts/validate_wiki.rb` checks wiki reachability, internal links, claim/insight/quote references, and live terminology.
- `wiki/workflows/ingest-new-transcript.md` describes the source -> insight -> claim -> wiki update loop for new transcripts.
- `wiki/schema.md` is the LLM-maintenance schema for the wiki layer.

## Hardening Snapshot

- Verified: transcript source registration is complete for the current transcript corpus; anchored quote spans exist for a narrow set of Operating Capabilities insights; atomic insight records remain below scorecard and deck promotion.
- Pending: company metadata stays `unknown` or `mixed_or_unknown` where the transcript corpus does not support a safer classification.
- Blocked: candidate Operating Capabilities insights without clean transcript anchors should remain outside the atomic layer until they are re-sourced.

## Seed Content

This scaffold now includes a small but broader seed set of transcript-backed operating-capabilities material:

- `context ownership` as an emerging governance pattern
- `token budgeting by use case` as a concrete AI economics pattern
- `accountability-shaped HITL placement`
- `AI adaptiveness` as a performance threshold
- `future-proof role evaluation`
- `agent orchestration` as an engineering skill signal
- `customer-trust-driven human escalation`
- `platform-owned deployment rails` for AI-built internal tools

All examples are intentionally narrow and remain below scorecard or slide promotion until further review.
