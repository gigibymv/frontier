# Operating Capabilities — Insights Review

For each sub-dimension: insights already in the framework, then what the interviews add. Each new insight includes a description, supporting quotes, and occurrence count.

---

## 1. Org Structure & Composition

**Already in the framework:**
- Smaller team ("1 engineer builds")
- Middle-management layer reduced as coordination shifts up
- Older functions merging and roles being redesigned
- Coordination chain becomes one query, pushing oversight up
- Focus on "no silos"
- Creation of AI steering committees (risk, strategy, and/or cost)
- AI champions who push adoption

---

**Non-engineers shipping production code** | n=3, ~5 partial

Designers, ops staff, and non-technical employees are committing production-quality code through gated pipelines. This is a different org boundary — not just engineers getting faster, but the boundary between "who can ship" changing entirely.

- "Non-technical employees become full-stack low-code engineers. Ops teams = more autonomous. Engineering = infrastructure and access gatekeepers." (Mitchell Fierro)
- "Design team coding with AI assistance. Engineers doing product thinking." (Charles Barton)
- "Designers submitting PRs — experimental." (Mahesh)
- Role blurring implied but not specifically production code (Vijay Devatha, Kunal Datta)

---

**Leader as IC** | n=2, 1 additional from PPTX case study

Senior leaders are expected to ship working things themselves, not just manage teams that ship. This compresses the coordination layer from above, not just below — and functions as the strongest adoption signal in the organization.

- "Leader = IC + reviewer. We're just rappers — humans orchestrate agents." "If he can do it, so can I." (Kunal Datta)
- "CEO = autonomous on his own deliverables — board reports without support." (Tyler Malone)
- "All managers expected to IC with AI and ship something to users every week." (Amrish Macedo — PPTX case study)

---

**Platform team vs. product team as a deliberate structural split** | n=1 clearly, 2–3 partial

Frontier firms separate who builds the AI rails from who uses them. The platform team owns MCPs, connectors, permissions, and the deployment layer. Product teams are consumers. This is what makes safe self-service possible.

- "Claude Code is just how people can produce stuff — but the question is how do you deploy that thing, where does it run, how does it connect to everything else in our network. We built a whole internal platform for this." (Mitchell Fierro)
- "Top-down to standardize infrastructure" with bottom-up for workflows (Mahesh — partial)

---

**"Context owner" as a new formal role** | n=2

A new hybrid role: someone with domain expertise who owns the freshness and accuracy of the context layer for a given function. An extension of the "metric owner" concept — not an engineer, not a data steward, something new.

- "Extending the logic of metric ownership to context ownership — people with subject matter expertise who approve changes and maintain freshness." (Dmitry Shkolnik)
- "Context ownership = next step to address. Tribal knowledge = unresolved gap." (Mitchell Fierro)

---

**Role shift rather than elimination** | n=2 verified (+2 partial)

Total headcount doesn't necessarily drop; the mix shifts. People whose tasks get automated are repositioned into higher-value or client-facing activities — not eliminated. Note: earlier attribution to Nishith Sahu was inaccurate; his transcript describes a shift toward cross-selling, not toward reviewing AI output.

- "KYC talent: from document processors to AI summary reviewers." (Kal Gangavarapu)
- CX agents time savings "repurposed to do cross-selling activities" rather than reviewing AI. (Nishith Sahu — role shift confirmed, but destination is cross-selling not AI review)
- "Ops team: from dashboard operators to NL query users. People team: scales without headcount growth." (Vijay Devatha)
- Customer-success email role for SMB segment eliminated; person redeployed elsewhere. (Daniel Guzman — PPTX, unverified in raw transcript)

---

## 2. Talent Readiness

**Already in the framework:**
- AI fluency as requirement for candidates and recruiters
- Interviews with live build of AI or plan.md
- Curricula per function to increase AI literacy for reskilling
- Classifying skills and roles by replaceability
- Novel roles focused on orchestration and governance
- AI changing roles without reputation risk or customer trust

---

**Orchestration as the new core engineering competency** | n=1 verified, 1 PPTX

The scarce skill is no longer writing code — it's knowing how to scope tasks, manage context, and orchestrate agents end-to-end. Coding is explicitly described as commoditizing. Note: Daniel Guzman's actual framing is "orchestrator," not "reviewer."

