# Platform / Architecture — Insights Review

For each sub-dimension: insights already in the framework, then what the interviews add. New insights sorted by number of occurrences.

Framework coverage note from interview mapping: Context management, Agent design, Workflow & task design, and Risk management are strongly covered. Orchestration is moderate. Learning systems is the weakest — most firms describe feedback loops conceptually but few have closed, instrumented pipelines.

---

## 1. Context Management

**Already in the framework:**
- Monorepo or centralized documentation as context layer
- Context co-located with code (design docs never deleted)
- Context scoped per agent to limit noise
- Human curation of context layer
- Context freshness maintenance

---

**Tribal knowledge capture as the deepest unsolved problem** | n=3–4

Multiple firms name the same gap: the implicit, contextual judgment that lives in experienced people cannot be encoded into the context layer. This is distinct from documentation — it's the undocumented "why" behind decisions. Nobody has solved it.

- "Something we're really thinking about — tribal knowledge is an unresolved gap. Context ownership is the next step to address." (Interviewee — Infrastructure)
- "The AI is pretty good at correlating given what has worked or hasn't worked, but what it's not looking for is intent." (Interviewee — Meta)
- "Intent not captured = main source of errors — e.g. dev accidentally changing another page." (Interviewee — Unit 21)
- "People with subject matter expertise who approve changes and maintain freshness." (Interviewee — large tech co)

---

**Markdown as the universal context format** | n=4–5

Compressing all operational knowledge into structured markdown is a widely adopted practice — explicitly to optimize context windows and ensure agents can read it. A practical engineering choice that has converged across very different architectures.

- "Compression into structured markdown to optimize context windows. Cross-agent memorization. Reduce noise so as not to compromise context windows." (Interviewee — AI Factory)
- "Internal functional documentation migrated to Mintlify for agent access. Internal skills in markdown — how we do things, architecture." (Interviewee — Core SaaS)
- "Context stores = GitHub repos of markdown files." (Interviewee — large tech co)
- "Monorepo with co-located docs. Documentation co-located with code = current state." (Interviewee — Markup AI)

---

**Context isolation per use case as a security primitive** | n=3–4

Deliberately separating context per workflow is not just about relevance — it's a data security design choice. Mixing contexts across use cases creates both data leakage risk and compliance exposure.

- "Context isolated by use case — legal security." (Interviewee — Fetch Rewards)
- "Predefined bounding box for customer-facing agents — language and category limits. Each agent has a delimited context perimeter." (Interviewee — digital commerce)
- "Internal APIs with write access are engineering-owned; non-engineers receive permissioned, read-oriented access and controlled API calls for approved actions." (Interviewee — Infrastructure)

---

**Semantic layer as the real frontier differentiator** | n=1 expert + implied by ~3

A centralized semantic layer — single canonical definitions of key business concepts (revenue, utilization, etc.) available across all agents — is what distinguishes frontier firms from advanced-but-fragmented ones. Conway's Law is the primary barrier: business logic scattered across DB, BI tools, and reports resists centralization.

- "A frontier firm actually has accomplished a centralized semantic layer — because that tends to be harder than everyone agrees it's a thing you should do." (Interviewee — Expert)
- "The problem is business logic scattered across multiple layers — you can't have a single definition of revenue without first resolving that." (Interviewee — Expert)
- Maersk dedicated Azure Data Lake as a step toward this (Interviewee — Maersk — partial)

---

**Context graph architecture for cross-agent data linking** | n=1–2

Binding context to entity IDs (e.g., property ID + guest ID) so that any agent working on that entity has consistent, linked data regardless of which agent is running. An alternative to shared global context.

- "Context graph with property ID and guest ID to link data — scrappy but intentional." (Interviewee — Arbio)
- "Every agent has its own API token — context scoped by project, not globally shared." (Interviewee — Core SaaS)

---

## 2. Agent Design

**Already in the framework:**
- Hierarchical orchestration: orchestrator + specialized sub-agents
- Agent registries and skill libraries
- Predetermined vs. dynamic routing
- Sub-agent delegation
- Agent sandboxing / isolated execution

