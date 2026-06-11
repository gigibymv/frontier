# Startup vs. Large-Organization Exclusive Traits

Purpose: classify transcript-supported frontier-firm traits by organization type across the three framework pillars. This file includes only traits that look specific to startups/scale-ups or specific to large organizations. Traits that are supported on both sides are excluded from the main classification.

Source standard:

- Promote a trait only when at least two substantive sources support the organization-type pattern, or when one source is used only as supporting evidence for a broader multi-source pattern.
- Treat the organization described in the transcript as the classification unit. For example, Kal Gangavarapu/JPMC and Nishith Sahu/Maersk are treated as large-organization cases even though their files sit under `interviews/transcripts/startups/`.
- Do not use previously flagged contaminated claims unless re-sourced directly from transcripts.
- Keep the quotes short and specific. When a trait is mono-source, keep it in the exclusions rather than the promoted classification.

## Summary Classification

| Pillar | Startup / scale-up-specific traits | Large-organization-specific traits |
|---|---|---|
| Infrastructure | Fine-grained AI consumption metering at the agent/session/workflow level | Private, sovereign, or edge deployment for proprietary/regulatory data; compliant enterprise data layer as the shared agent substrate; formal data/context quality, freshness, and metadata governance |
| Harness / architecture | Reusable agent-factory/runtime pattern; repo-local context as an active harness | Agents embedded into fragmented enterprise system landscapes; shared data/context infrastructure with domain-specific workflow ownership |
| Operating capabilities | Senior leaders personally work with AI / ship artifacts; expert role shifts toward orchestration/review/accountability; accountability determines where human review stays; model/task routing and cost-awareness shape AI work | Token budgeting and burn-rate control by use case |

## Operating Capabilities Slide-Labeled Lookup

Use this table to find the exact wording from the `Frontier Firm Traits | Operating Capabilities` slide. `Do not classify as exclusive` means the trait should not be labeled startup-only or large-org-only under the strict transcript standard because it is both-sided, mono-source, preliminary, or not transcript-verified.

