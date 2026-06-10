# Operating Capabilities — Startup vs. Enterprise Breakdown

Classification: **[S]** = Startup/scale-up | **[E]** = Enterprise | **[B]** = Both

Note: Several interviews filed under "startups" are actually large enterprises (JPMorgan, Maersk, Google, Meta, Databricks). Classification below is by actual company type, not folder.

---

## 1. Org Structure & Composition

**Already in the framework**

| Insight | Tag | Rationale |
|---|---|---|
| Smaller team ("1 engineer builds") | **[S]** | Exclusively startup evidence. Enterprise teams aren't shrinking — they're redeploying. |
| Middle-management layer reduced | **[S]** | Compression happens in startups. Enterprise interviewees don't describe this. |
| Older functions merging (PM/QA/DS absorbed into eng) | **[S]** | Startup/scale-up pattern. Enterprise maintains functional silos. |
| Focus on "no silos" | **[S]** | Aspiration more than reality in enterprises — Taoufik (J&J) and Dmitry describe strong silos persisting. |
| AI steering committees | **[E]** | JPM, Fetch Rewards, J&J, Google — formal governance bodies exist. Startups don't have them. |
| AI champions who push adoption | **[B]** | Present in both: Adi (startup), Kal (JPM), Dmitry (large tech), Cullen (Fetch). |

**New from interviews**

| Insight | n | Tag | Rationale |
|---|---|---|---|
| Non-engineers shipping production code | 3 | **[S]** | Mitchell (fintech startup), Mahesh (Databricks), Charles (Sana). No enterprise interviewee describes this — governance and access controls prevent it. |
| Leader as IC — senior leaders personally ship with AI | 2 | **[S]** | Kunal (Unit 21), Tyler (Satiri). Structurally impossible at JPM or J&J. The concept doesn't translate. |
| Platform team vs. product team structural split | 1–3 | **[S/B]** | Mitchell (startup) clearly. Emerges in larger companies too (JPM has this de facto) but not named as a deliberate design principle by enterprise interviewees. |
| "Context owner" as new formal role | 2 | **[B]** | Dmitry (large tech) has the clearest articulation. Mitchell (startup) names the gap. Equally relevant at both scales — but enterprise has more urgency. |
| Role shift rather than elimination | 4 | **[E/B]** | Kal (JPM), Nishith (Maersk), Vijay (startup), Daniel (scale-up). Stronger enterprise signal — they have the headcount to redeploy. Startups more often just don't backfill. |

---

## 2. Talent Readiness

**Already in the framework**

| Insight | Tag | Rationale |
|---|---|---|
| AI fluency as binary hiring threshold | **[B]** | Pat (enterprise), Cullen (scale-up), multiple startups. Universal. |
| Live AI build or plan.md in interviews | **[S]** | Startup/scale-up practice. No enterprise interviewee describes this interview format. |
| Curricula per function for reskilling | **[E/B]** | More enterprise-driven (J&J, JPM have formal programs). Startups don't have the bandwidth for curricula — they just hire differently. |
| Classifying roles by replaceability | **[E]** | Pat (enterprise), Dmitry (large tech). Startups don't run formal role audits — they're already small enough to assess informally. |
| Novel roles: orchestration and governance | **[B]** | Both, but the role design is more explicit in enterprises that need formal job descriptions. |

**New from interviews**