---

**Composability over capability — many small agents beat one large one** | n=4–5

The dominant design pattern is not building one capable generalist agent, but composing many small, specialized agents. This improves traceability, makes debugging possible, and limits blast radius when an agent fails.

- "Pipeline of 600+ agents. Specialized agents by task: OCR, extraction, calculation, communication." (Interviewee — AI Factory)
- "Sentry → triage agent → coding agent → PR review agent — 3 sequential specialized agents." (Interviewee — Core SaaS)
- "Ingestion agent + document processor agent. Funnel agent + hurdle agent + model agent." (Interviewee — digital commerce)
- "Sub-agents are very specific SQL or more generic outage search — variable granularity depending on the task." (Interviewee — Google Cloud)
- "Activities + workflows + sub-workflows. Agents in parallel for review — 6-7 simultaneously." (Interviewee — Markup AI)

---

**Judge agents as quality filters before human or downstream layer** | n=2–3

Dedicated agents whose sole function is to assess output quality — not to produce content but to evaluate it. They filter before the output reaches a human reviewer or triggers an action, reducing the burden on the human layer.

- "'Judge agents' for quality filtering before reaching humans." (Interviewee — Fetch Rewards)
- "Multi-model review: Claude writes → Codex reviews → Claude fresh review. LLM issues resolved first, then human pass." (Interviewee — Markup AI)
- "Haiku screens → if complex, Opus reviews → handoff skill → next agent." (Interviewee — Arbio)

---

**Agents that build other agents** | n=1–2

The most advanced architecture: agents that generate new workflows, write PRDs, produce code, and deploy other agents. A self-improving recursive architecture. Currently only one firm in the corpus has fully implemented this.

- "User feedback ingestion → auto-generated backlog → PRD → code → deployment, all orchestrated. Agents that build other agents." (Interviewee — AI Factory)
- "For every PR, the skill library is updated. The agent uses the new skill on the next run." (Interviewee — Core SaaS — partial)

---

**Deprecated skill redirection as workflow debt management** | n=1

When a skill is replaced, the old one contains a redirect instruction so that agents using the outdated skill self-correct. A specific engineering pattern for managing skill version drift that is poorly documented elsewhere.

- "I deprecated the old skill by noting within it that the agent needs to use this skill now. If it tried to pick up the deprecated skill, it would redirect itself to the other one. And that's worked fantastic." (Interviewee — Satiri)

---

**Risk-tiered auto-merge to calibrate human review burden** | n=1–2

Classifying agent-generated outputs (PRs, decisions) as low/medium/high risk to determine which require human review. Low-risk outputs are auto-merged; higher-risk ones go through review. Progressive autonomy without a blanket policy.

- "Hard task: categorize issues into low risk, mid risk, high risk. For low risk, we should be able to trust the judgment of the agents." (Interviewee — Core SaaS)
- "Existing templates are faster/cheaper to execute; campaigns still go through compliance and human approval." (Interviewee — Enterprise tech — corrected)

---

## 3. Workflow & Task Design

**Already in the framework:**
- plan.md / structured task decomposition before execution
- Bounded tasks with clear acceptance criteria
- Advisor / executor / reviewer role split
- Isolated repo per task

---

**SOPs as the direct input to workflow design** | n=2–3

Existing Standard Operating Procedures become the literal blueprint for agentic workflow sequencing. AI doesn't replace the SOP — it executes it. This is a critical insight for enterprise adoption: the knowledge already exists, it just needs to be made machine-readable.

- "SOPs = basis of the LangChain logic. SOP changes trigger pipeline updates." (Interviewee — Maersk)
- "Brief standardization as the prerequisite — the quality of the brief determines the quality of the output." (Interviewee — Enterprise tech)
- "Very defined system prompt by PM = strong contextual constraint for reliability." (Interviewee — C3 AI)

---

**Parallelization of non-sequential steps as a workflow redesign principle** | n=2–3

When workflows are redesigned for AI, sequential dependencies are challenged. Steps that were sequential for human coordination reasons (one team finishes, then the next starts) can run in parallel when agents handle each.

