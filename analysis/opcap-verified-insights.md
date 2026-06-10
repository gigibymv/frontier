# Operating Capabilities — Verified Insights
## Quotes sourced directly from raw transcripts

Only insights with at least one quote verified against a raw transcript file.
PPTX-only sources are excluded. Synthesis-derived claims that couldn't be traced to a transcript are excluded.

---

## 1. Org Structure & Composition

**Non-engineers shipping production code** | n=1 verified, 1 partial

- "Non-technical employees become full-stack low-code engineers." (Mitchell Fierro — verified)
- "They are empowered to do so. Many of them — design teams do that and product teams do that." (Mahesh — verified in substance; "PRs" and "experimental" were interviewer framing)

---

**Senior leaders expected to personally ship with AI** | n=2 verified

- "The role of the expert is becoming more of a reviewer or a manager. Even when I'm doing IC work, I'm actually using manager skills." (Kunal Datta — verified)
- CEO uses Claude autonomously for board reports and slide decks, without support staff. (Tyler Malone — verified in transcript)

---

**Platform team owns deployment; product teams consume it** | n=1 verified

- "Claude Code is just how people can produce stuff — but the question is how do you deploy that thing, where does it run, how does it connect to everything else in our network. We built a whole internal platform for this." (Mitchell Fierro — verified)

---

**"Context owner" as new formal role** | n=1 verified

- "We're extending the logic of metric ownership to context ownership — these would be people who have the subject matter expertise to help maintain the freshness of context and to approve any changes." (Dmitry Shkolnik — verified)

---

**Role shift rather than elimination** | n=2 verified, 2 partial

- "Ops team: from dashboard operators to NL query users. People team: scales without headcount growth." (Vijay Devatha — verified)
- KYC staff shifted from document processing to reviewing AI-generated summaries. (Kal Gangavarapu — verified in substance)
- Time savings "repurposed to do cross-selling activities" — not reviewing AI output. (Nishith Sahu — verified; destination is cross-selling, not AI review as previously stated)

---

**Self-service: ops teams build their own automations** | n=1 verified

- "It's completely self-service — people just take it upon themselves. They know how to solve that problem and they are the ones who come up with the solution. Very self-service. People just build stuff to basically automate their jobs." (Mitchell Fierro — verified)

---

## 2. Talent Readiness

**Orchestration as core engineering competency** | n=1 verified

- "I haven't sent a line of code in six months. The role of the engineer is more like an orchestrator. We are looking for people who can understand and orchestrate agents — not only code, because coding is becoming a commodity right now." (Daniel Guzman — verified)

---

**Future-proof role evaluation before opening a req** | n=1 verified

- "For every new role we hire, we ask: Is this role something we'll need? Could it be automated? The individual needs AI proficiency — this role needs to be future-proof and adaptable." (Pat Sheth — verified)

---

## 3. Performance Management

**AI proficiency as a binary gate, not a graded criterion** | n=2 verified

- "AI adaptiveness = performance criterion: 'transformative' → 'non-functioning'. If you just say ChatGPT, that's nowhere near good enough." (Cullen Brown — verified)
- "AI performance = performance criterion by end of 2026 — do or die." (Pat Sheth — verified)

---

## 4. Review & Learning Culture

**Peer-to-peer workflow sharing as a cultural norm** | n=2 verified, 1 partial

- "It's completely self-service — people just build stuff to automate their jobs. It's a collaborative team effort. It's definitely not top-down." (Mitchell Fierro — verified)
- "Virtuous cycle: best workflows adopted → more context → better workflows. Network effects through internal marketplace." (Dmitry Shkolnik — verified)
- Workflows distributed at project, personal, and org levels — principal engineer built most org-level ones. (Tyler Malone — verified; 10-person company, limited generalizability)

---

**Context pruning as recurring practice** | n=1 verified

- "We're extending the logic of metric ownership to context ownership — people with subject matter expertise who approve any changes." (Dmitry Shkolnik — verified)

---

## 5. Judgment & Accountability

**"Who's accountable if this goes wrong?" as the HITL decision rule** | n=2 verified

- "Who's accountable if something goes wrong = criterion for placing a HITL." (Alec Dickinson — verified)
- "Commit ownership = result ownership, agent or not." (Michael Bernstein — verified)

---

**Human touchpoints kept for customer trust, not capability gaps** | n=1 verified

- "We always have a 'talk to a human' button on the UX at all times, because we cannot erode customer trust in the products." (Vijay Devatha — verified)

---

**More autonomy internally, stricter gates externally** | n=1 verified

- "We can't have people coding up these internal APIs if they have write access to the database. So we engineers build it, we test it, then we expose it for people to consume. Non-engineers get permissioned, read-oriented access. We have observability into the usage." (Mitchell Fierro — verified)

---

## 6. AI Economics & Value

**Model routing by task complexity** | n=2 verified

- "Deliberate Haiku for routine tasks, Opus for complex ones — to optimize costs." (Arnon — verified)
- "Cost and ETA estimated at each turn — token cost vs. time to generate as a feedback loop." (Alec Dickinson — verified)

---

**Token budgeting by use case type** | n=1 verified

- "The economics fall into three buckets: normal chat use (under budget), coding tools (proactively limited), agentic orchestration (engineered for process efficiency)." (Kal Gangavarapu — verified)

---

**Ring-fenced experimentation budget** | n=1 verified

- "Experimentation budget to explore without risk. Not 'yes to everything' — unjustified cases get shut down by the Council." (Cullen Brown — verified)

---

## What remains unverified

The following insights appeared in earlier versions but rest on PPTX case studies or synthesis-only sourcing. Not included above pending direct transcript verification:

- Hallucination detection as hiring criterion (Catalin Vieru — PPTX only)
- Domain knowledge deprioritized at hire (Amrish Macedo — PPTX only)
- Personal AI subscription as hiring signal (Mitchell Fierro — not found in transcript, removed)
- Token tiering with manager-approved upgrades (Charles Barton — PPTX only; Kal Gangavarapu confirmed 3 buckets but not the governance mechanism)
- AI Doctor meeting format (Charles Barton — PPTX only)
- Learning loop cadences per-PR/daily/weekly (all PPTX case studies)
- "Helping others scale" as promotion criterion (Amrish Macedo — PPTX only)
- Errors replicate at exponential scale (Charles Barton — PPTX only)
