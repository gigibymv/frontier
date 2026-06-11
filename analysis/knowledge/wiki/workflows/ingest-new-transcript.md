# Ingest New Transcript

Use this workflow when a new transcript should update the Frontier LLM Wiki. The goal is not to summarize the transcript. The goal is to decide what the transcript changes in the source -> insight -> claim -> wiki chain.

## Inputs

- New transcript under `interviews/transcripts/`.
- Existing evidence backend under `analysis/knowledge/sources/`, `analysis/knowledge/insights/atomic/`, and `analysis/knowledge/claims/`.
- Current wiki entrypoint: [../index.md](../index.md).

## Loop

### 1. Register The Source

Run source registration or update the relevant source records so the transcript has a stable source ID and source hash.

Expected backend surfaces:

- `../../sources/transcript_manifest.yaml`
- `../../sources/source_registry.yaml`
- `../../sources/corpus_snapshots.yaml`
- `../../sources/ingestion_status.yaml`

Do not extract claims from an unregistered or hash-stale transcript.

Set the source to `registered_only` in `../../sources/ingestion_status.yaml` until quote spans or atomic insights exist.

### 2. Anchor Quote Spans

Add quote spans only for passages that may support an insight, contradiction, or important caveat.

Expected backend surface:

- `../../sources/quote_spans.jsonl`

Each quote span should preserve source ID, source version, character range, quote hash, and surrounding-text hash. Avoid broad passages that make later verification hard.

If the source now has quote spans but no atomic insights, update `../../sources/ingestion_status.yaml` to `quote_spans_only`.

### 3. Update Atomic Insights

Create or update atomic insights only when the source supports a narrow, separately reviewable observation.

Expected backend surface:

- `../../insights/atomic/`

Each atomic insight should answer:

- What exactly was observed?
- Which pillar and dimension does it touch?
- Which quote spans support it?
- What caveat or contradiction would stop overuse?
- Is it still blocked from scorecard or deck promotion?

If the source now has at least one atomic insight source link, update `../../sources/ingestion_status.yaml` to `integrated_into_insights`.

### 4. Update Synthesized Claims

Update claims only after checking whether the new insight corroborates, narrows, contradicts, or leaves existing claims unchanged.

Expected backend surface:

- `../../claims/synthesized_claims.yaml`

Do not promote a claim to `scorecard_ready` or `slide_ready` without human review. If a transcript weakens a claim, record the caveat rather than smoothing it away.

### 5. Update Wiki Pages

Update only the pages whose human-readable understanding changes.

Likely wiki targets:

- [../syntheses/current-thesis.md](../syntheses/current-thesis.md)
- [../syntheses/scorecard-candidates.md](../syntheses/scorecard-candidates.md)
- [../questions/open-questions.md](../questions/open-questions.md)
- relevant concept pages under `../concepts/`
- relevant people, company, or source pages

Every strong statement should cite a `claim_id`, `insight_id`, `quote_span_id`, or registered source page. If the transcript only raises uncertainty, update [../questions/open-questions.md](../questions/open-questions.md) rather than forcing a claim.

### 6. Update Navigation And Log

Update [../index.md](../index.md) if the new or changed page should be discoverable from the entrypoint. Update [../sources/ingestion-status.md](../sources/ingestion-status.md) if the status meaning or interpretation changed. Append [../log.md](../log.md) with the maintenance action and the source state.

### 7. Validate

Run both validators from the repository root:

```sh
ruby analysis/knowledge/scripts/validate_knowledge.rb
ruby analysis/knowledge/scripts/validate_wiki.rb
```

If either validator fails, fix the backend or wiki references before treating the ingest as complete.

## Stop Rules

- Stop before writing unsupported synthesis prose.
- Stop before promoting a draft claim without human review.
- Stop if source registration or quote-span hashing is stale.
- Stop if the new transcript contradicts a wiki page and the contradiction cannot be represented cleanly in the current claim model.
