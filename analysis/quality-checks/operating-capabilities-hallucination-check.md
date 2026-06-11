# Operating Capabilities — Hallucination Cross-Check

**Checked source:** `analysis/operating-capabilities/insights.docx`
**Reference corpus:** `interviews/transcripts/`
**Original check date:** 2026-06-10

## Method And Limits

1. The document's quoted material was often condensed paraphrase rather than exact transcript text. Verification therefore checks semantic support and correct attribution, not exact string matches.
2. Several claims were tagged as coming from the check-in PPTX rather than from transcripts. Those are not automatically false, but they are not safe to treat as interview-verified unless the same substance appears in the transcript.
3. Verdicts:
   - `SUPPORTED`: the substance is clearly present and correctly attributed.
   - `PARTIAL`: the core exists, but the analysis added an amplification, maturity claim, or distorted wording.
   - `NOT FOUND`: no transcript support was found.

## Quantified Result

| Verdict | Count |
|---|---:|
| SUPPORTED | ~24 |
| PARTIAL | 8 |
| NOT FOUND | 13 |

## Highest-Risk Blocks

- **Charles Barton — 0/4 supported.** Four claims were absent from his transcript, including two not labeled as PPTX-sourced. "Design team coding" appears likely contaminated from Mahesh/Kunal evidence.
- **Amrish Macedo — 0/4 supported, all PPTX-labeled.** The transcript does not contain the "brain," "domain knowledge," manager-as-IC, or daily refresh claims.
- **Catalin Vieru — 0/2 supported, both PPTX-labeled.** His interview is about a Google Cloud GTM/competitive-intelligence workflow, not hiring or hallucination detection. The likely source is another speaker or a deck-generation mix-up.

Cross-cutting pattern: several `PARTIAL` claims add unsupported amplifiers such as "experimental," "without support," "reviewer" instead of "orchestrator," or "read-only." Several PPTX-only failures attach plausible AI-org punchlines to speakers who did not say them.

## Person-Level Findings

### Dmitry Shkolnik — 3/3 Supported

- Context ownership extending metric ownership is supported, but framed as aspirational/in progress.
- Network effects through an internal marketplace are supported by two transcript threads: plugin marketplace and standardization/network effects.
- Context ownership plus validation for updates is supported, with the same maturity caveat.

### Pat Sheth — 1 Supported, 1 Not Found

- Future-proof role evaluation before opening a req is supported.
- "Existing templates = lighter review vs. new external formats = full review" is not found. The transcript describes compliance and human approval across campaigns; templates are faster/cheaper, not exempt from review.

### Kal Gangavarapu — 2 Supported, 1 Partial

- KYC/legal/compliance staff shifting from document processing to AI-summary review is supported.
- The three buckets of chat, coding, and autonomous agents are supported.
- "Different caps across all three buckets" is partial: coding has explicit caps, chat is under budget, and agentic orchestration is budget-managed by design.

### Nishith Sahu — 2 Supported With Scope Caveat

- The 2,500 CX-agent context and shift away from manual processing are supported, but only about 20% of case volume is covered today.
- Human CX validation before sending is supported.

### Vijay Devatha — 2/2 Supported

- Ops moving from dashboards to natural-language queries and people operations scaling without proportional headcount growth are supported.
- The "talk to a human" trust-preservation button is supported.

### Mitchell Fierro — 4 Supported, 1 Partial, 1 Not Found

- Non-technical employees becoming full-stack low-code builders, engineering as gatekeeper, context ownership as next step, Claude Code/platform split, and grassroots ops-team building are supported.
- "Non-engineers = read-only + controlled API calls" is partial. Non-engineers receive permissioned, read-oriented access plus controlled API calls that can execute approved actions.
- The "$200 Claude subscription / data scientist video game" hiring anecdote is not found.

### Charles Barton — 0/4 Not Found

- Design team coding with AI assistance: not found.
- Weekly AI Doctor meeting: not found.
- Token cap or manager-approved T2 upgrade: not found.
- AI budget as team experimentation budget: not found.

### Mahesh — 2 Partial, 1 Not Found

- Designers contributing code is supported, but "experimental" is not; the transcript presents it as established and allowed.
- The top-down infrastructure plus bottom-up workflow dichotomy is not found.
- Bottom-up cultural adoption is supported, but "each team builds its own workflows" overstates the transcript.

### Kunal Datta — 1 Supported, 1 Partial

- Leader as IC/reviewer is partially supported, but the "rappers/wrappers" aside should not be treated as a formal operating-model claim.
- "If he can do it, so can I" is supported.

### Tyler Malone — 2 Partial/Supported

- The CEO uses AI workflows for board reports and decks; "without support" is an unsupported amplification.
- Bottom-up sharing by a principal engineer is supported in substance, with small-company scope caveat.

### Daniel Guzman — 2 Supported, 1 Partial, 1 Not Found

- SMB customer-support email role elimination/redeployment is supported.
- Full-stack/product ownership is supported, but the better word is "orchestrator," not "reviewer."
- "Bottom-up organic Cursor adoption" is contradicted by Daniel's role as Cursor ambassador and mentor.
- Per-fix learning loops are supported with caveat that triggers sometimes fail.

### Amrish Macedo — 0/4 Not Found

- Managers expected to IC with AI and ship weekly: not found.
- Domain knowledge replaced by "the brain": not found.
- Daily brain cleanup: not found.
- Daily automated brain refresh: not found; the transcript instead emphasizes pinned model versions.

### Catalin Vieru — 0/2 Not Found

- Coding-is-commodity hiring criterion: not found.
- Hallucination-detection interview redesign: not found.

### Michael Bernstein — 2/2 Supported

- Strong fundamentals before letting agents build, including supply-chain attack concerns, are supported.
- Commit ownership equals result ownership, agent or not, is supported.

### Aditya Nemmaluri — 1 Supported, 1 Partial

- Customer-facing bounding boxes as explicit policy are supported.
- "Customer-facing only, not internal" is partial. The transcript says especially customer-facing, not exclusively customer-facing.

### Alec Dickinson — 2/2 Supported

- Accountability as the HITL-placement criterion is supported.
- Cost and ETA estimated at each turn as a feedback loop is supported.

### Arnon — Supported With Nuance

- Cost/quality model routing is supported. The precise contrast is not simply Haiku vs. Opus; Haiku appears as a cost fallback and Opus/Sonnet as a complexity tradeoff.

### Cullen Brown — 1/1 Supported

- Ring-fenced experimentation budget with AI Council shutdowns is supported. "Without ROI justification" is editorialized but directionally faithful.

## Required Corrections Applied

- Removed or quarantined Charles, Amrish, and Catalin PPTX-only claims from default operating-capability outputs.
- Removed unsupported amplifiers: "experimental," "without support," "reviewer" where "orchestrator" was intended, purely "read-only" access, and "customer-facing not internal."
- Marked Dmitry's context ownership as aspirational/in progress.
- Added scope caveats for Nishith's partial case coverage and Tyler's small-company workflow sharing.

## Remaining Gaps

- The PPTX itself has not been audited slide by slide. If deck-only claims must be used, audit `output/MSFT-Frontier Firms-CheckIn4 - 2026.06.12.pptx` against the transcripts before treating them as factual.
- The current transcript-verified files are conservative. They may omit real insights that exist only in the deck or raw `.docx` files until those sources are separately checked.
