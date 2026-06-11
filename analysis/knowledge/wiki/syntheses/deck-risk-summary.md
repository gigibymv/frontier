# Deck Risk Summary

## Current Status

Deck traceability is captured in `../../deck_trace/`.

The highest-risk area is the case-study section, especially slides 31-33 and slide 33 in particular.

## Key Findings

- Slide 31: treat as Kunal Datta case-study cluster. Do not attribute to Amrish Macedo.
- Slide 32: treat as Michael Bernstein case-study cluster, with compression caveats.
- Slide 33: mixed-source. Vijay-backed bullets can be re-sourced, but AI Doctor and N+1 replication remain likely contaminated.

## Reuse Rule

No deck claim should be reused until it has one of:

- linked `claim_id`;
- linked `insight_id`;
- linked `quote_span_id`;
- explicit risk entry explaining why it remains unresolved.

## Next Action

Split slide 33 into two buckets:

1. Vijay-backed bullets that can be safely re-sourced.
2. contaminated or unresolved bullets to drop or independently verify.

