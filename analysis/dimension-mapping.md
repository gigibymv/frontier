# Frontier Firms — Interview Dimensions vs. Framework Mapping

**Purpose:** Cross-map the 13 dimensions that emerged inductively from 25 interviews against the framework's three pillars and sub-dimensions. Identify what maps cleanly, what maps partially, and what the interviews surface that the framework doesn't yet capture.

---

## 1. Framework Coverage Map

### INFRASTRUCTURE

| Framework Sub-dimension | Maps to Interview Dimension | Coverage | Notes |
|---|---|---|---|
| Models | D3 — Technical stack & models | **Strong** | LLM selection, interchangeability, build vs. buy, fine-tuning are extensively discussed across 25/25 interviews |
| Integration & connection | D3 — Technical stack & models | **Partial** | MCP adoption discussed (Cullen, Catalin, Arnon) but framed as "tool" not as architecture principle; most interviews don't distinguish SOR integration from general API use |
| Data & context substrate | D4 — Context & data management | **Strong** | Most discussed infrastructure dimension in interviews. Monorepo markdown, Notion brain, semantic layer all documented |
| Execution environments | D2 — Agentic architecture | **Partial** | Sandboxing mentioned (Kunal, Michael, Alec) but inconsistently; isolated VM/repo discussed more than formal "execution environment" framing |
| Eval / telemetry infra | D7 — Value measurement & metrics | **Weak** | Interviews discuss outcomes (time saved, PRs per day) but almost nobody discusses instrumented telemetry pipelines. The gap between "we measure results" and "we have task-level unit economics" is large |
| Compute | D3 — Technical stack & models | **Weak** | Rarely discussed. Cloud-native assumed. On-premise only in Taoufik (J&J, ITAR compliance). No one talks about continuous vs. on-demand compute strategy |

**Infrastructure gap:** Eval/telemetry and compute are near-absent in interviews. Either firms haven't reached that level of sophistication, or the question framing didn't elicit it.

---

### PLATFORM

