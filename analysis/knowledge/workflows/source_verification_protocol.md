# Source Verification Protocol

## Purpose

Make sure every promoted research object can be traced back to the right source text and source version.

## Verification Steps

1. Confirm the `transcript_file` exists and matches the expected source.
2. Confirm `source_version` matches the file version used when the quote span was created.
3. Recompute or validate the quote anchor using `char_start`, `char_end`, `quote_hash`, and `surrounding_text_hash`.
4. Check that any display line references still point to the expected text neighborhood.
5. Mark the review state on any affected atomic insight or claim.

## Failure Handling

- If a quote anchor fails, block downstream promotion until the anchor is repaired.
- If the transcript wording is weaker than the insight wording, narrow the insight rather than stretching the quote.
- If the source basis is ambiguous, move the record into a contested or pending-review state.