- "Brand compliance + legal compliance review run in parallel rather than sequentially." (Interviewee — Enterprise tech)
- "Parallelization: 6-7 simultaneous agent reviews of the same PR." (Interviewee — Markup AI)
- "4 layers: presentation, LLM orchestration, data, APIs — designed to run concurrently." (Interviewee — Maersk)

---

**Design doc before large PR as lightweight HITL** | n=1–2

Sending a brief plan document before submitting a large cross-team PR functions as a social and technical checkpoint — humans review intent before agents execute. A low-friction gate that doesn't require a formal approval system.

- "200-line plan doc rather than a 1500-line PR — the extent of the change determines what kind of prior engagement they need." (Interviewee — Databricks)
- "Cleanup skill before each commit — self-review as a design pattern." (Interviewee — Markup AI)

---

**"Cleanup skill" before commit as agent self-review** | n=1–2

Agents run a review skill on their own output before submitting — checking for quality, formatting, or correctness against the task spec. Self-review as a built-in step, not an afterthought.

- "Cleanup skill before each commit — finds errors 30% of the time." (Interviewee — Markup AI)
- "Self-verification: 'check against original requirement' — finds errors 30% of the time." (Interviewee — AI apps for manufacturers)

---

## 4. Orchestration

**Already in the framework:**
- Dynamic vs. deterministic routing
- Model routing by task type
- Long-lived workflow support

---

**MCP as the connectivity layer replacing ad hoc integrations** | n=4–5

Model Context Protocol has emerged as the standard for connecting agents to external systems — replacing Zapier, custom webhooks, and one-off integrations. Multiple firms name MCP as the change that "unlocks everything." The shift is recent (2025) and fast.

- "The MCP revolution — everybody has now essentially developed their own interfaces to extract and push data to their tools using an AI tool. That's the thing that really unlocks a lot of this stuff." (Interviewee — Fetch Rewards)
- "MCP server → Salesforce. MCP replacing Zapier." (Interviewee — Satiri)
- "Custom internal platform = centralized MCP connections (Salesforce, Zendesk, Datadog, internal APIs, Google Drive, S3)." (Interviewee — Infrastructure)
- "MCPs, connectors, skills — all orchestrated." (Interviewee — AI Factory)

---

**Master-only routing — no direct agent-to-agent communication** | n=3–4

Frontier firms deliberately route all inter-agent communication through the master agent, not directly between sub-agents. This is a design choice for control and traceability, not a technical limitation. An agent mesh is rejected in favor of a hub.

- "No direct agent-to-agent communication — everything routes back to master." (Interviewee — digital commerce)
- "Sub-agents return to the main agent which synthesizes." (Interviewee — Google Cloud)
- "Master agent → sub-agents. Control = perceived value superior to efficiency of a mesh." (Multiple interviewees)

---

**Temporal / durable execution for long-lived agentic workflows** | n=1 explicit

Temporal provides durable execution: retry logic, state persistence, and multi-stage workflow composition. The transcript support here comes from Michael Bernstein's implemented Temporal workflows and Aaron White's expert discussion of durable execution frameworks; do not treat external OpenAI/Anthropic usage as interview-verified.

- "Temporal = durable orchestrator. Activities + workflows + sub-workflows. Long-lived workflows: duration hours to days. Retry logic. This is how you build agents that don't lose state." (Interviewee — Markup AI)

---

**LangChain for step sequencing in enterprise deployments** | n=2–3

LangChain functions as the practical enterprise orchestration layer — defining step sequences, managing API calls, and updating pipelines when SOPs change. Not the frontier choice (Temporal is more sophisticated) but the dominant enterprise adoption pattern.

- "LangChain = step sequencing. SOP changes = trigger for LangChain pipeline update." (Interviewee — Maersk)
- "LangGraph for managing state across multi-step agentic workflows." (Interviewee — JPMorgan)

---

**4-layer enterprise reference architecture** | n=1 clear, ~2 similar