- "I haven't sent a line of code in six months. The role of the engineer is more like an orchestrator. We are looking for people who can understand and orchestrate agents — not only code, because coding is becoming a commodity right now." (Daniel Guzman — verified)
- "We are looking for people who can understand and orchestrate agents. Not only code — because coding is becoming a commodity right now." (Catalin Vieru — PPTX case study, unverified in raw transcript)

---

**Hallucination detection as a named hiring criterion** | n=1 from PPTX, 1 related

The ability to recognize when an agent has drifted, fabricated, or gone off-task is now a specific, named competency — not just "strong fundamentals." Firms have redesigned their technical interviews to test for it.

- "We want people capable of identifying hallucinations — because agents are still non-deterministic. We had to change the way we interview three or four times." (Catalin Vieru — PPTX case study)
- "You can't just let an agent build things without strong fundamentals — supply chain attacks show this." (Michael Bernstein — related framing)

---

**Domain knowledge devalued at hire** | n=1 — do not generalize

One firm explicitly deprioritizes domain expertise at hire because the brain/context layer substitutes for it. Onboarding is compressed: you hook up to the brain and ask it your domain questions. Single strong source.

- "I don't care about domain knowledge. What it helps with practically is your onboarding time. You already hook up to the brain. You have a question? Ask the brain." (Amrish Macedo — PPTX case study)

---

**Future-proof role evaluation before opening a req** | n=1 — do not generalize

Before opening a requisition, asking: will this role exist in 2 years? Could it be automated? Treating the hiring decision itself as an AI-impact assessment.

- "For every new role we hire, we ask: Is this role something we'll need? Could it be automated? The individual needs AI proficiency — this role needs to be future-proof and adaptable." (Pat Sheth)

---

**Personal AI investment as a hiring proxy** | n=0 verified — REMOVED

The specific anecdote ($200 Claude subscription, data scientist building a video game) does not appear in Mitchell Fierro's raw transcript. Removed pending direct verification with interviewee.

---

**Non-technical employees upskilling to production-grade output** | n=1 verified, 1 partial

The ceiling of what a non-engineer can produce has risen toward production quality. Note: Charles Barton attribution not found in raw transcript. Mahesh confirms the pattern in substance but "experimental" and "PR" were interviewer framing, not his words.

- "Non-technical employees become full-stack low-code engineers." (Mitchell Fierro — verified)
- Design and product teams empowered to contribute code: "they are empowered to do so. Many of them design teams do that and product teams do that." (Mahesh — verified in substance, framing adjusted)

---

## 3. Performance Management

**Already in the framework:**
- AI leverage as explicit review dimension
- Promoted on AI leverage AND on helping others scale
- Token consumption is secondary to orchestration efficiency

---

**"Do or die" — AI proficiency as a binary threshold, not a graded criterion** | n=2

Not a point on a performance review but a gate: demonstrate AI-native working or the role is at risk. Two firms use explicitly existential framing, not developmental.

- "AI adaptiveness = performance criterion: 'transformative' → 'non-functioning'. If you just say ChatGPT, that's nowhere near good enough." (Cullen Brown)
- "AI performance = performance criterion by end of 2026 — do or die. This role needs to be future-proof." (Pat Sheth)

---

**Output quality of orchestration, not just volume of usage — a gap no one has solved** | n=0 implemented, ~4 name it as a gap

Measuring how much AI is used rewards activity, not judgment quality. The right metric — how well does someone direct and review agent outputs? — is described by multiple firms as what they want to measure, but nobody has a clean implementation.

- "No centralized organizational tracking yet." (Michael Bernstein)
- Monitors per-agent token usage but not orchestration decision quality (Daniel Guzman — gap implied)
- Similar tracking gap (Tyler Malone, Mahesh)

---

**"Helping others scale" as the differentiating performance criterion** | n=1 from PPTX — do not generalize

Individual AI productivity is table stakes; multiplying the team's productivity is the differentiator. Present in the deck but grounded in a single source — needs corroboration.

- "Promoted on AI leverage AND on helping others scale." (Amrish Macedo — PPTX case study; not corroborated across other interviews)

---

## 4. Review & Learning Culture