| Slide section | Exact slide wording | Strict exclusive classification | Evidence-safe handling |
|---|---|---|---|
| Organization structure & composition | Smaller team ("1 engineer builds") | Do not classify as exclusive | Plausible startup pattern, but not promoted in the strict quote-check. |
| Organization structure & composition | Middle-management layer reduced as coordination shifts up | Do not classify as exclusive | Not sufficiently quote-backed as an exclusive trait. |
| Organization structure & composition | Older functions merging and roles being redesigned | Do not classify as exclusive | Related role-shift evidence is both-sided. |
| Organization structure & composition | AI champions who push adoption | Do not classify as exclusive | Adoption pattern appears on both sides; not an exclusive label. |
| Organization structure & composition | Creation of AI steering committees (risk, strategy, and/or cost) | Do not classify as exclusive | More enterprise-shaped, but not promoted as strict exclusive from multi-source transcript evidence. |
| Organization structure & composition | Focus on "no silos" | Do not classify as exclusive | Framework trait, not cleanly transcript-classified by org type. |
| Organization structure & composition | Non-engineers as production code shippers | Do not classify as exclusive | Supported, but both-sided when softened to governed production contribution. |
| Organization structure & composition | Formal context ownership responsibility | Do not classify as exclusive | Strong large-org signal from Dmitry, but mono-source as a formal role. |
| Talent readiness | Interviews with live build of AI or plan.md | Do not classify as exclusive | Startup-shaped but not enough strict multi-source evidence as a slide trait. |
| Talent readiness | AI fluency requirement for candidates and recruiters | Do not classify as exclusive | Supported as AI proficiency threshold, but both-sided. |
| Talent readiness | Curriculums per function to increase AI literacy for reskilling | Do not classify as exclusive | Not promoted in the strict quote-check. |
| Talent readiness | Classifying skills and roles by replaceability | Do not classify as exclusive | Related evidence is mono-source/enterprise-leaning; not strict exclusive. |
| Talent readiness | Novel roles focused on orchestration and governance | Do not classify as exclusive | The broader expert-role shift is startup-specific, but this exact governance wording is not promoted. |
| Talent readiness | Core engineering skill shifting from coding to orchestration | Startup-specific | Supported under the stricter operating-capability evidence. |
| Talent readiness | Hiring screening for role durability / future-proofing | Do not classify as exclusive | Strong Pat/large-org signal, but mono-source. |
| Performance management | AI leverage as explicit review dimension | Do not classify as exclusive | Safer wording is AI proficiency as a performance/hiring threshold; that pattern is both-sided. |
| Performance management | Promoted on AI leverage AND on helping others scale | Do not classify as exclusive | Not transcript-verified; do not use without re-sourcing. |
| Performance management | Token consumption is secondary to orchestration efficiency | Do not classify as exclusive | Narrow Kal/JPMC support; not enough as a strict exclusive slide trait. |
| Review & learning culture | Failure tolerance and open sandboxing | Do not classify as exclusive | Plausible framework trait, but not strict transcript-classified. |
| Review & learning culture | Project postmortems placed into a monorepo | Do not classify as exclusive | Needs direct re-sourcing before use as interview evidence. |
| Review & learning culture | Diagnostic deliberation forums ("AI doctor meeting") | Do not classify as exclusive | Previously flagged as unverified/contaminated. |
| Review & learning culture | Remove older / invalidated designs for clean knowledge base | Do not classify as exclusive | Needs direct re-sourcing before use as interview evidence. |
| Review & learning culture | Review and codification of "tribal" knowledge | Do not classify as exclusive | The gap is real, but mature codification is not strict multi-source by org type. |
| Review & learning culture | Peer-to-peer workflow sharing as adoption norm | Do not classify as exclusive | Supported, but both-sided. |
| Judgment & accountability | Committer owns AI output | Startup-specific | Supported as accountability for AI-assisted outputs. |
| Judgment & accountability | Coordination chain and roles are one query, pushing oversight up | Do not classify as exclusive | Adjacent to role/orchestration shifts, but not strict slide-level evidence. |
| Judgment & accountability | Defined junction of output review by human vs multiple/other LLMs | Do not classify as exclusive | Review-boundary evidence exists, but exact trait is not exclusive. |
| Judgment & accountability | Higher quality threshold over internal for customer-facing AI | Do not classify as exclusive | Supported as customer trust / external-risk boundary, but both-sided. |
| Judgment & accountability | Rebuilding workflows rather than AI taking over existing workflows | Do not classify as exclusive | Important framework idea, but not strict org-type exclusive. |
| Judgment & accountability | AI changing roles without reputation risk or customer trust | Do not classify as exclusive | The trust boundary is supported, but the full wording is too broad and both-sided. |
| AI economics & value | AI sits in R&D, service, and information layers within total portfolio | Do not classify as exclusive | Portfolio framing is not strict transcript-classified by org type. |
| AI economics & value | Value capture shifts from T&M to outcome-based AI rate models | Do not classify as exclusive | Discussed as aspiration/strategy, not strong implemented operating evidence. |
| AI economics & value | Limit token burn until definitive value realization | Large-organization-specific | Supported as token budgeting / burn-rate control by use case. |
| AI economics & value | Model routing by task complexity and cost | Startup-specific | Supported by startup/scale-up task-level model/cost routing evidence. |
| AI economics & value | Ring-fenced experimentation budget before proven ROI | Do not classify as exclusive | Cullen-only; do not promote under strict standard. |

## 1. Infrastructure

### Startup / Scale-Up-Specific

#### Fine-Grained AI Consumption Metering At Agent / Session / Workflow Level

**Trait:** Startups/scale-ups show builder-side instrumentation that attributes AI consumption to individual agents, sessions, turns, or workflows. This is narrower than generic token budgeting.