| Framework Sub-dimension | Maps to Interview Dimension | Coverage | Notes |
|---|---|---|---|
| Context management | D4 — Context & data management | **Strong** | Best-covered platform dimension. Three distinct patterns documented: monorepo markdown, Notion brain, per-agent scoping. Human curation universally present |
| Agent design | D2 — Agentic architecture | **Strong** | Hierarchical orchestration, specialized agents, registry, sub-agent delegation all documented across multiple interviews |
| Workflow & task design | D2 — Agentic architecture + D1 — Focal workflow | **Strong** | plan.md, bounded tasks, acceptance criteria, advisor/executor/reviewer split all appear. Best documented in Michael Bernstein, Kunal Datta, Charles Barton |
| Orchestration | D2 — Agentic architecture | **Moderate** | Dynamic vs. deterministic routing discussed. Temporal as durable execution (Mitchell). Model routing less explicit — most firms use one primary model |
| Risk management | D5 — HITL + D6 — Guardrails & governance | **Strong** | Multi-stage review, human-on-the-loop, audit trails documented. The guardrail *process* (Kunal's multi-stage code pipeline) is the richest case study in the corpus |
| Learning systems | D4 — Context & data management + D7 — Value & metrics | **Partial** | Fix→skill, postmortem→context loops described by several (Michael, Cullen, Daniel). But systematic golden datasets and workflow evals are rare. Most learning is ad hoc |

**Platform gap:** Learning systems are the weakest platform dimension in practice. Firms describe feedback loops conceptually but few have instrumented, closed-loop learning pipelines.

---

### OPERATING CAPABILITIES

| Framework Sub-dimension | Maps to Interview Dimension | Coverage | Notes |
|---|---|---|---|
| Org structure & composition | D8 — Org changes & roles | **Strong** | Role collapse (SWE absorbing PM/DS/QA), team size compression, "1 engineer builds" pattern well documented. Mostly in startups — enterprise patterns weaker |
| Talent readiness | D12 — Hiring & talent | **Strong** | AI fluency as binary threshold, plan.md in interviews, live-build assessments all documented. Pat Sheth adds "future-proof role evaluation" before opening a req |
| Performance management | D8 + D11 | **Weak** | AI leverage as review dimension mentioned (Dmitry, Pat) but no firm has a mature implemented system. Described as "in progress" or "planned for end of year" |
| Review & learning culture | D9 — Change management & culture | **Partial** | "AI Doctor meetings" (Charles Barton), postmortem culture (Michael), failure tolerance discussed. But formal diagnostic forums are rare — most learning is informal |
| Judgment & accountability | D5 — HITL + D6 — Guardrails | **Strong** | "Committer owns AI output" principle, defined human review junctions, higher bar for customer-facing AI all documented. Arnon (voice AI) is the only case where human review is nearly eliminated |
| AI economics & value | D7 — Value & metrics + D11 — Token economics | **Partial** | Outcome measurement exists (time reduction, team size) but is mostly proxies. Token economics is emerging but not formalized. Outcome-based pricing models not yet seen in practice |

---

## 2. Dimensions Outside the Framework

These themes emerged strongly from interviews but don't map cleanly to any existing framework pillar or sub-dimension. They warrant either new sub-dimensions or a dedicated fourth pillar discussion.

---

### OUT-1: Build vs. Buy Decision Logic
**Interview signal:** 18/25 | **Framework home:** Nowhere explicit

The framework implies a stance (buy commodity, build proprietary) but doesn't treat it as a scored capability. Interviews reveal a sophisticated decision framework that frontier firms have internalized and others haven't:

- Buy: commodity workflows, off-the-shelf models, packaged cloud infra
- Build: proprietary context layers, custom MCPs for internal knowledge, fine-tuned models only for niche high-volume tasks
- The discriminant isn't cost — it's whether proprietary context creates a defensible advantage

Most non-frontier firms have no principled build/buy logic. They either buy everything or build ad hoc. The existence of an explicit, consistently applied decision framework is itself a frontier behavior.

**Proposed placement:** New sub-dimension under Infrastructure, or standalone dimension in a "Strategic Architecture" category.

---

### OUT-2: Adoption Dynamics & Internal Change Management
**Interview signal:** 22/25 | **Framework home:** Partially Review & Learning Culture — insufficient

The framework treats culture as a capability (postmortems, failure tolerance). But what interviews reveal is a distinct *adoption management* challenge that precedes capability:

- "Two cities" bifurcation (Pat Sheth): early adopters vs. resisters diverging
- Bottom-up vs. top-down adoption strategies and when each works
- AI champions as organizational accelerants
- The role of visible leadership behavior ("managers who IC with AI")
- Resistance from IT/CIO layer in enterprises (Taoufik, Dmitry)
- Multi-quarter evangelization journeys before critical mass

This is more a *change management and diffusion* dimension than a learning culture dimension. It's about getting the organization to a baseline before the framework's capabilities even become relevant.

**Proposed placement:** New sub-dimension under Operating Capabilities: "Adoption & Diffusion."

---

### OUT-3: Tribal Knowledge Capture
**Interview signal:** 14/25 | **Framework home:** Partially Data & context substrate, partially Learning systems — insufficient

Multiple firms (Mitchell, Kunal, Dmitry, Charles) identify an unsolved problem: the gap between documented knowledge and the implicit, contextual judgment that resides in experienced team members. This is distinct from:
- Context management (which assumes the knowledge is already articulable)
- Learning systems (which capture feedback on agent outputs, not human expertise)

The tribal knowledge problem is: *how do you encode what experts know but can't fully articulate into agent context?* Approaches attempted:
- Daily brain refresh with Claude suggestions (Amrish)
- "Context ownership" roles (Dmitry)
- Encoding "do/don't" lists in CLAUDE.md from past mistakes
- Weekly tribal knowledge codification meetings

No one has solved this. It is the deepest unsolved problem in the corpus.

**Proposed placement:** New sub-dimension under Platform: "Tribal Knowledge Encoding" or expansion of "Learning systems."

---

### OUT-4: Token Economics — Operational Layer
**Interview signal:** 12/25 | **Framework home:** AI Economics & Value — partial

The framework's "AI economics & value" sub-dimension covers outcome measurement and value attribution. But what interviews surface is a distinct *operational* token management problem:

- Token tiering by engineer seniority (Charles Barton: T1/T2/T3 with manager-approved upgrades)
- Model routing based on task complexity to control burn (professional services firm)
- Per-agent context scoping explicitly to reduce token consumption
- Proactive limits before value is demonstrated (JPMorgan/Kal)
- Transition from T&M billing to outcome-based models (only discussed, not implemented)

This is less about measuring AI value and more about *allocating and rationing AI capacity* — a resource management problem that has no analog in the pre-AI operating model. It deserves its own sub-dimension.

**Proposed placement:** New sub-dimension under Operating Capabilities: "AI Capacity Management" or separate from AI economics entirely.

---

### OUT-5: Maturity Trajectory & Compounding Effects
**Interview signal:** 20/25 | **Framework home:** Nowhere

The framework is a static snapshot scorecard. What interviews consistently reveal is that frontier firms understand their *trajectory* differently than laggards — they describe compounding effects:

- "The worst version of that process you'll ever have is the first one" (Alec Dickinson)
- Self-improving agent factories that compound learning over time
- Post-December 2025 quality threshold as a shared reference point
- The difference between "AI-assisted" and "AI-native" as a phase transition, not a spectrum

This isn't a capability to score — it's a lens for interpreting scores. A firm at 40/100 on a static scorecard may be more valuable than a firm at 55/100 if the former is on an exponential trajectory and the latter is plateau'd.

**Proposed placement:** Not a scorecard dimension, but a methodological note for interpreting benchmark results. Could be a "trajectory score" or "velocity indicator" alongside the static scorecard.

---

## 3. Summary: Framework Coverage by Interview Signal

| Framework Pillar | Sub-dimension | Interview Coverage |
|---|---|---|
| Infrastructure | Models | ███████ Strong |
| Infrastructure | Data & context substrate | ███████ Strong |
| Infrastructure | Integration & connection | ████░░░ Partial |
| Infrastructure | Execution environments | ████░░░ Partial |
| Infrastructure | Eval / telemetry infra | ██░░░░░ Weak |
| Infrastructure | Compute | █░░░░░░ Weak |
| Platform | Context management | ███████ Strong |
| Platform | Agent design | ███████ Strong |
| Platform | Workflow & task design | ███████ Strong |
| Platform | Risk management | ███████ Strong |
| Platform | Orchestration | █████░░ Moderate |
| Platform | Learning systems | ████░░░ Partial |
| Op. Capabilities | Org structure & composition | ███████ Strong |
| Op. Capabilities | Talent readiness | ███████ Strong |
| Op. Capabilities | Judgment & accountability | ███████ Strong |
| Op. Capabilities | Review & learning culture | ████░░░ Partial |
| Op. Capabilities | AI economics & value | ████░░░ Partial |
| Op. Capabilities | Performance management | ██░░░░░ Weak |
| **Outside framework** | Build vs. buy decision logic | ██████░ Strong |
| **Outside framework** | Adoption dynamics & change mgmt | ███████ Strong |
| **Outside framework** | Tribal knowledge capture | █████░░ Moderate |
| **Outside framework** | Token economics — operational | ████░░░ Partial |
| **Outside framework** | Maturity trajectory & compounding | ██████░ Strong |

---

## 4. Structural Implication

Three observations for the scorecard design:

**1. Platform is under-differentiated in practice.** Orchestration and Learning systems score low in interviews not because firms don't value them — but because most haven't reached that layer yet. The scorecard may need a "pre-conditions" check before scoring these sub-dimensions (e.g., you can't score Learning systems if you don't have systematic telemetry).

**2. The framework underweights adoption.** The hardest problem enterprises describe isn't building agents — it's getting the organization to use them. A high infrastructure score combined with low adoption is a common failure pattern (Taoufik at J&J is the clearest example). The framework should have a dedicated adoption/diffusion dimension, not just cultural sub-items buried in Operating Capabilities.

**3. Token economics needs splitting.** "AI Economics & Value" conflates two distinct problems: (a) measuring the business value of AI, and (b) operationally managing AI consumption. These require different capabilities, different roles, and different maturity levels. Many firms are doing (b) informally without having solved (a) at all.