**Already in the framework:**
- Diagnostic deliberation forums ("AI Doctor meeting")
- Project postmortems placed into a monorepo
- Failure tolerance and open sandboxing
- Remove older/invalidated designs for clean knowledge base
- Review and codification of tribal knowledge

---

**Peer-to-peer workflow sharing as a cultural norm** | n=3 verified

People build and share workflows organically — not through a managed process. Note: Mahesh ("each team builds its own") not found in raw transcript. Tyler Malone confirmed but it's a 10-person company which limits the organizational-scale claim.

- "It's completely self-service — people just take it upon themselves. They know how to solve that problem and they are the ones who come up with the solution. Very self-service. People just build stuff to basically automate their jobs." (Mitchell Fierro — verified)
- "Network effects through internal marketplace — best workflows adopted → more context → better workflows." (Dmitry Shkolnik — verified)
- Workflows exist at project, personal, and org levels; Tyler built most of the org-level ones and made them available to the team. (Tyler Malone — verified, small company context)

---

**Context pruning as a recurring operational practice** | n=2 explicit, ~4 implied

The brain/context layer degrades without active removal of stale information. Keeping it clean requires deleting outdated content, not just adding new content — an ongoing maintenance burden.

- "Daily cleanup trims brain." (Amrish Macedo — PPTX case study)
- "Context ownership + validation for context updates." (Dmitry Shkolnik)

---

**Learning loops closing at different time horizons** | n=3 distinct patterns

How frequently a firm closes its learning loop is a design choice with real trade-offs. No consensus on what's optimal.

- Per-fix: every merged PR pushes context back into the relevant skill (Daniel Guzman, Mitchell Fierro — PPTX case studies)
- Daily: automated brain refresh (Amrish Macedo — PPTX case study)
- Weekly: AI Doctor meeting surfaces wins, mistakes, best practices (Charles Barton — PPTX case study)

---

**The AI Doctor meeting captures wins, not just failures** | n=1 — do not generalize

The deck frames the forum as error-review. The actual practice described is bidirectional: wins shared alongside mistakes. The wins are what make it psychologically safe to surface failures.

- "A weekly 'AI Doctor' meeting surfaces wins, mistakes, and best practices." (Charles Barton — PPTX case study)

---

## 5. Judgment & Accountability

**Already in the framework:**
- Committer owns AI output
- Defined junction of human review vs. multiple/other LLMs
- Higher quality threshold for customer-facing AI vs. internal
- Rebuilding workflows rather than AI layering on existing ones

---

**"Who's accountable if this goes wrong?" as the operational HITL decision rule** | n=2

The practical test for where to put a human gate is a single question: if the agent is wrong, who owns the consequence? If a named person does, the gate is there. More operational than abstract accountability principles.

- "Who's accountable if something goes wrong = criterion for placing a HITL." (Alec Dickinson)
- "Commit ownership = result ownership, agent or not." (Michael Bernstein)

---

**Trust and reputation as hard external limits on AI scope** | n=3–4

Firms maintain human touchpoints not because the AI is inadequate, but because removing them would damage customer trust. This is a market constraint, not a capability constraint.

- "We always have a 'talk to a human' button in the UX at all times — because we cannot erode customer trust in the products." (Vijay Devatha)
- Bounding box on customer-facing agents as explicit policy (Aditya Nemmaluri)
- "Human CX agents validate before sending." (Nishith Sahu)

---

**Risk asymmetry between internal and external deployment** | n=3

Frontier firms have explicitly different risk tolerances for internal tools vs. customer-facing ones — more aggressive autonomy inside, stricter gates externally. An explicit design principle, not a temporary limitation.

- "Internal APIs = write-access for engineering only. Non-engineers = read-only + controlled API calls. Observability of who builds what." (Mitchell Fierro)
- Bounding box specifically for customer-facing agents, not internal ones (Aditya Nemmaluri)
- "Existing templates = lighter review" vs. new external formats = full review (Pat Sheth)

---

**AI errors replicate at exponential scale** | n=1 explicit, 1–2 implied

The review gate isn't just about catching one mistake — it's about preventing a bad pattern from being replicated hundreds of times by agents working in parallel. This reframes what the gate is actually for.

- "Claude saw that N+1 query and replicated it 600 times. It caused significant latency incidents. It is hard to undo." (Charles Barton — PPTX case study)
- "Humans own the outcome" framing implies awareness of compounding risk (Michael Bernstein — implied)

