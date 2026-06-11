# Promotion Protocol

## Purpose

Move material upward from evidence to synthesis without collapsing the review gates.

## Promotion Path

1. Quote span exists and is verified.
2. Atomic insight is created with explicit caveats and review state.
3. Synthesized claim links to one or more atomic insights.
4. Human reviewer decides whether the synthesized claim can become `scorecard_ready` or `slide_ready`.
5. Only approved claims may enter `claims/scorecard_claims.yaml` or `deck_trace/slide_claim_registry.yaml`.

## Required Human Gates

- `scorecard_ready` requires a named reviewer and an explicit note on why the evidence is sufficient for scoring.
- `slide_ready` requires a named reviewer and an explicit note on wording risk.

## Promotion Anti-Patterns

- Promoting a single-source insight into a benchmark rule without saying it is single-source.
- Treating a strong concept page as equivalent to an approved claim.
- Marking a claim ready for slides because it sounds plausible rather than because the evidence chain is complete.