**Why startup-specific:** The strongest verified evidence is from agent builders who expose consumption at the workflow/runtime level. Large organizations show stronger evidence for budgeting and negotiated capacity, but not the same fine-grained builder-side metering pattern.

**Evidence:**

- Daniel Guzman: "every agent that we run have is its own API token" and usage is split "by different API token" depending on use case (`Startup_Daniel Guzman Follow Up_20260601.md:483-485`).
- Alec Dickinson: "Each turn can estimate total cost" and "cost in tokens for a specific model" (`Startup_Alec Dickinson_20260508.md:179-180`).

**Do not overstate as:** Mature enterprise-style chargeback, finance governance, or proof that every startup has clean unit economics.

### Large-Organization-Specific

#### Private, Sovereign, Or Edge Deployment For Proprietary / Regulatory Data

**Trait:** Large organizations make model/runtime placement decisions around proprietary data leakage, data residency, sovereign requirements, and edge deployment.

**Why large-organization-specific:** The evidence is tied to enterprise constraints: proprietary customer/marketing data, regulated regions, manufacturing/robotics edge environments, and data-residency requirements.

**Evidence:**

- Pat Sheth: internal data is ring-fenced so it does not "leak outside," using "private instance of OpenAI" or Microsoft-based tooling (`Enterprise_Pat Sheth_20260609.md:223-227`).
- Taoufik Arif: the LLM is "not in the cloud" but "at Edge" and embedded in robots (`Enterprise_Taoufik Arif - 20260611.md:358-359`).
- Kal Gangavarapu/JPMC: model decisions are shaped by "sovereign requirements like data residency" and emerging sovereign models in Europe (`Startup_Kal Gangavarapu_20260608.md:179`, `Startup_Kal Gangavarapu_20260608.md:338`).

**Do not overstate as:** On-premise NVIDIA as a standalone trait. Hardware is supporting evidence, not the capability.

#### Compliant Enterprise Data Layer As The Shared Agent Substrate

**Trait:** Large organizations need a governed data substrate spanning systems and functions before agents can operate reliably at scale.

**Why large-organization-specific:** The strongest evidence appears in multi-system enterprise workflows where agents must access CRM, ERP/MES, order management, document vaults, and data lakes under compliance requirements.

**Evidence:**

- Nishith Sahu/Maersk: the architecture includes Azure API management, LangChain workflow sequencing, Cosmos DB audit trail, API vault credentials, and a data layer (`Startup_Nishith Sahu_20260603.md:69-72`).
- Taoufik Arif/J&J: the company has a "full data lake for entire supply chain" that is "SOX compliant" and supports enterprise AI workflows (`Enterprise_Taoufik Arif - 20260611.md:517`).
- Taoufik Arif/J&J: the data lake is fed from different systems and becomes the source "for all analytics and AI for all functions" (`Enterprise_Taoufik Arif - 20260611.md:564-566`).

**Do not overstate as:** All large organizations have solved semantic-layer consistency. The evidence supports a necessary infrastructure substrate, not complete semantic governance.

#### Formal Data / Context Quality, Freshness, And Metadata Governance

**Trait:** Large organizations treat data/context quality, metadata, freshness, and ownership as a governed infrastructure problem.

**Why large-organization-specific:** Startups have context files and local memories, but the stronger enterprise evidence is about metadata repositories, quality scores, context ownership, and cross-source governance.

**Evidence:**

- Catalin Vieru/Google: data engineering teams "vouch for the quality score" and ingested data includes an "accuracy indicator" (`Startup_Catalin Vieru_20260512.md:399-402`).
- Dmitry Shkolnik: agents can use an "internal metadata repository" to discover the data they need (`Enterprise_Dmitry Shkolnik_20260611.md:620-622`).
- Dmitry Shkolnik: the organization is extending metric ownership to "context ownership" to maintain freshness and approve changes (`Enterprise_Dmitry Shkolnik_20260611.md:647-649`).

