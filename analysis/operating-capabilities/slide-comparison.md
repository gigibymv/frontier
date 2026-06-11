# Operating Capabilities - Slide Comparison Against Quote-Checked Evidence

Source compared: screenshot slide titled `Frontier Firm Traits | Operating Capabilities`.

Evidence baseline: `analysis/operating-capabilities/org-type-quote-check.md`, which classifies a trait only when at least two interviewees provide substantive transcript evidence. Single-source traits are not promoted into the main classification.

## High-Level Comparison

The slide is broader than the quote-checked evidence file. It mixes:

- established framework/external-research traits;
- transcript-supported interview traits;
- preliminary or weakly sourced traits;
- a few traits that the hallucination audit already marked as unverified or contaminated.

The quote-checked evidence file is narrower. It keeps only traits that can be backed by multiple transcript sources, with exact quotes and organization-type classification.

## Slide Traits That Are Well Supported By The Quote Check

| Slide trait | Quote-check status | Recommended organization-type label |
|---|---|---|
| Non-engineers as production code shippers | Supported, but should be softened to "under review / governed access" | Both |
| AI fluency requirement for candidates and recruiters | Supported as AI proficiency threshold | Both |
| Core engineering skill shifting from coding to orchestration | Supported, but startup/scale-up only under strict evidence | Startup / scale-up |
| Peer-to-peer workflow sharing as adoption norm | Supported | Both |
| Committer owns AI output | Supported as accountability for AI-assisted outputs | Startup / scale-up |
| Higher quality threshold for customer-facing AI | Supported as customer trust / external-risk boundary | Both |
| Model routing by task complexity and cost | Supported | Startup / scale-up |
| Limit token burn until definitive value realization | Supported as token budgeting / burn-rate control by use case | Large organization |

## Slide Traits That Are Partially Supported But Need Rewording

| Slide trait | Issue | Safer wording |
|---|---|---|
| Formal context ownership responsibility | Strong Dmitry quote, but mono-source as a formal role; Mitchell only names adjacent gap | "Context ownership is emerging, especially in large organizations, but still early / not fully implemented." |
| Hiring screening for role durability / future-proofing | Strong Pat quote, but mono-source | "Future-proof role evaluation appears in one large-organization interview." |
| AI leverage as explicit review dimension | Cullen and Pat support AI proficiency/performance, but not a broad mature review system | "AI proficiency is becoming a performance/hiring threshold." |
| Token consumption is secondary to orchestration efficiency | Kal supports process efficiency over pure token optimization, but this is narrow | "Large organizations separate token controls from process-efficiency goals." |
| Ring-fenced experimentation budget before proven ROI | Cullen supports this, but mono-source; Charles attribution was not verified | "Ring-fenced experimentation budget appears in one verified source." |
| Review and codification of tribal knowledge | Tribal knowledge gap is real, but mature codification is not strongly multi-source | "Tribal knowledge capture is an unresolved gap." |

## Slide Traits That Should Not Be Treated As Interview-Verified Yet

| Slide trait | Reason |
|---|---|
| Diagnostic deliberation forums ("AI doctor meeting") | Previously attributed to Charles Barton, but not found in transcript. Do not use unless re-sourced. |
| Promoted on AI leverage AND helping others scale | Previously tied to Amrish/PPTX-only material; not transcript-verified. |
| AI changing roles without reputation risk or customer trust | The trust boundary is supported, but the full phrase is too broad and not quote-backed as written. |
| Value capture shifts from T&M to outcome-based AI rate models | Discussed as aspiration/strategy in places, but not substantively quote-backed as an implemented operating capability in the strict file. |
| Failure tolerance and open sandboxing | Plausible framework trait, but not classified in the strict quote-check. |
| Project postmortems placed into a monorepo | Not promoted in strict quote-check; needs re-sourcing if used as interview evidence. |
| Remove older / invalidated designs for clean knowledge base | Not promoted in strict quote-check; needs direct transcript evidence. |

## Slide Traits Missing From The Strict Quote-Checked List

These are on the slide but absent or downgraded in the quote-checked file because they do not meet the multi-source transcript threshold:

- Smaller team / "1 engineer builds"
- Middle-management layer reduced
- Older functions merging and roles redesigned
- AI champions pushing adoption
- Creation of AI steering committees
- Focus on "no silos"
- Interviews with live build of AI or `plan.md`
- Curriculums per function to increase AI literacy
- Classifying skills and roles by replaceability
- Novel roles focused on orchestration and governance
- Coordination chain and roles are one query, pushing oversight up
- Defined junction of output review by human vs. multiple/other LLMs
- Rebuilding workflows rather than AI taking over existing workflows
- AI sits in R&D, service, and information layers within total portfolio

These may still be useful framework traits, but they should be labeled as external/framework/preliminary unless separately quote-checked.

## Net Recommended Slide Edits

1. Keep the slide's broad structure, but distinguish `Framework / external research` from `Transcript-verified`.
2. Replace hard claims with quote-safe language where evidence is mono-source.
3. Remove or footnote `AI doctor meeting`, `helping others scale`, and `seniority/token tiering` unless the deck/PPTX is separately audited.
4. Update predominance labels:
   - `Non-engineers as production code shippers`: Both, not only startups.
   - `Core engineering skill shifting from coding to orchestration`: Startup / scale-up under current evidence.
   - `Peer-to-peer workflow sharing`: Both, not only startups.
   - `Higher quality threshold for customer-facing AI`: Both, not only large organizations.
   - `Model routing by task complexity and cost`: Startup / scale-up.
   - `Limit token burn until definitive value realization`: Large organization.
5. Add a small evidence note: "Transcript-verified labels require at least two interviewees; mono-source traits are preliminary."