| Insight | n | Tag | Rationale |
|---|---|---|---|
| Orchestration as core engineering competency | 2–3 | **[B]** | Daniel (scale-up), Mitchell (startup), Catalin (Google). Equally present at both scales. |
| Hallucination detection as named hiring criterion | 1–2 | **[S/B]** | Catalin (Google), Michael (startup). Startups are more explicit about it — enterprises haven't redesigned interviews to this degree yet. |
| Non-technical employees upskilling to production-grade | 3 | **[S]** | Mitchell, Mahesh (Databricks), Charles (Sana). Enterprise governance prevents this — a non-engineer committing prod code at JPM or J&J is a compliance issue. |
| Domain knowledge deprioritized at hire | 1 | **[S]** | Amrish (startup). Structurally impossible at regulated enterprises — domain expertise is a compliance and risk requirement at JPM, J&J. |
| Future-proof role evaluation before opening a req | 1 | **[E]** | Pat (enterprise). Startups move too fast to formalize this — they just decide. |
| Personal AI subscription as hiring signal | 1 | **[S]** | Mitchell (startup). Enterprise hiring processes don't accommodate this kind of informal signal. |

---

## 3. Performance Management

**Already in the framework**

| Insight | Tag | Rationale |
|---|---|---|
| AI leverage as explicit review dimension | **[B]** | Dmitry (enterprise), Pat (enterprise), several startups. Both. |
| Promoted on AI leverage AND helping others scale | **[S]** | Amrish (startup PPTX). Enterprise promotion criteria move slower — nobody enterprise describes this as active policy. |
| Token consumption secondary to orchestration efficiency | **[S/B]** | More startup framing — enterprises haven't reached this level of performance measurement sophistication yet. |

**New from interviews**

| Insight | n | Tag | Rationale |
|---|---|---|---|
| "Do or die" — AI proficiency as binary gate | 2 | **[B]** | Cullen (scale-up), Pat (enterprise). Both types use existential framing, but for different reasons: startups because survival requires it, enterprises because transformation demands it. |
| Orchestration quality vs. volume — unresolved gap | ~4 | **[S]** | Michael, Daniel, Tyler, Mahesh — all startup/scale-up. Enterprise interviewees are still at the "adoption" problem, not the "quality measurement" problem. |
| "Helping others scale" as differentiating criterion | 1 | **[S]** | Amrish (startup). Single source, do not generalize. |

---

## 4. Review & Learning Culture

**Already in the framework**

| Insight | Tag | Rationale |
|---|---|---|
| Diagnostic deliberation forums ("AI Doctor meeting") | **[S]** | Charles (scale-up PPTX). No enterprise interviewee describes a structured weekly AI review forum. |
| Project postmortems placed into a monorepo | **[S]** | Michael (startup), Daniel (scale-up). Enterprise postmortems exist but don't feed back into agent context. |
| Failure tolerance and open sandboxing | **[S]** | Startup culture. Enterprise risk aversion explicitly prevents this — Taoufik, Kal describe approval processes before any agent gets access. |
| Remove older/invalidated designs for clean knowledge base | **[S/B]** | More startup practice. Enterprises accumulate legacy — they don't delete it. |
| Review and codification of tribal knowledge | **[B]** | Both name it as important. Nobody has solved it. |

**New from interviews**

| Insight | n | Tag | Rationale |
|---|---|---|---|
| Peer-to-peer workflow sharing as cultural norm | 5 | **[B]** | Tyler, Mahesh, Daniel (startups/scale-up), Dmitry (enterprise), Mitchell (startup). Present in both — but the mechanism differs: informal sharing in startups, internal marketplaces in enterprises. |
| Context pruning as recurring operational practice | 2–4 | **[B]** | Amrish (startup), Dmitry (enterprise). Both need it, few do it systematically. |
| Learning loops at different cadences | 3 patterns | **[S]** | All three patterns documented in startup/scale-up context (Daniel, Amrish, Charles). Enterprises don't describe formalized learning cadences. |
| AI Doctor meeting captures wins not just failures | 1 | **[S]** | Charles (scale-up). Single source. |

---

## 5. Judgment & Accountability

**Already in the framework**