**Do not overstate as:** A mature solved process. Dmitry explicitly says the process is more formalized but "not perfect" (`Enterprise_Dmitry Shkolnik_20260611.md:630-633`).

## 2. Harness / Architecture

### Startup / Scale-Up-Specific

#### Reusable Agent-Factory / Runtime Pattern

**Trait:** Startups/scale-ups are more likely to describe a reusable agent runtime or factory that can spin up many task-specific workflows, rather than only deploying isolated assistants.

**Why startup-specific:** The strongest examples are startup/scale-up builders treating agent creation itself as a product or platform capability.

**Evidence:**

- Alec Dickinson: "600 pipelines" and when a new case appears, "the factory builds the new pipelines" (`Startup_Alec Dickinson_20260508.md:248-250`).
- Michael Bernstein: the team built a framework to "quickly spin up new agents" with multi-stage workflows and YAML agents (`Startup_Michael Bernstein Follow Up_20260521.md:110-113`).
- Michael Bernstein: the investment is justified because they expect "hundreds to thousands of agents" for customers (`Startup_Michael Bernstein Follow Up_20260521.md:119`).

**Do not overstate as:** Fully autonomous self-improvement across the corpus. Alec is the strongest "agents build agents" source; Michael supports reusable runtime more than recursive autonomy.

#### Repo-Local Context As An Active Harness

**Trait:** Startup/scale-up harnesses often place instructions, context, and skills near the work, then update that context through the code/PR loop.

**Why startup-specific:** The startup evidence is operational and concrete: repo/subfolder context controls behavior, and context updates are reviewed like code. Enterprise evidence also has repositories, but more often frames context as centralized infrastructure and ownership.

**Evidence:**

- Mahesh: context can live at the "subfolder level within a repo" so agents follow local instructions (`Startup_Mahesh_20260522.md:333-335`).
- Mahesh: if missing context caused failure, teams should "go update the files" so the same failure does not repeat (`Startup_Mahesh_20260522.md:337-339`).
- Mahesh: context is version controlled and checked in with code changes, so reviewers can review code and context together (`Startup_Mahesh_20260522.md:371`).
- Kunal Datta: a `Claude.md` file in GitHub is referenced before frontend changes, and the designer maintains it (`Startup_Kunal Datta_20260511.md:268-269`).

**Do not overstate as:** Markdown/context repositories in general. Dmitry also describes GitHub markdown repositories in a large organization, so the exclusive trait is the repo-local active harness loop, not the file format.

### Large-Organization-Specific

#### Agents Embedded Into Fragmented Enterprise System Landscapes

**Trait:** Large-organization architecture is dominated by integrating agents into existing systems of record and vendor landscapes, rather than replacing the landscape outright.

**Why large-organization-specific:** The evidence is about Fortune 500/vendor system fragmentation, SAP/ERP/MES/CRM coexistence, and the need to orchestrate across heterogeneous vendor agents.

**Evidence:**

- Pat Sheth: Fortune 500 systems from Microsoft, Adobe, Salesforce, and Oracle "don't talk to each other," and their agents "speak a very different language" (`Enterprise_Pat Sheth_20260609.md:301-305`).
- Taoufik Arif/J&J: the workflow uses the latest contracts stored across databases and applies pricing/conditions before release (`Enterprise_Taoufik Arif - 20260611.md:145-149`).
- Taoufik Arif/J&J: agents are "embedded in the workflow" and currently do not orchestrate across all systems end to end (`Enterprise_Taoufik Arif - 20260611.md:491-499`).

**Do not overstate as:** Enterprises never build agent runtimes. Kal/JPMC is a counterexample with a sophisticated internal SDK.

#### Shared Data / Context Infrastructure With Domain-Specific Workflow Ownership

**Trait:** Large organizations centralize parts of the data/context infrastructure, while workflow design and context ownership remain tied to domains, teams, and subject-matter owners.

