# Frontier LLM Wiki

Start here. This directory is the human-readable research wiki for Frontier. It should behave like a persistent notebook: the wiki explains what we currently think, and the evidence backend proves where those statements came from.

The default reading path is:

1. [Current Thesis](syntheses/current-thesis.md)
2. [Platform vs Operating Capabilities](syntheses/platform-vs-operating-capabilities.md)
3. [Scorecard Candidates](syntheses/scorecard-candidates.md)
4. [Open Questions](questions/open-questions.md)

Use [Transcript Index](sources/transcript-index.md), [Deck Index](sources/deck-index.md), people pages, and cited IDs when you need provenance.

## How To Use This Wiki

- Read wiki pages first. Do not start in `../claims/`, `../insights/`, or `../sources/` unless you are checking evidence.
- Treat strong statements as provisional unless they cite a `claim_id`, `insight_id`, `quote_span_id`, or registered source.
- Treat [Open Questions](questions/open-questions.md) as the active work queue.
- Use [Ingest New Transcript](workflows/ingest-new-transcript.md) when adding a source to the wiki.
- Use [Query Wiki](workflows/query-wiki.md) when answering a research question from the wiki.
- Use [Ingestion Status](sources/ingestion-status.md) before claiming full corpus coverage.
- Append [Log](log.md) after meaningful wiki maintenance.

## Main Synthesis Pages

- [Current Thesis](syntheses/current-thesis.md) - current research thesis across the evidence-backed claims.
- [Platform vs Operating Capabilities](syntheses/platform-vs-operating-capabilities.md) - boundary between the Platform pillar and Operating Capabilities.
- [Startup vs Enterprise Patterns](syntheses/startup-vs-enterprise-patterns.md) - current shape of startup-skewed and enterprise-specific patterns.
- [Scorecard Candidates](syntheses/scorecard-candidates.md) - claims that may become benchmark items after human review.
- [Deck Risk Summary](syntheses/deck-risk-summary.md) - slide-claim risks and case-study attribution issues.

## Concepts

- [Platform](concepts/platform.md)
- [Operating Capabilities](concepts/operating-capabilities.md)
- [Context Ownership](concepts/context-ownership.md)
- [Token Economics](concepts/token-economics.md)
- [Human Accountability Boundary](concepts/human-accountability-boundary.md)
- [Workflow Reuse](concepts/workflow-reuse.md)
- [Role Redesign](concepts/role-redesign.md)
- [Agentic Orchestration](concepts/agentic-orchestration.md)

## Sources And People

- [Transcript Index](sources/transcript-index.md)
- [Ingestion Status](sources/ingestion-status.md)
- [Deck Index](sources/deck-index.md)
- [Startups](companies/startups.md)
- [Enterprises](companies/enterprises.md)
- [People Index](people/index.md)
- [Alec Dickinson](people/alec-dickinson.md)
- [Cullen Brown](people/cullen-brown.md)
- [Daniel Guzman](people/daniel-guzman.md)
- [Dmitry Shkolnik](people/dmitry-shkolnik.md)
- [Kal Gangavarapu](people/kal-gangavarapu.md)
- [Michael Bernstein](people/michael-bernstein.md)
- [Mitchell Fierro](people/mitchell-fierro.md)
- [Nishith Sahu](people/nishith-sahu.md)
- [Pat Sheth](people/pat-sheth.md)
- [Tyler Malone](people/tyler-malone.md)
- [Vijay Devatha](people/vijay-devatha.md)
- [Whoz](people/whoz.md)

## Questions And Workflows

- [Open Questions](questions/open-questions.md)
- [To Investigate](questions/to-investigate.md)
- [Investigation Backlog](questions/investigation-backlog.md) - deprecated pointer kept for old links.
- [Ingest New Transcript](workflows/ingest-new-transcript.md)
- [Query Wiki](workflows/query-wiki.md)

## Wiki Operations

- [Schema](schema.md) - operating schema for maintaining the LLM Wiki.
- [README](README.md) - operating rules for the wiki layer.
- [Log](log.md) - append-only record of wiki maintenance.

## Evidence Backend

The backend is intentionally one level up from the wiki. Use it to verify claims, not as the normal reading surface.

- Source registry: `../sources/source_registry.yaml`
- Ingestion status: `../sources/ingestion_status.yaml`
- Quote spans: `../sources/quote_spans.jsonl`
- Atomic insights: `../insights/atomic/`
- Synthesized claims: `../claims/synthesized_claims.yaml`
- Deck trace: `../deck_trace/`
