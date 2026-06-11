# Atomic Insights

Store one insight per file. Keep the scope narrow enough that a reviewer can decide whether the interpretation is supported without re-reading an entire synthesis memo.

Recommended file shape:

- YAML for machine-readable insight records
- one file per insight
- quote-span links instead of free-floating quotations
- explicit human review state

Promotion principle:

- `evidence_status` answers whether the evidence is adequate
- `synthesis_status` answers whether the interpretation is ready to be used in downstream claims
- `scorecard_status` answers whether the item can influence a scorecard
- `deck_status` answers whether the item can appear in a slide claim

Do not collapse those states into one field.