**Why large-organization-specific:** This reflects the scale problem: shared infrastructure is valuable, but full workflow standardization breaks down across teams and functions.

**Evidence:**

- Dmitry Shkolnik: "Standardization of infrastructure makes sense" but standardizing workflows is "not always" enough because domains differ (`Enterprise_Dmitry Shkolnik_20260611.md:353-359`).
- Dmitry Shkolnik: a company with many data sources benefits from an internal metadata repository and skills that point agents to the right data (`Enterprise_Dmitry Shkolnik_20260611.md:620-622`).
- Dmitry Shkolnik: context ownership is emerging from metric ownership, with subject-matter experts maintaining freshness and approving changes (`Enterprise_Dmitry Shkolnik_20260611.md:647-649`).
- Taoufik Arif/J&J: the data lake is a shared source for analytics and AI across finance, planning, and other functions (`Enterprise_Taoufik Arif - 20260611.md:564-566`).

**Do not overstate as:** A solved centralized semantic layer. The enterprise pattern is central infrastructure plus domain-specific ownership, not universal harmonization.

## 3. Operating Capabilities

### Startup / Scale-Up-Specific

#### Senior Leaders Personally Work With AI / Ship Artifacts

**Trait:** In startup/scale-up settings, leadership adoption appears as leaders personally doing IC-style AI work and shipping artifacts.

**Evidence:**

- Kunal Datta: "every manager of the company is expected to actually IC with AI" (`Startup_Kunal Datta_20260511.md:780`).
- Kunal Datta: "every week I have to personally ship something to production into user's hands" (`Startup_Kunal Datta_20260511.md:782`).
- Tyler Malone: the CEO created workflows for slide decks and board reports (`Startup_Tyler Malone_20260520.md:51`).

**Do not overstate as:** A proven large-organization operating norm. The large-organization evidence is weaker and more about sponsorship/adoption than leader-as-IC behavior.

#### Expert Role Shifts Toward Orchestration / Review / Accountability

**Trait:** Expert work shifts from direct production toward orchestrating, reviewing, and taking accountability for agent work.

**Evidence:**

- Daniel Guzman: "the role of engineer is more like an orchestrator" (`Startup_Daniel Guzman_20260522.md:146`).
- Kunal Datta: the expert becomes "more of like a reviewer or like a manager" (`Startup_Kunal Datta Follow Up_20260609.md:62`).
- Michael Bernstein: "you can't just let an agent go off and build a bunch of stuff" (`Startup_Michael Bernstein_20260512.md:354`).

**Do not overstate as:** Coding disappears. The trait is about expert judgment moving up the stack.

#### Accountability Determines Where Human Review Stays

**Trait:** Startups/scale-ups use accountable ownership as a practical rule for where human review remains.

**Evidence:**

- Alec Dickinson: the key question is "who's the responsible person here who's accountable for this" (`Startup_Alec Dickinson_20260508.md:308`).
- Alec Dickinson: people must be accountable "if something goes wrong" (`Startup_Alec Dickinson_20260508.md:309`).
- Michael Bernstein: people own anything they commit as their work, whether agent-assisted or not (`Startup_Michael Bernstein Follow Up_20260521.md:344`).

**Do not overstate as:** Large organizations lack accountability. Large organizations have HITL and governance, but this specific accountability-as-placement-rule is not yet supported by multiple large-organization sources.

#### Model / Task Routing And Cost-Awareness Shape AI Work

**Trait:** Startups/scale-ups show task-level model routing and cost-awareness in day-to-day AI work.

**Evidence:**

- Arnon: they use Haiku for huge databases "to save on tokens" (`Startup_Arnon_20260608.md:193`).
- Arnon: Opus is used at the beginning and review stages (`Startup_Arnon_20260608.md:314`).
- Alec Dickinson: each turn estimates time and token cost for a specific model (`Startup_Alec Dickinson_20260508.md:179-180`).