---

## 6. AI Economics & Value

**Already in the framework:**
- Value capture shifts from T&M to outcome-based AI rate models
- AI sits in R&D, service, and information layers within total portfolio
- Token-burn limits pre-value realization

---

**Model routing by task complexity as an active cost optimization** | n=2–3

Using cheaper/faster models for simple tasks and expensive/capable models for complex ones. Requires task classification and routing logic — a platform capability with direct cost implications.

- "Deliberate Haiku (routine) vs. Opus (complex) choice to optimize costs." (Arnon)
- "3 buckets: individual chat (under budget), coding (proactively limited), autonomous agents (engineered for efficiency)." (Kal Gangavarapu)
- "Cost and ETA estimated at each turn. Token cost vs. time to generate as feedback loop." (Alec Dickinson)

---

**Token budgeting by use case type** | n=1 verified (tiering by seniority with manager approval — NOT VERIFIED)

Token consumption is actively managed by separating use cases into distinct budget buckets with different constraints. Note: the "manager approval to upgrade tiers" mechanism attributed to Charles Barton (PPTX) is unverified. Kal Gangavarapu's 3 buckets are confirmed but are use-case types, not seniority tiers.

- "The economics fall into three different buckets: normal chat use (under budget), coding tools (proactively limited), agentic orchestration (engineered for efficiency at the process level)." (Kal Gangavarapu — verified)
- T1/T2/T3 caps with manager-approved upgrades based on demonstrated impact: attributed to case study in PPTX deck — not verifiable from raw transcript.

---

**Experimentation budget as a deliberate pre-value mechanism** | n=2

A ring-fenced budget that doesn't require ROI justification up front. The insight is that requiring ROI before experimentation kills the experimentation that would eventually produce ROI.

- "Experimentation budget to explore without risk. Not 'yes to everything' — unjustified cases shut down." (Cullen Brown)
- "AI budget = experimentation budget for teams." (Charles Barton)

---

**The agent cost vs. human time comparison — near-universal gap** | n=2–3 attempting it, ~20 haven't

The most useful economic analysis — what does this workflow cost in tokens vs. what it cost in human hours — is almost entirely absent. Firms measure time saved and productivity proxies, but almost none have the token cost on the other side of the equation.

- "Cost and ETA estimated at each turn — token cost vs. time to generate as feedback loop." (Alec Dickinson — closest to a formal comparison)
- "Positive ROI maintained regardless of LLM improvement pace." (Nishith Sahu — implies comparison logic)
- Productivity proxies only, without token cost on the other side (~20 interviews)

---

## Summary

| Insight | n |
|---|---|
| Non-engineers shipping production code | 3 (+2 partial) |
| Leader as IC | 2 (+1 PPTX) |
| Platform / product team split | 1 clearly, 2–3 partial |
| "Context owner" as new role | 2 |
| Role shift not elimination | 4 |
| Orchestration > coding as hiring criterion | 2 (+1 PPTX) |
| Hallucination detection as hiring skill | 1 PPTX +1 related |
| Domain knowledge devalued at hire | 1 — do not generalize |
| Future-proof role evaluation | 1 — do not generalize |
| Personal AI investment as hiring proxy | 1 — do not generalize |
| Non-technical upskilling to production-grade | 3 |
| "Do or die" binary threshold | 2 |
| Output quality vs. volume — unresolved gap | 0 implemented, ~4 name it |
| "Helping others scale" as criterion | 1 — do not generalize |
| Peer-to-peer workflow sharing | 5 |
| Context pruning as recurring practice | 2 (+4 implied) |
| Learning loops at different time horizons | 3 patterns |
| AI Doctor meeting captures wins too | 1 — do not generalize |
| "Who's accountable?" as HITL rule | 2 |
| Trust / reputation as hard limit | 3–4 |
| Risk asymmetry internal vs. external | 3 |
| Errors replicate at exponential scale | 1 (+1 implied) |
| Model routing as cost optimization | 2–3 |
| Token tiering by seniority | 2 (1 +1 PPTX) |
| Experimentation budget as pre-value mechanism | 2 |
| Agent cost vs. human time — gap | ~20 missing it |
