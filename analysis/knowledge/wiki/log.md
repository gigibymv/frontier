# Frontier Wiki Log

Append one entry for each meaningful wiki maintenance action.

## [2026-06-11] create | Initial LLM Wiki layer

- Created the browsable wiki layer on top of the provenance backend.
- Added index, concept pages, people pages, source pages, question pages, and synthesis pages.
- Added validation expectations for claim/insight references and live terminology.
- Source backend status at creation: 26 registered transcripts, 27 quote spans, 17 atomic insights.

## [2026-06-11] simplify | Clarify wiki entrypoint and ingest loop

- Made `index.md` the human-facing entrypoint and moved backend folders into a secondary verification role.
- Merged the investigation backlog into the open-questions queue and kept the old page as a deprecated pointer.
- Added `workflows/ingest-new-transcript.md` for the source -> insight -> claim -> wiki update loop.

## [2026-06-11] harden | Add schema and ingestion-status linting

- Added `schema.md` to define the wiki operating conventions and Obsidian-compatible maintenance surface.
- Added `workflows/query-wiki.md` to make query answers updateable wiki artifacts rather than chat-only synthesis.
- Added source ingestion status tracking so registered-only transcripts remain visible as incomplete concept extraction.
- Tightened validators for source status drift and stale relative wiki/backend paths.

## [2026-06-11] harden | Close navigation and registry-semantics gaps

- Added wiki navigation targets for integrated Tyler Malone and Whoz evidence.
- Clarified organization-type wording where transcript folder and registry `company_type` differ.
- Marked the slide claim registry as a deck-risk inventory rather than a slide-ready approval registry.
- Extended validator expectations to cover integrated-source navigation and semantic gates.