A structured architectural pattern for enterprise-scale agent deployment: (1) presentation layer, (2) LLM orchestration, (3) dedicated data layer, (4) backend system APIs. Designed for low latency, auditability, and system isolation.

- "4 layers: presentation (Salesforce Service Cloud) → LLM orchestration (Azure API management, LangChain, Cosmos DB) → data layer (dedicated Azure Data Lake) → APIs from 15+ systems." (Interviewee — Maersk)

---

## 5. Risk Management

**Already in the framework:**
- Audit trail on all agent actions
- Read-only database access as default
- AI Council / formal governance committee
- Bounding box for customer-facing agents
- Context isolation per use case
- Multi-stage human review pipeline

---

**Risk classification of outputs to determine review requirements** | n=3–4

A systematic framework — not ad hoc judgment — for deciding when human review is required. PRs, outputs, or decisions are classified by risk level; the classification determines the review gate. This operationalizes the HITL decision rather than leaving it to individual discretion.

- "Low risk, mid risk, high risk classification — for low risk, trust the agent's judgment." (Interviewee — Core SaaS)
- "Existing templates are faster/cheaper to execute; campaigns still go through compliance and human approval." (Interviewee — Enterprise tech — corrected)
- "Internal APIs with write access are engineering-owned; non-engineers receive permissioned, read-oriented access and controlled calls." (Interviewee — Infrastructure)
- "Final human validation maintained for compliance; but compliance team now just approves rather than reviews substantively." (Interviewee — digital commerce)

---

**RLHF / human-feedback learning loops are mostly prospective** | n=1–2 mentioned, 0 clearly implemented

Human feedback is discussed as a way to improve agent behavior, but the transcripts checked do not show a mature, implemented RLHF pipeline. Treat this as an emerging design direction, not an observed closed-loop practice.

- "We have not gone to the RLHF or RL parts of it yet... this is a precursor." (Interviewee — digital commerce)
- Human approvals and comments could feed reinforcement learning with human feedback and capture decision rationale. (Interviewee — AI Factory)

---

**API vault — credentials isolated from agent context** | n=1–2

Credentials are stored in a dedicated secure vault that agents can call, rather than being embedded in the agent's context. This prevents credential exposure in logs, prompts, or outputs.

- "API vault = secured credentials. Agents call the vault, not the raw credential." (Interviewee — Maersk)
- "Agents have API tokens per use case, not shared credentials." (Interviewee — Core SaaS — partial)

---

**Random post-audit sampling as statistical QA** | n=1–2

Rather than reviewing all agent outputs (impractical at scale) or reviewing nothing (unsafe), some firms audit a random sample post-resolution. This is a risk management design pattern borrowed from financial audit practice.

- "Random post-audit on onboarding — statistical QA, not full review." (Interviewee — digital commerce)
- "Automatic backtests over time after algorithmic changes deployed." (Interviewee — Meta — similar logic)

---

**On-premise deployment for data sovereignty** | n=1–2

For regulated data (ITAR, manufacturing IP, financial data), cloud deployment is not an option. On-premise LLM infrastructure — specifically NVIDIA hardware — is the architecture for these cases.

- "On-premise NVIDIA for data privacy — ITAR and manufacturing regulatory compliance." (Interviewee — J&J)
- "European regulatory restrictions — data sovereignty limits which models can be used." (Interviewee — JPMorgan)

---

## 6. Learning Systems

**Already in the framework:**
- Fix → skill feedback loop (merged PR updates context layer)
- Postmortem → context loop
- Systematic evaluation datasets

---

**Self-improving compounding — the worst version is always the first** | n=2–3

Frontier firms describe their agent systems as self-improving over time: each iteration learns from the last, and the improvement rate compounds. This is fundamentally different from a static deployment. It also reframes ROI: the value is not in the first version, it's in the trajectory.

- "It's not just that you build one process that is 100 times better. It's that that process, once in place, that's the worst version of that process that you will ever have." (Interviewee — AI Factory)
- "The agent factory compounds learning — each run is better than the last." (Interviewee — AI Factory)
- "Agents improve as skills accumulate — the first skill set is always the worst." (Interviewee — Satiri — implied)