**Do not overstate as:** Enterprise token governance. Large organizations show budgeting and capacity controls, but less evidence of this task-level builder routing pattern.

### Large-Organization-Specific

#### Token Budgeting And Burn-Rate Control By Use Case

**Trait:** Large organizations apply token/capacity controls by use case, workflow, or enterprise allocation before value is fully proven at scale.

**Evidence:**

- Kal Gangavarapu/JPMC: AI economics and budgeting fall into three buckets (`Startup_Kal Gangavarapu_20260608.md:211`).
- Kal Gangavarapu/JPMC: the bank "proactively put the limits" before token spikes (`Startup_Kal Gangavarapu_20260608.md:218`).
- Nishith Sahu/Maersk: tokens are negotiated at the enterprise level and allocated to the agentic service (`Startup_Nishith Sahu_20260603.md:421`).
- Nishith Sahu/Maersk: the system limits tokens to onboarded case types to keep burn rate limited (`Startup_Nishith Sahu_20260603.md:423-425`).

**Do not overstate as:** Seniority-tier token limits or manager-approved upgrades. Those claims remain unverified.

## Explicitly Excluded From The Main Classification

These traits may be real, but they should not appear as startup-only or large-organization-only in a strict slide/table because the evidence is either both-sided, mono-source, or not specific enough.

| Trait | Why excluded |
|---|---|
| Generic MCP / API / connector adoption | Both-sided and already captured under integration/orchestration. |
| Access, credentials, and permissioning | Both-sided: startups show governed internal access; large organizations show identity, access control, API vaults, and agent governance. |
| Generic context repositories / markdown | Both-sided. The exclusive split is repo-local active harness for startups vs. central data/context governance for large organizations. |
| Specialized agents / many small agents | Both-sided. Startups show it strongly; large organizations also show multiple agents and orchestrated enterprise workflows. |
| AI review before human review | Both-sided. Strong startup evidence, but large organizations also use bot PR review and compliance/approval layers. |
| Compliance / HITL gates | Both-sided. Present in startup fintech/KYB and enterprise marketing/manufacturing. |
| Model version control / runtime stability | Strong but effectively mono-source in Amrish; do not classify by org type yet. |
| Source-system load, API rate limits, latency routing | Strong Nishith/Maersk evidence, but not enough second source to promote as large-organization-specific. |
| Agents that build agents / self-improving factory | Alec is strong, but this is still too close to mono-source for strict classification. |
| Temporal durable execution | Michael Bernstein only. Keep as a platform example, not an org-type trait. |
| Context graph with property/guest IDs | Arnon only. |
| On-prem / edge robotics / physical AI | Taoufik only as a standalone claim; use only as supporting evidence for private/edge/sovereign deployment. |
| Centralized semantic layer | Important framework trait, but mainly expert-supported here and not cleanly classified by org type. |
| Non-engineers producing production-grade tools/code under review | Both-sided under the stricter operating-capability quote check. |
| Role shift rather than pure elimination | Both-sided. |
| AI proficiency as threshold for performance/hiring | Both-sided. |
| Peer workflow sharing and reuse | Both-sided. |
| Customer trust / external-risk boundaries preserving human touchpoints | Both-sided. |
| Future-proof role evaluation before opening a req | Pat-only; do not promote despite being a strong enterprise signal. |
| Ring-fenced experimentation budget | Cullen-only; do not promote. |

## Do Not Use Without Re-Sourcing

- Charles Barton: AI Doctor meetings, token tiers, experimentation budget, design team coding, error replication.
- Amrish Macedo: manager weekly shipping, domain knowledge replaced by a brain, daily brain cleanup/refresh, helping-others-scale promotion.
- Catalin Vieru: hallucination-detection hiring or coding-is-commodity hiring.
- Mitchell Fierro: personal AI subscription as hiring signal.
- Pat Sheth: lighter review on existing templates vs. full review for new external formats.
