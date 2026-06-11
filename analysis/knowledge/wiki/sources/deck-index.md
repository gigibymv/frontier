# Deck Index

## Current Deck Trace

Deck traceability lives in `../../deck_trace/`. The current slide claim registry is a risk inventory, not a slide-ready approval registry.

Current audit coverage includes:

- sentence/bullet-level trace rows for slides 29-34;
- risk entries for deck-only, partial, contaminated, or unresolved claims;
- attribution cleanup for slides 31-33.

## Key Current Findings

- Slide 31 should be treated as a Kunal Datta case cluster, not Amrish Macedo.
- Slide 32 is best treated as a Michael Bernstein case cluster with some interpretive compression caveats.
- Slide 33 is mixed-source: Vijay-backed bullets can be re-sourced, but AI Doctor and N+1 replication remain likely contaminated.

## Backend Files

- `../../deck_trace/slide_claim_registry.yaml`
- `../../deck_trace/deck_risk_register.yaml`

## Open Work

- Split slide 33 into safe Vijay-backed bullets and contaminated bullets before deck reuse.
- Do not mark any deck claim `slide_ready` without human review. Unresolved rows in the current slide claim registry are audit entries, not approved slide claims.