---

**Skills marketplace with network effects** | n=2–3

When agents or team members share successful workflows in an internal marketplace, high-quality workflows get more usage, generate more context, and improve further. The feedback loop is organic, not managed.

- "Virtuous cycle: best workflows adopted → more context → better workflows. Network effects through internal marketplace." (Interviewee — large tech co)
- "Bottom-up: principal engineer builds, shares to organization. Encourages others to follow." (Interviewee — Satiri)
- "Bottom-up: each team builds its own workflows — adoption = grassroots." (Interviewee — Databricks)

---

**SOP corrections closing the learning loop in enterprise pipelines** | n=1–2

When a human corrects an agent resolution, that correction flows back into the SOP, which then updates the orchestration pipeline. A concrete closed-loop learning mechanism for enterprise agentic systems.

- "Structured feedback loop: human corrections → SOP update → LangChain pipeline update." (Interviewee — Maersk)
- "Context ownership + validation for context updates — changes approved before pushed." (Interviewee — large tech co)

---

**PR velocity as a practical individual-level AI leverage proxy** | n=2

In the absence of formal telemetry, tracking PRs/day or week-over-week is the most available proxy for individual AI leverage. Simple, accessible, and already exists in existing engineering tooling.

- "PR velocity — Claude analyzes commits and gives a personal week-over-week comparison." (Interviewee — Satiri)
- "5 PRs/day vs. 1-3 PRs/week before AI — the only metric consistently tracked." (Interviewee — AI startup)

---

**Design docs as archived decision history** | n=1–2

Design documents are never deleted — they form a permanent archive of the "why" behind past decisions, available to future agents as context. A specific curation policy with compounding value over time.

- "Design docs = decision history. Never deleted. Available as context for future agents. Greenfield = deliberate choice of clear structure from the start." (Interviewee — Markup AI)

---

## Summary

| Sub-dimension | Insight | n |
|---|---|---|
| Context management | Tribal knowledge = unsolved gap | 3–4 |
| Context management | Markdown as universal context format | 4–5 |
| Context management | Context isolation as security primitive | 3–4 |
| Context management | Semantic layer as frontier differentiator | 1 expert +3 implied |
| Context management | Context graph for cross-agent data linking | 1–2 |
| Agent design | Composability — many small agents beat one large | 4–5 |
| Agent design | Judge agents as quality filters | 2–3 |
| Agent design | Agents that build other agents | 1–2 |
| Agent design | Deprecated skill redirection | 1 |
| Agent design | Risk-tiered auto-merge | 1–2 |
| Workflow & task design | SOPs as direct input to workflow design | 2–3 |
| Workflow & task design | Parallelization of non-sequential steps | 2–3 |
| Workflow & task design | Design doc before PR as lightweight HITL | 1–2 |
| Workflow & task design | Cleanup skill / agent self-review | 1–2 |
| Orchestration | MCP replacing ad hoc integrations | 4–5 |
| Orchestration | Master-only routing — no agent-to-agent comms | 3–4 |
| Orchestration | Temporal for durable long-lived workflows | 1 |
| Orchestration | LangChain for enterprise step sequencing | 2–3 |
| Orchestration | 4-layer enterprise reference architecture | 1–2 |
| Risk management | Risk classification to calibrate review burden | 3–4 |
| Risk management | RLHF / human-feedback learning loops are mostly prospective | 1–2 mentioned, 0 clearly implemented |
| Risk management | API vault for credential isolation | 1–2 |
| Risk management | Random post-audit sampling | 1–2 |
| Risk management | On-premise deployment for data sovereignty | 1–2 |
| Learning systems | Self-improving compounding — worst version is first | 2–3 |
| Learning systems | Skills marketplace with network effects | 2–3 |
| Learning systems | SOP corrections close the enterprise learning loop | 1–2 |
| Learning systems | PR velocity as AI leverage proxy | 2 |
| Learning systems | Design docs as archived decision history | 1–2 |
