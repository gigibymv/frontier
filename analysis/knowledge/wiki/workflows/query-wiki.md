# Query Wiki

Use this workflow when answering a research question from the Frontier LLM Wiki.

## Loop

1. Read [../index.md](../index.md) first.
2. Identify relevant concept, entity, source, synthesis, and question pages.
3. Answer from the wiki first, then descend into backend evidence only when a claim needs verification.
4. Cite `claim_id`, `insight_id`, `quote_span_id`, or `source_id` for strong claims.
5. If the answer creates a useful new synthesis, update or create a wiki page instead of leaving the work only in chat.
6. Append [../log.md](../log.md) when a query changes the wiki.
7. Run `ruby analysis/knowledge/scripts/validate_wiki.rb` after wiki edits.

## Stop Rules

- Do not answer from raw transcripts alone if a relevant wiki page exists but is stale; update the wiki.
- Do not silently resolve contradictions. Surface them in [../questions/open-questions.md](../questions/open-questions.md) or a synthesis caveat.
- Do not claim full corpus coverage unless [../sources/ingestion-status.md](../sources/ingestion-status.md) supports it.