| Insight | Tag | Rationale |
|---|---|---|
| Committer owns AI output | **[S]** | Michael, Alec, Tyler — startup framing. Enterprise has formal accountability structures that don't depend on committer ownership. |
| Defined junction: human review vs. multiple LLMs | **[S/B]** | Startup-originated practice (Michael, Arnon) but present in enterprise too (Nishith, Kal). |
| Higher quality threshold for customer-facing AI | **[B]** | Universal. Aditya (startup), Vijay (startup), Nishith (Maersk), Pat (enterprise). |
| Rebuilding workflows rather than layering AI on existing | **[S]** | Startup freedom. Enterprises are explicitly constrained — Nishith rebuilt within Maersk's existing Salesforce layer, not from scratch. |

**New from interviews**

| Insight | n | Tag | Rationale |
|---|---|---|---|
| "Who's accountable if this goes wrong?" as HITL rule | 2 | **[S]** | Alec (startup), Michael (startup). Enterprise accountability is structural and legal — it's not a question individuals ask, it's defined by governance frameworks. |
| Trust/reputation as hard external limit on AI scope | 3–4 | **[B]** | Vijay, Aditya (startups), Nishith (Maersk). Universal where customer-facing. |
| Risk asymmetry: more autonomy internally, stricter externally | 3 | **[B]** | Mitchell (startup), Aditya (startup), Pat (enterprise). Both explicitly design this asymmetry. |
| Errors replicate at exponential scale | 1–2 | **[S]** | Charles (scale-up PPTX), Michael (startup). Enterprise interviewees don't describe this dynamic — they have more review layers that catch it earlier. |

---

## 6. AI Economics & Value

**Already in the framework**

| Insight | Tag | Rationale |
|---|---|---|
| Value capture shifts to outcome-based models | **[S/B]** | Mostly startup/scale-up aspiration — enterprise billing models haven't shifted yet in practice. |
| AI across R&D, service, and information layers | **[E/B]** | JPM, Maersk, J&J describe this multi-layer deployment. Startups are more concentrated. |
| Token-burn limits pre-value realization | **[E]** | Kal (JPM) — proactive token limits before usage spikes. Startup interviewees don't describe this. |

**New from interviews**

| Insight | n | Tag | Rationale |
|---|---|---|---|
| Model routing by task complexity | 2–3 | **[B]** | Arnon (startup), Kal (JPM), Alec (startup). Both, but for different reasons: startups optimize cost, enterprises manage compliance requirements. |
| Token tiering by seniority — caps with manager approval | 2 | **[E/B]** | Kal (JPM), Charles (scale-up PPTX). Enterprise governance instinct — startups don't have the headcount to make tiering meaningful. |
| Experimentation budget as pre-value mechanism | 2 | **[S/B]** | Cullen (scale-up), Charles (scale-up). Both are scale-ups, not pure startups or large enterprises. |
| Agent cost vs. human time — near-universal gap | ~20 | **[B]** | Universal gap. Neither type has solved this. |

---

## Summary View

| Sub-dimension | Startup-dominant insights | Enterprise-dominant insights | Shared |
|---|---|---|---|
| Org structure | Team compression, role merging, leader as IC, non-engineers shipping | AI steering committees, role redeployment (not elimination) | AI champions, context owner role |
| Talent | Live AI interview, non-tech upskilling, domain knowledge deprioritized | Role replaceability audits, future-proof req evaluation | AI fluency threshold, orchestration competency |
| Performance management | Orchestration quality gap, helping others scale | — | "Do or die" framing |
| Review & learning | AI Doctor meeting, learning cadences, failure tolerance, monorepo postmortems | — | Peer-to-peer sharing, context pruning |
| Judgment & accountability | "Who's accountable?" as HITL rule, errors replicate, workflow rebuilding | — | Trust/reputation limits, risk asymmetry |
| AI economics | Outcome-based billing (aspiration) | Token tiering, pre-emptive token limits | Model routing, econ gap |

**Pattern:** Most of the new, frontier-level insights are startup-originated. Enterprises contribute on governance, scale, and role redeployment — but the operating model innovation is coming from below.
