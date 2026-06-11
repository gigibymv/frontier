# Frontier Firms — Interview Synthesis Report
## Microsoft / Keystone × Marco Iansiti Project
### 25 interviews | May–June 2026

---

## STEP 2 — Identified Dimensions

After reading all 25 interviews, 13 recurring dimensions structure the conversations:

| # | Dimension | Description |
|---|-----------|-------------|
| D1 | **Focal workflow & sector** | Which process was transformed, in which industry |
| D2 | **Agentic architecture** | Orchestration, sub-agents, predetermined vs. dynamic |
| D3 | **Technical stack & models** | LLMs used, tools, infra (cloud, Bedrock, LangChain…) |
| D4 | **Context & data management** | How context is built, maintained, shared between agents |
| D5 | **Human-in-the-loop (HITL)** | Where humans intervene, why, and how this evolves |
| D6 | **Guardrails & governance** | Security, compliance, access limits, AI council, rules |
| D7 | **Value measurement & metrics** | KPIs, savings, time-to-value, precision, conversion |
| D8 | **Organizational changes & roles** | How roles have evolved or merged |
| D9 | **Change management & culture** | Adoption, resistance, top-down vs. bottom-up |
| D10 | **Maturity & evolution stage** | Where the company stands: assist → native → autonomous |
| D11 | **Token economics & costs** | Token budgets, monitoring, model trade-offs |
| D12 | **Hiring & talent** | Recruiting criteria, AI-first profile |
| D13 | **Vision & future horizons** | What is anticipated, what blocks, what is missing |

---

## STEP 3 — Structured Interview Profiles

---

### Aditya Nemmaluri | Startup | May 27, 2026
**Sector/Context:** Digital commerce platform (fintech/e-commerce, partner–end-customer marketplace)
**Interviewee:** VP Engineering (responsible for product engineering + security + AI governance)

**D1 — Focal workflow:** Two workflows: (1) fully agentized partner KYB onboarding; (2) dynamic customer funnel personalized in real time (screen generation by LLM).

**D2 — Agentic architecture:** Hierarchical orchestration (master agent → sub-agents). Ingestion agent + document processor agent for KYB. Funnel agent orchestrating a hurdle agent (fraud detection) + model agent (conversion prediction). No direct agent-to-agent communication: everything routes back to master. Predetermined chains for inventory, dynamic for compliance.

**D3 — Technical stack:** LLMs unspecified ("post-December 2025" as quality reference). Bedrock implicit. Internal compliance workbench. Prompting without heavy fine-tuning since early 2026.

**D4 — Context & data:** Operational context: partner data, jurisdiction, customer history, marketing channel, fraud history. Predefined bounding box for customer-facing agents (language and category limits). Each agent has a delimited context perimeter.

**D5 — HITL:** Final human validation on KYB (regulatory requirements). Compliance team approves after agent recommendation. Random post-audit on onboarding. "Before December 2025, agent errors were frequent; today the compliance team just approves."

**D6 — Guardrails:** AI governance committee created by Adi. Bounding box on customer-facing agents. Regulatory HITL (NY, CO — strict laws on automated KYC). Post-audit sampling.

**D7 — Measurement:** Target onboarding SLA: 5 min (vs 1h with current human HITL). Primary metric: conversion. Funnel agent objective: max conversion / min fraud.

**D8 — Roles:** Compliance team reduced to final validation. Ops team supervised by agents for inventory. Adi = informal "AI czar."

**D9 — Culture:** Multi-quarter journey to convince skeptical leaders. Targeted POCs. Internal evangelization with expert guests.

**D10 — Maturity:** "Crawl-walk-run: we're in walk." AI-assisted → AI-native transition accomplished on KYB and funnel. Agentic commerce underway — customer adoption still too low (distrust around bank cards).

**D11 — Token economics:** Not explicitly addressed.

**D12 — Hiring:** Not addressed.

**D13 — Vision:** Agentic commerce: NPC agents in-game making autonomous purchases. "Customers not yet ready to hand their card to an agent." Estimated 1-year lag. Image fingerprinting for license management.

**Key quote:** "Pre-December 2025, we used to have a lot of issues with agents... Post-February 2026, our compliance teams don't really have to do anything other than just looking at it and saying things are all good."

**Strong signal:** Clear pre/post-December 2025 distinction as agent quality threshold. Hierarchical master→subs architecture deliberately chosen for control. Very advanced agentic commerce vision, but customer adoption = main barrier.

---

### Alec Dickinson | Startup | May 8, 2026
**Sector/Context:** AI Factory (generalist AI enablement) + customs/trade vertical in Latin America (Chile)
**Interviewee:** Founder (ex-product/dev 20+ years, current solo operator)

**D1 — Focal workflow:** End-to-end automation of the customs workflow: email ingestion with documents, extraction, tariff calculation, declaration report generation. Before: 2–5h of manual work. After: "one click."

**D2 — Agentic architecture:** Pipeline of 600+ agents orchestrated by an internal "factory." Specialized agents by task (OCR, extraction, calculation, communication). Agents that build other agents. User feedback ingestion → auto-generated backlog → PRD → code → deployment, all orchestrated.

**D3 — Technical stack:** Claude (primary), Claude co-work. MCPs, connectors, skills. AWS/VPN/API for system access. No generic LLMs in client production — specialized, controlled models for reliability.

**D4 — Context:** All operational internal documentation, customs laws, tariffs (scraped and kept current), client data. Compression into structured markdown to optimize context windows. Cross-agent memorization. "Reduce noise so as not to compromise context windows."

**D5 — HITL:** Human expert as last resort at critical steps. Weekly committee (founders) validates guardrails. "Who's accountable if something goes wrong" = criterion for placing a HITL.

**D6 — Guardrails:** HITL at critical points decided with domain experts. RLHF on human annotations. Guardrails co-designed with business experts. Explicit anti-Terminator stance: "I want humans to remain responsible for risky decisions."

**D7 — Measurement:** 5h → 1 click = infinite value. 99.9% accuracy targeted. Reduction in time-to-value as primary metric. Cost and ETA estimated per generation turn.

**D8 — Roles:** Alec = sole operator, no team. "I don't have a team and I don't plan on hiring one." Agents handle design, code, QA, deployment.

**D9 — Culture:** Top-down mandatory for companies. No longer runs boot camps — the product speaks for itself. Mono-vertical focus (customs agencies) rather than diversification.

**D10 — Maturity:** Maximum frontier. 1 human = 1 factory of 600+ agents. Self-improving machine. "The worst version of that process you will ever have is the first one."

**D11 — Token economics:** Cost and ETA estimated at each turn. "Token cost vs. time to generate" comparison as feedback loop.

**D12 — Hiring:** N/A — no team.

**D13 — Vision:** Agents that build agents. Product in Latin America first (customs → insurance → logistics). Scale through compounded learning effects.

**Key quote:** "It's not just that you build one process that is 100 times better. It's that that process, once in place, that's the worst version of that process that you will ever have."

**Strong signal:** Most extreme case in the corpus — 1 human + agent factory. Radical composability approach where agents build other agents. Conviction that the product must be hyper-vertical so that culture is no longer a barrier.

---

### Amrish Macedo | Startup | May 20, 2026
**Sector/Context:** Two companies: (1) Offender monitoring (gov/parole, 20K devices, 2TB/day); (2) 6-person firm building AI apps for manufacturers (PE-backed companies)
**Interviewee:** CTO / operator

**D1 — Focal workflow:** (Company 1) Meeting pipeline → PM/BA requirements extraction → test cases → development. (Company 2) Discovery → prototyping → statement of work → delivery for manufacturers (e.g. supplier order management for a forklift producer, saving $3.5M/month).

**D2 — Agentic architecture:** Predetermined chain: transcription → role-specific models (PM/BA) → human approval → Jira → architecture review → test cases → dev. Small, specialized models (Llama via Hugging Face), no generic LLMs in client production.

**D3 — Technical stack:** AWS Bedrock (Llama, Titan, PDF models). No SaaS AI — versioned deployed models for stability. Jira, Linear, GitHub (controlled API calls). "Claude costs more tokens since 2 weeks" = SaaS stability problem.

**D4 — Context:** Role-specific system prompt (PM vs BA). Minimal operational context. Self-verification: "Check against original requirement" — finds errors 30% of the time.

**D5 — HITL:** PM approves tasks before Jira. BA validates the PRD. Architect validates data architecture. QA finalizes test cases. "Clear separation of code/LLM for Jira interfaces."

**D6 — Guardrails:** Specialized non-generic models to avoid unpredictable behaviors. Log everything. Read-only access preferred. "LLM sent an unsolicited email to 2 prospects" — example of risk.

**D7 — Measurement:** DB migration project: 2 years → 8 months. Forklift: $5M → $1.5M monthly losses. Headcount -2.

**D8 — Roles:** Reorganization into cross-functional teams (dev + QA + DevOps) instead of separate functions. Accelerates cycles.

**D9 — Culture:** Change management "non-trivial." 75% AI coding vs 25% six months ago. Manufacturing industries: 3-4 years to change a process — very risk-averse.

**D10 — Maturity:** Intermediate. "AI-assisted" well established internally. Client transformation underway. Convinced that mass AI adoption in the physical world will take 10-15 years (not 2-3).

**D11 — Token economics:** Bedrock = stable and predictable cost. Variability problem with SaaS LLMs = primary reason to avoid ChatGPT/Claude SaaS in production.

**D12 — Hiring:** Not explicitly addressed.

**D13 — Vision:** Inverted staffing (proactive vs. reactive talent inventory). Autonomous agents in client systems. But caution: "LLM = brilliant student with no wisdom or judgment."

**Key quote:** "Think of the AI as a college student who just graduated — they know everything about the world, but they have no experience, no wisdom, no judgment. And if you give them access to everything, the potential damage is very wrong."

**Strong signal:** Only interviewee to explicitly refuse SaaS LLMs in client production for version stability reasons. "Brilliant student with no wisdom" metaphor = useful conceptual frame. Lucid analysis of the slow pace of transformation in the physical world.

---

### Arnon | Startup | June 8, 2026
**Sector/Context:** Arbio — AI property management for short-term rentals (Airbnb, Booking.com)
**Interviewee:** Head of Product

**D1 — Focal workflow:** Voice AI for managing inbound calls (check-in status, payments) — first case with no HITL. Agentic review management (Claude Haiku for routine → Opus for conditional → human).

**D2 — Agentic architecture:** Reviews workflow: Haiku screens → if complex, Opus reviews → handoff skill (markdown) → next agent. Context graph architecture with property ID and guest ID to link data. Scrappy — little advanced HITL automation yet.

**D3 — Technical stack:** Claude Haiku (routine), Claude Opus (conditional). Voice AI (unnamed). Proprietary context graph. Markdown as exchange format between agents.

**D4 — Context:** Property database (address, price, amenities, cleaning providers). Guest data (history, preferences). Bound to IDs for consistency. Context graph to link cross-agent data.

**D5 — HITL:** Present but "very scrappy" — triggered manually based on unmatched parameters. Vision: automate HITL triggering on parameters.

**D6 — Guardrails:** Not formalized. "Still very scrappy."

**D7 — Measurement:** Inbound calls = 0 HITL = primary metric. Reviews handled at volume. No quantified KPIs cited.

**D8 — Roles:** Reduction of human work on repetitive calls and reviews. Agents handle standard cases.

**D9 — Culture:** Criticism of the SaaS apocalypse — too many individual tools, not enough systemic integration. "I'd rather go to the supermarket than grow my own vegetables."

**D10 — Maturity:** Early stage. Context infrastructure (context layer) intentionally built. Operations still largely manual (the sector requires it — physical labor).

**D11 — Token economics:** Deliberate Haiku (routine) vs Opus (complex) choice to optimize costs.

**D12 — Hiring:** Not addressed.

**D13 — Vision:** Context layer as foundation. Pricing agents (Taylor Swift concert → 3x). Smart cleaning scheduling. Special requests handled end-to-end.

**Key quote:** "Short-term rentals is a very office-have type of business — you need a human to operate in the physical world. The one with the highest impact is the one where you don't need human in the loop."

**Strong signal:** Company at the digital/physical intersection — illustrates the natural limits of agentization in physical operations. Haiku/Opus choice as a cost/quality optimization pattern.

---

### Benjamin Jiang | Startup | May 26, 2026
**Sector/Context:** Meta (ex-Data Scientist) — video recommendation (Instagram/Facebook)
**Interviewee:** Data Scientist (ex-Meta, HBS program participant)

**D1 — Focal workflow:** Automation of parametric space exploration for video recommendation engines. AI iterates on experiments (A/B tests) without a human in the exploration loop.

**D2 — Agentic architecture:** Agent that reads the historical experiment library → generates new configurations → executes via Meta's experimentation platform → automatically evaluates → submits for human review if promising. Second step (automatic review) fails because AI lacks the human "intent" context.

**D3 — Technical stack:** Internal Meta models (ex-Avocado, renamed Spark). Codex (for code generation tied to experiments). Meta experimentation platform (Statsig-type). Access to latest Anthropic/OpenAI/Google versions.

**D4 — Context:** Historical experiment library = primary learning base. No successful human feedback return post-review — human context (undocumented intentions) cannot be transferred to AI.

**D5 — HITL:** Human receives the printout of metrics and code, assesses complexity + impact, then submits to unaffiliated team review. "If an AI was able to review this, they would have caught it the first time around."

**D6 — Guardrails:** Automatic backtests post-rollout. Write-up logged in the product changes system. Unaffiliated review as second look.

**D7 — Measurement:** Experimentation metrics (video engagement). Backtests over time. Qualitative comparison of successful vs. failed experiments.

**D8 — Roles:** Subject matter experts become "orienters" of AI rather than direct explorers of the parametric space. But remain critical for final judgment.

**D9 — Culture:** Wide adoption (experimentation platform covers the whole company). Differentiation: algorithm-side changes = less user risk than visible UX changes → more aggressive AI deployment there.

**D10 — Maturity:** Very advanced on automated exploration (back-end algo). Moderate on automatic review (current failure). Experimentation = mature infrastructure at Meta for a long time.

**D11 — Token economics:** Access to latest model versions. Unconstrained budget — quality priority.

**D12 — Hiring:** Not addressed.

**D13 — Vision:** Complete the feedback loop (automatic review). Expansion to other experiment types.

**Key quote:** "The AI is pretty good at correlating — given the range of possibilities and what has worked or hasn't worked — but what it's not looking for is intent."

**Strong signal:** Rare case of automated meta-learning at industrial scale (Meta). The distinction between back-end algo vs. visible UX as a criterion for automation aggressiveness is a practical heuristic not documented elsewhere.

---

### Catalin Vieru | Startup | May 12, 2026
**Sector/Context:** Google Cloud — Internal AI lead for team processes + external consulting
**Interviewee:** AI Lead (Google Cloud, integrated team)

**D1 — Focal workflow:** Go-to-market alignment and feature parity vs. competitors. Primary agent coordinating sub-agents to answer sales/product questions (customer data, outages, SQL queries, competitive comparisons).

**D2 — Agentic architecture:** Orchestrator agent ("thinking/planning/reasoning agent") → specialized sub-agents (very specific SQL, more generic outage search). Sub-agents return to the main agent which synthesizes. Variable granularity depending on the task.

**D3 — Technical stack:** Google Cloud (Workspace, Salesforce, SAP, ServiceNow, GitHub). 100+ external systems integrated. Gemini (implicit). Copilot mentioned negatively.

**D4 — Context:** "Everything": customer data, consumption metrics, outage history, competitive data. Critical curation: "reduce friction to information access without compromising security."

**D5 — HITL:** Not central in this workflow. Autonomous agent for factual queries. Human judgment on ambiguous queries.

**D6 — Guardrails:** Google Cloud governance (central group). Architectural recommendations from the Global CIO. Domain-level discretion for model choice (with justification).

**D7 — Measurement:** Force multiplier: "sales no longer need sales ops teams for compliance questions." Reduction of redundant interactions.

**D8 — Roles:** Sales and product roles more autonomous — less dependence on central support teams. Growing confusion in the face of agent proliferation.

**D9 — Culture:** "You need to go to the CEO and the board, not the FTE teams." Top-down adoption for large enterprises. Bottom-up for startups.

**D10 — Maturity:** Very advanced internally at Google. External advisory = helping companies understand it's possible, not just theoretical.

**D11 — Token economics:** Central Google infrastructure → economies of scale. Internal LLM Suite = ChatGPT-like + enterprise connectivity. No financial incentive to buy Claude co-work separately.

**D12 — Hiring:** Not addressed.

**D13 — Vision:** "The future of the web" = agents that navigate for you. End of human browsing. Personal agents with sub-agents for all tasks. "Consumers will soon have this kind of personal agent."

**Key quote:** "When you make a call to the primary agent, it doesn't know what to do, but there are sub-agents. They all get back to the main agent and it gives you the source and all kinds of things."

**Strong signal:** Rare perspective from inside Google Cloud. Distinction between coding (simple pattern) vs. complex coordination (hierarchical orchestration) as an architecture selection framework. "SaaS Apocalypse" mentioned — prediction that agents will replace individual SaaS tools.

---

### Charles Barton | Startup | May 7, 2026
**Sector/Context:** VP Product (Sana Commerce, ex-EGYM/Playlist Group) — B2B SaaS, R&D 150 people
**Interviewee:** VP Product & Technology

**D1 — Focal workflow:** AI-native product development lifecycle: research → prototyping → design → development → go-to-market. Complete transformation of the SDLC with autonomous "empowered teams" end-to-end.

**D2 — Agentic architecture:** No agentic orchestration described. Focus on individual tooling (Cursor, Claude Code) + team process. Concept of "empowered teams" (multidisciplinary teams with full mandate).

**D3 — Technical stack:** Cursor, Claude (enterprise), GitHub Copilot. LibreChat (internal system). AI design tools. No autonomous agent deployment mentioned.

**D4 — Context:** Information management at scale with 150 R&D staff. Each team has its own context.

**D5 — HITL:** Humans always own the product cycle. AI = accelerator, not decision-maker.

**D6 — Guardrails:** Corporate-level governance (not detailed).

**D7 — Measurement:** Portfolio planning cycle reduced (from 1 quarter to… less). Dev productivity multiplied. "5 product releases while a competitor is still doing their planning" (SAP allusion).

**D8 — Roles:** "Empowered teams": teams of 6-8 with product, engineering, design — all disciplines together. No functional silos. Engineers increasingly work through agents rather than coding manually. Earlier "design team coding" attribution is not transcript-verified.

**D9 — Culture:** Top-down necessary (CEO/board). Comparison: oil tanker (100K enterprise) vs. startup (speedboat). Culture created at the highest leadership level. Ex-Hybris/SAP: preserving startup culture inside a giant.

**D10 — Maturity:** Advanced at process/tooling level. Reflection on "do we need fewer engineers?" still open.

**D11 — Token economics:** AI budget = "experimentation budget" for teams. Not formalized into token monitoring.

**D12 — Hiring:** Not detailed.

**D13 — Vision:** AI "bigger than the industrial revolution, bigger than the internet." Imperative urgency to adopt at every level.

**Key quote:** "If the CEO of SAP says 'this is what we're going to do at every level of the company with 100,000 people' — right now their portfolio planning process takes 1 quarter. And in that 1 quarter, competitors are doing 5 different product releases."

**Strong signal:** Perspective from a senior VP Product (ex-SAP/EGYM) with 13 years of experience comparing adaptation speeds. The "empowered team" concept as the key organizational unit for AI-native. The sharpest startup vs. enterprise contrast in the corpus.

---

### Cullen Brown | Startup | June 1, 2026
**Sector/Context:** Fetch Rewards (rewards platform, 70M users) — Head of Legal + AI governance creator
**Interviewee:** Head of Legal / AI Council Lead

**D1 — Focal workflow:** Agentic customer support (Forethought), ML fraud (in-house), automated email prospecting (transactional data → personalized emails by brand), legal data mapping (Claude + Snowflake read-only), sweepstakes T&C generation.

**D2 — Agentic architecture:** Isolated agents per use case. "Judge agents" (quality filtering). Zapier (historical) → native MCP (current). Customer-facing agents with triage escalation to humans.

**D3 — Technical stack:** Claude (dominant, "outperforms OpenAI"), OpenAI (reduced), Forethought (support), Snowflake (read-only), Airtable, Zapier, Ironclad (contracts). Claude co-work (desktop).

**D4 — Context:** Transactional data without PII (FAST database). Legal context: PII classification, privacy guidelines, history of 100+ sweepstakes T&C. Read-only Snowflake access. Context isolated by use case (legal security).

**D5 — HITL:** Final human review on all critical outputs. Automatic triage → escalation → human for edge cases. Compliance team validates. Legal review of generated sweepstakes T&C.

**D6 — Guardrails:** AI Council (cross-functional: legal, IS, AI/ML team). "Rules of the Road for AI" document. Limited experimentation budget per team. Cases can be shut down by the Council. Data isolation by use case = fundamental rule.

**D7 — Measurement:** Sweepstakes T&C: 2-10h/week → 20 min/week. Support: automation of repetitive tickets (volume not quantified). Fraud team significantly reduced.

**D8 — Roles:** AI adaptiveness = performance criterion ("transformative" → "non-functioning"). AI "binary threshold" at hiring. Fraud team reduced. BDR reduced (automated prospecting).

**D9 — Culture:** CEO mandate: "AIFI anything and everything." AI council as moderator. Experimentation budget to explore without risk. Not "yes to everything" — unjustified cases shut down.

**D10 — Maturity:** Advanced but fragmented. Isolated workflows, no cross-agent orchestration. FAST database = well-designed centralized infrastructure. MCP replacing Zapier.

**D11 — Token economics:** Claude caps (hit). Enterprise OpenAI not exhausted. Transition to Claude = need to formalize token monitoring.

**D12 — Hiring:** AI proficiency = binary threshold (not a criterion among others). In-house legal experience required. "If you just say ChatGPT, that's nowhere near good enough."

**D13 — Vision:** MCP revolution = key to integration. Claude co-work > Custom GPT (native connectivity). Next: cross-agent orchestration, centralized monitoring.

**Key quote:** "The MCP revolution, where everybody has now essentially developed their own interfaces to extract and push data to their tools using an AI tool, is the thing that really unlocks a lot of this stuff."

**Strong signal:** Only lawyer in the corpus. Unique perspective on AI governance + privacy by design. FAST database = rare example of a data layer built from the start for AI without PII. MCP named as the key revolution for integrations.

---

### Daniel Guzman | Startup | May 22, 2026 + Follow-up June 1, 2026
**Sector/Context:** Core (SaaS for professional services teams, 8 years old) — Head of Engineering + Cursor AI Ambassador for Argentina
**Interviewee:** Head of Engineering

**D1 — Focal workflow:** (1) Bug-fixing agent: Sentry → triage → Cursor agent → automatic PR. (2) Email response agent for SMB customers. (3) Lead enrichment/prospecting for GTM team.

**D2 — Agentic architecture:** Sentry trigger → triage agent (context: Sentry trace + GitHub + internal MCP + Mintlify API docs) → PR generated in isolated repo → human review. Orchestrator agent for GTM. Separate repos per project.

**D3 — Technical stack:** Cursor (code), Claude Code, Cursor SDK, internal MCP server (all internal systems), Sentry, Grafana/Loki (monitoring), GitHub, Linear (PM), Mintlify (API docs), SendEx (emails). Claude = primary model.

**D4 — Context:** Internal functional documentation (migrated to Mintlify for agent access). Internal skills in markdown (how we do things, architecture). Public API documentation. "No human knowledge that an agent can't use."

**D5 — HITL:** Human review of PR before merge. No automatic deployment. Active monitoring of what agents do (iteration in progress).

**D6 — Guardrails:** Isolated repos per project. Each agent has its own API token (cost tracking). Low/mid/high risk classification planned to partially automate merge.

**D7 — Measurement:** Bug fixing: 1-2 day cycle → 1h. 60-70% time savings. Email agent: 1 person freed from a task. Cursor: 20-30% hands-on code time → 50-60%.

**D8 — Roles:** Engineers = reviewers more than coders. "Engineers making products end-to-end into production." Profile sought: strong "product sense" + accountability.

**D9 — Culture:** Bottom-up (engineers adopt Cursor naturally). Challenge: getting product/functional teams to contribute to documentation so agents work well.

**D10 — Maturity:** Advanced on engineering. Early stage on cross-functional (GTM, SMB support).

**D11 — Token economics:** API token per agent for tracking. Cursor/Claude dashboard for monitoring per use case.

**D12 — Hiring:** Looking for "product sense" + accountability. "Full-stack engineering + product ownership" as the new profile.

**D13 — Vision:** Auto-merge for low-risk PRs. Self-deploying agents. Replication of the bug-fixing pattern to other functions.

**Key quote:** "Right now we have a hard task: categorize these issues into low risk, mid risk, high risk. For low risk, we should be able to trust the judgment of the agents."

**Strong signal:** Only case where Cursor SDK is used to create a custom internal MCP connecting all systems. "Isolated repo per project + PR → human review" pattern = minimal but structured HITL model. Per API token monitoring = granular cost governance.

---

### Kal Gangavarapu | Startup | June 8, 2026
**Sector/Context:** JPMorgan Chase — AI & Data Products Lead (investment banking + corporate banking)
**Interviewee:** VP / AI Products Lead (embedded in the business)

**D1 — Focal workflow:** Client onboarding KYC/KYB: 4-6 weeks → 1 day. Full agentic orchestration of the document process, validation, risk scoring, multi-country.

**D2 — Agentic architecture:** Internal Smart SDK (JPM). Multi-step agentic orchestration: document ingestion → validation → risk identification → summaries for final human review. Internal LLM Suite (ChatGPT-like + perplexity + co-work features). 100-150 KYC staff reduced to reviewers of summaries.

**D3 — Technical stack:** Anthropic (Claude) — default choice requiring justification to deviate. Codex, GitHub Copilot, Winsurf, Claude Code (coding). Internal Smart SDK. JPM LLM Suite. LangGraph (for orchestration).

**D4 — Context:** Client KYC documents, multi-jurisdiction regulatory bases, sanctions and conflict of interest databases, JP Morgan legacy systems. Different regulatory context by region (Europe = data restrictions).

**D5 — HITL:** Human reviewers see summaries instead of reading raw documents. Final human validation maintained for compliance. "People spend time on the real questions rather than reading documents."

**D6 — Guardrails:** Firm-wide governance (model cabinets). Proactive token limits (February–March 2026 — before usage spikes). Anthropic = default model with justification required to deviate. European regulatory restrictions (data sovereignty).

**D7 — Measurement:** Onboarding: 4-6 weeks → 1 day. 65,000 seats. Token budgets not yet hit despite massive usage. Significant ROI announced publicly by JP Morgan.

**D8 — Roles:** KYC talent: from document processors to AI summary reviewers. Engineering: tool diversification (Codex, Copilot, Winsurf, Claude Code) based on preference.

**D9 — Culture:** Usage well below allocated token budgets → management pushes for more use. LLM Suite = wide adoption (summarize emails, create client PPTs). Bottom-up for coding tools.

**D10 — Maturity:** Very advanced (public JP Morgan case). Mature centralized infrastructure. Advanced "state management" and engineering for autonomous agents.

**D11 — Token economics:** 3 buckets: individual chat (under budget), coding (proactively limited), autonomous agents (engineered for efficiency). Quarterly budgets not hit despite 65K seats.

**D12 — Hiring:** Not directly addressed.

**D13 — Vision:** Geographic expansion of KYC agents. Main barrier: European regulators and model sovereignty. "Sovereign models" = upcoming tension.

**Key quote:** "We are able to reduce [onboarding] from four weeks on average to now a day. This has been kind of announced as part of our achievements in AI."

**Strong signal:** Only large bank case (JPM) in the corpus with a publicly documented case. Proactive management of token limits before spikes = rare practice. Europe/Anthropic regulatory tension as a real geopolitical factor.

---

### Kunal Datta | Startup | May 11, 2026 + Follow-up June 9, 2026
**Sector/Context:** Unit 21 (fraud & compliance AI platform for fintechs/crypto/banks) — CPO
**Interviewee:** Chief Product Officer

**D1 — Focal workflow:** Fully AI engineering (Cursor/Claude Code/Codex). AI design (Claude Design). Sales (AEs managing 2-3x more deals). Marketing (AI-generated collateral). A "Unit 21 Brain" = centralized auto-updated organizational memory.

**D2 — Agentic architecture:** Each leader = IC who ships to production themselves. "Manager skills for IC work." Specialized agents by function (Cursor for code, agents for call analysis). "Brain" = shared cross-agent context auto-updated from all sources (meetings, Notion, Slack).

**D3 — Technical stack:** Cursor, Claude Code, Codex (engineering). Claude Design (design). Gong + analysis agent (calls). Dripify (marketing outreach). "Unit 21 Brain" (central context). Claude = dominant.

**D4 — Context:** "Unit 21 Brain" = all organizational memory (meetings, docs, Slack, Notion) auto-updated. Distinction: documented knowledge (brain can ingest it) vs. intent (must be actively captured by the human).

**D5 — HITL:** Humans as reviewers and managers. "Intent" not captured = main source of errors (e.g. dev accidentally changing another page). CSM = final feedback loop from clients.

**D6 — Guardrails:** Not formalized. Trust in human review for ambiguous intent cases.

**D7 — Measurement:** AEs: 2-3x more deals handled. Engineering: each manager/lead ships to production each week as a personal goal. Design: "Claude Design = huge boost."

**D8 — Roles:** All roles become hybrid. Leader = IC + reviewer/manager. Kunal links IC work to manager-like skills when using AI; avoid over-interpreting the ambiguous "rappers/wrappers" aside as a formal operating-model claim. Engineers without a team (Kunal wants to ship himself each week).

**D9 — Culture:** Leaders lead by example by doing it themselves (CGO runs his own Dripify campaigns, Kunal ships code). "If he can do it, so can I." No delegation — direct participation.

**D10 — Maturity:** Very advanced. Organization fully reorganized around the "leader-as-IC" model. Brain = organizational continuity infrastructure being deployed.

**D11 — Token economics:** Not addressed.

**D12 — Hiring:** By function (product = Kunal, engineering = CTO, etc.). AI proficiency criterion implicit.

**D13 — Vision:** Capture human "intent" in the pipeline — the missing link. Growing automation of the product → engineering pipeline.

**Key quote:** "The role of the expert is becoming more of a reviewer or a manager. Even when I'm doing IC work, I'm actually using manager skills."

**Strong signal:** "Unit 21 Brain" = most developed concept of continuous organizational memory in the corpus. Intent vs. documented knowledge distinction = fundamental insight rarely articulated. "Leader-as-IC-shipper" model as the organizational response to AI acceleration.

---

### Mahesh | Startup | May 22, 2026
**Sector/Context:** Databricks — Engineering Director (internal R&D + enterprise client platform)
**Interviewee:** Engineering Director

**D1 — Focal workflow:** (1) AI coding (Claude Code, Cursor) for internal R&D. (2) Natural language analytics: "why this dip in the dashboard?" → correlation of support tickets + incidents + metrics. (3) Empowered teams: designers submitting PRs, engineers touching other codebases.

**D2 — Agentic architecture:** No formal agentic orchestration described. Advanced individual tooling. "Empowered teams" = model where anyone can submit a PR. Engineering review = shifted bottleneck (from authoring to reviewing).

**D3 — Technical stack:** Claude Code (dominant), Cursor. Databricks (internal data platform). NLP analytics on performance data. Dashboard intelligence.

**D4 — Context:** All internal sources: revenue, support cases, incidents, operations — correlated in real time by AI. "Before, nobody could connect all this data."

**D5 — HITL:** Code review = critical point kept human. Prior engagement required for major cross-team changes. "200-line plan doc rather than a 1500-line PR" = lightweight HITL practice.

**D6 — Guardrails:** Human code review. Convention: send a design doc before a large cross-team PR. No formal gates but contextual judgment.

**D7 — Measurement:** "5 PRs/day" vs. "1-3 PRs/week" before AI. Business analytics without SQL = democratization of data access. Automatic incident/metric correlation = new level of insight.

**D8 — Roles:** Design and product teams are empowered to contribute code; the transcript supports this as an established practice, not merely an experiment. Engineers touching other codebases encounter friction. Review = new bottleneck. "Proficiency lack deters overreach" — competency limits remain a natural guard.

**D9 — Culture:** Bottom-up (each team builds its own workflows). Top-down to standardize infrastructure. Tension between central standardization and local ownership.

**D10 — Maturity:** Advanced on coding. In progress on natural language analytics. Experimentation underway on new forms of cross-functional collaboration.

**D11 — Token economics:** "We have the costs but they don't get you from A to B faster" — cost infrastructure necessary but not sufficient.

**D12 — Hiring:** Not addressed.

**D13 — Vision:** AI analytics = democratization of data access for all roles. Databricks = dual position (uses + sells the capability).

**Key quote:** "The bottleneck has shifted from authoring code to reviewing code. And no gates are in place — anyone can submit a PR. The extent of the change determines what kind of prior engagement they need."

**Strong signal:** Databricks in a unique position (uses internally + exposes to clients). Democratization of NLP analytics as a silent but profound transformation. Design → PR = signal of a new frontier.

---

### Michael Bernstein | Startup | May 12, 2026 + Follow-up May 21, 2026
**Sector/Context:** Markup AI (ex-Acrolinx) — VP AI Engineering, AI-first turnaround startup
**Interviewee:** VP AI Engineering

**D1 — Focal workflow:** Product feedback / bug triage pipeline with Temporal (durable execution) + Claude Code + Codex. Monorepo with co-located docs. Multi-model review (Claude writes → Codex reviews → Claude fresh review).

**D2 — Agentic architecture:** Temporal = durable orchestrator of multi-step workflows. Activities + workflows + sub-workflows. Retry logic. Long-lived workflows (duration: hours to days). Agents = "code in a loop, mutating." Multiple agents in parallel for review (6-7 simultaneous).

**D3 — Technical stack:** Temporal (workflow orchestration — also used internally by OpenAI and Anthropic). Claude Code (code generation). Codex (review — "better reviewer than Claude"). LibreChat (business users, AWS Bedrock). AWS Bedrock. Gemini (limited use). Monorepo (co-located context).

**D4 — Context:** Monorepo = single source of truth. Design docs = decision history (never deleted). Documentation co-located with code = current state. "Cleanup skill" before each commit. Greenfield = deliberate choice of clear structure from the start.

**D5 — HITL:** Human review after LLM reviews (no replacement). "We resolve LLM issues first, then do a human pass." Commit ownership = result ownership, agent or not.

**D6 — Guardrails:** Monorepo = full visibility. Co-located docs = verifiable context. Multi-model review = cross-detection. Human ownership of final commit.

**D7 — Measurement:** PR velocity (Claude Code analyzes commits). Token cost/session (tool usage). Personal week-over-week comparison. No centralized organizational tracking yet.

**D8 — Roles:** Sensitivity around "top-down tool imposition" for engineers. Bottom-up approach preferred for tool adoption. But "humans own the outcome" systematically.

**D9 — Culture:** Post-turnaround startup — agile organization, small team. Greenfield = freedom of technical choice.

**D10 — Maturity:** Very technically advanced (Temporal, multi-agent review, intentional monorepo). Strong ownership culture. External products still under construction.

**D11 — Token economics:** Codex tool usage = tokens in/out + cost. Spot analysis rather than continuous monitoring.

**D12 — Hiring:** Strong technical fundamentals required even with AI. "You can't just let an agent build things without strong fundamentals — supply chain attacks show this." 3 hires in 2025 = all referrals.

**D13 — Vision:** "F=MA — your thinking is the mass, AI is the acceleration. If M=0, you get nothing." Current limitations: agents that "hallucinate confidently" on edge cases.

**Key quote:** "Newton's second law: F equals MA. You're the mass, AI is the acceleration. If you don't put any thought into it, M is 0 — you get nothing out. It doesn't matter how good the AI is."

**Strong signal:** Only interviewee to explicitly name Temporal as a long-lived AI workflow orchestrator. Multi-model review (Claude + Codex in parallel) = unique sophisticated practice. Greenfield monorepo = deliberate architecture to maximize agent context.

---

### Mitchell Fierro | Startup | June 1, 2026
**Sector/Context:** [Fintech startup, unnamed] — Head of Infrastructure
**Interviewee:** Head of Infrastructure

**D1 — Focal workflow:** Internal self-service platform (Retool replacement): non-engineers build their own business apps with AI. Engineering: bug investigation agent (logs + metrics) → coding agent → PR review agent. All agents = custom built in-house.

**D2 — Agentic architecture:** Internal platform = centralized connections (Salesforce, Zendesk, Datadog, internal APIs, Google Drive, S3, email, OCR, third-party APIs). Permissions per app + per user. Centralized observability. Bug-fix agents: 3 sequential agents (investigation → code → review).

**D3 — Technical stack:** Custom internal platform (built in-house). Retool (progressively replaced). Salesforce, Zendesk, Datadog, S3, Google Drive. Internal APIs exposed by engineering (controlled). Custom agents "built in-house, not out-of-the-box."

**D4 — Context:** Tribal knowledge = unresolved problem. "Something we're really thinking about." Connectors model = unified access. Permissions model adapted from Retool.

**D5 — HITL:** Human review of PR. Non-engineers submit apps (engineering governance reviews access and usage).

**D6 — Guardrails:** Internal APIs with write access are built and tested by engineering. Non-engineers receive permissioned, read-oriented access plus controlled API calls that can execute approved actions. Observability of who builds what. App scanning for duplication/compliance.

**D7 — Measurement:** Reduced Retool dependency (cost + vendor lock-in). Ops + payments + disputes = transformed workflows. No quantified metrics cited.

**D8 — Roles:** "Non-technical employees become full-stack low-code engineers." Ops teams = more autonomous. Engineering = infrastructure and access gatekeepers.

**D9 — Culture:** Grassroots (ops teams identify their needs, build their apps). Engineering = enablers and governors.

**D10 — Maturity:** Advanced infrastructure. Tribal knowledge = unresolved gap. "Context ownership" = next step to address.

**D11 — Token economics:** Not addressed.

**D12 — Hiring:** Not addressed.

**D13 — Vision:** Self-service platform + AI = democratization of development. "Context ownership" to perpetuate organizational knowledge.

**Key quote:** "The inversion of control hasn't really happened yet in many places — it still seems like people are directing the AIs, not the other way around."

**Strong signal:** Only case of an internal platform replacing Retool built entirely in-house. The "tribal knowledge problem" explicitly named as an unresolved gap = rare reflection point in the corpus. All agents = 100% custom.

---

### Nishith Sahu | Startup | June 3, 2026
**Sector/Context:** Maersk (global shipping giant, ~15% of global trade) — Global Head CRM Platform
**Interviewee:** Global Head CRM Platform

**D1 — Focal workflow:** Resolution of 30M email cases/year by 2,500 human agents across 6 global centers → AI agentic system. Resolution: 7 minutes → 1 minute (with HITL).

**D2 — Agentic architecture:** 4 layers: (1) Presentation (Salesforce Service Cloud); (2) LLM orchestration (Azure API management, LangChain, Cosmos DB for audit, API vault for credentials); (3) Data layer (dedicated Azure Data Lake); (4) APIs from 15+ systems (OMS, shipment tracking, commercial systems). LangChain = step sequencing.

**D3 — Technical stack:** Azure (full stack: API management, LangChain, Cosmos DB, Data Lake). GPT-4o (primary LLM → migration to Claude in progress). Salesforce Service Cloud (presentation). 15+ internal Maersk APIs.

**D4 — Context:** Dedicated Data Lake (low latency). 15+ Maersk systems (OMS, tracking, commercial). SOPs (Standard Operating Procedures) = basis of LangChain logic. Context: booking number, customer details, shipment status, detention/demurrage nuances.

**D5 — HITL:** Human CX agents validate the suggested response before sending. "Human in the loop" on all resolutions. Vision: progressively reduce cases requiring review.

**D6 — Guardrails:** Cosmos DB = audit trail of all modifications. API vault = secured credentials. SOP changes = triggers for LangChain pipeline updates. Structured feedback loop (corrections → SOP → pipeline).

**D7 — Measurement:** 7 minutes → 1 minute per case. 30M cases/year. Significant savings in human agent time. Positive ROI maintained regardless of LLM improvement pace.

**D8 — Roles:** 2,500 agents → become reviewers of AI suggestions rather than manual processors. Reduction of multi-system research tasks.

**D9 — Culture:** Intentional architecture from the start (4 layers planned). Trial & error on nuances (e.g. "detention and demurrage" intent). Global organization (130 countries, 6 centers).

**D10 — Maturity:** Very advanced for a traditional company of this size. Azure GPT-4o → Claude (migration in progress). Potential for proactive resolution (avoiding cases rather than resolving them) = next step.

**D11 — Token economics:** Azure infrastructure budget. No detail on cost per case.

**D12 — Hiring:** Not addressed.

**D13 — Vision:** Proactive resolution (avoiding cases before they are created). Continuous reduction of HITL. "Standing still is not an option even if LLMs improve."

**Key quote:** "We had to learn from trial and error. Initially the LLM would mark the intent as just a 'shipment arrival query' — but it's a shipment arrival query plus 'detention and demurrage' with commercial implications."

**Strong signal:** Largest volume case in the corpus (30M cases/year, 2,500 human agents). Clearly articulated 4-layer architecture = enterprise reference model. Maersk = only non-tech company in the corpus to have deployed at this scale.

---

### Tyler Malone | Startup | May 20, 2026
**Sector/Context:** Satiri (10 people, Salesforce platform) — Principal Engineer & Head of AI
**Interviewee:** Principal Engineer / Head of AI

**D1 — Focal workflow:** Engineering PR pipeline: agent skills for TDD review, security review (Salesforce best practices), packaging review, multi-agent code review → "Land PR" skill orchestrating all steps.

**D2 — Agentic architecture:** Claude co-work agents/skills at 3 levels: project (local), personal, organization (distributed via Claude Desktop app). "Land PR" = meta-skill orchestrating the others. Evolving skill (deprecated skill redirects to the new one).

**D3 — Technical stack:** Claude co-work (dominant). Claude Desktop app. MCP server → Salesforce (debugging + customer data). Zapier (some automations). CEO uses Claude for board reports, slide decks, demo materials.

**D4 — Context:** Salesforce context via MCP (data structures, records). Local codebase (project-level skills). Personal PR history (velocity analysis).

**D5 — HITL:** Final human review before merge. "Scanning the PR description for the overall purpose" = the last true human act.

**D6 — Guardrails:** No write access for agents (except project-level). Systematic human review. Deprecated skills redirect to new ones (workflow debt management).

**D7 — Measurement:** PR velocity (Claude analyzes commits). Token cost/session (tool usage). Personal week-over-week comparison. No centralized organizational tracking.

**D8 — Roles:** Engineers = multi-skilled (security + packaging + quality in one person thanks to agents). CEO = autonomous on his own deliverables, including board reports and decks.

**D9 — Culture:** Bottom-up (principal engineer builds, shares to the organization). Encourages other engineers to follow. Small size = faster adoption.

**D10 — Maturity:** Advanced for 10 people. Well-designed skills architecture (3 distribution levels). No centralized organizational metrics yet.

**D11 — Token economics:** Token cost via tool usage (spot). No formal monitoring.

**D12 — Hiring:** Juniors more flexible for AI adoption. Seniors = useful "healthy skeptics" but sometimes resistant.

**D13 — Vision:** More agents covering more lifecycle stages. Continuous skill improvement through velocity feedback.

**Key quote:** "I deprecated the old skill by noting within it that the agent needs to use this skill now. If it tried to pick up the deprecated skill, it would redirect itself to the other one. And that's worked fantastic."

**Strong signal:** Smallest company (10 people) in the corpus but with the most carefully designed skills architecture. Workflow debt management pattern (deprecated skills → redirect) = poorly documented AI engineering practice. MCP Salesforce for CX and debugging = unexpected use case.

---

### Varun Shrimal | Startup | May 20, 2026
**Sector/Context:** C3 AI — Head of Product & Revenue (US central region)
**Interviewee:** Head of Product & Revenue

**D1 — Focal workflow:** (1) Automatic meeting extraction (notes, objections, tasks → Dynamics CRM). (2) RFP response: 3 weeks → 2 days. C3 AI application that queries a historical corpus (SharePoint) + Dynamics + uploaded documents to respond to RFPs.

**D2 — Agentic architecture:** RFP application: very defined system prompt by PM, laser-focused. Access: Dynamics (CRM) + SharePoint (historical RFP corpus) + ad hoc uploads. Human review + leadership review before sending. Meeting extraction application: runs in the background, captures notes + CRM.

**D3 — Technical stack:** C3 AI (internal platform). Microsoft Dynamics (CRM). SharePoint (document corpus). Jira (PM). Enterprise C3 AI applications.

**D4 — Context:** Historical RFP corpus (institutional memory). CRM data (discoveries, stakeholders, timeline). "Very defined system prompt" = strong contextual constraint for reliability.

**D5 — HITL:** AE/PM review of RFP draft. Leadership review before submission. Initial discovery = systematic human call.

**D6 — Guardrails:** Constrained system prompt. Multi-level review. No automatic sending.

**D7 — Measurement:** RFP: 3 weeks → 2 days. Quality maintained (no precise figure).

**D8 — Roles:** AEs more autonomous (less dependence on support teams). PMs as configurators of the application context.

**D9 — Culture:** "Access to knowledge has become a utility." Empathy + intuition + experience = what remains distinctive for humans.

**D10 — Maturity:** Intermediate. Well-defined applications but limited orchestration.

**D11 — Token economics:** Not addressed (C3 AI = internal platform).

**D12 — Hiring:** Not addressed.

**D13 — Vision:** "The boundaries between roles will disappear." Agents doing what entire teams used to do.

**Key quote:** "Access to knowledge and access to intelligence has become a utility, a commodity. It's no longer about how smart someone is. Now things like empathy, intuition, experience — they matter more."

**Strong signal:** Only C3 AI case (enterprise AI platform). RFP automation = very concrete use case for complex sales cycles. "Very defined system prompt" as an alternative to RAG for reliability = interesting minimalist design approach.

---

### Vijay Devatha | Startup | May 14, 2026
**Sector/Context:** AI startup (helps enterprises adopt AI) — Senior Director Engineering
**Interviewee:** Senior Director Engineering

**D1 — Focal workflow:** (1) AI-native engineering (3-5 PRs/day vs 1-3/week). (2) Automated support ticket (Tier 1-2 reduced). (3) NL chatbot for ops team (campaign status query). (4) Slack HR chatbot (benefits questions, total comp).

**D2 — Agentic architecture:** Engineering: Jira → IDE (Claude Code/Cursor) → PR → testing (being automated). Support: AI ingests ticket → response + deduplication + prioritization for engineering. Ops: NL query → data warehouse. HR: personalized chatbot (location, title, comp history, past questions).

**D3 — Technical stack:** Claude Code, Cursor, Codex. External AI startup for incident management (in discussion). Data warehouse (NL query). Slack (HR chatbot). Contracted human-workforce operations also perform RLHF for external model-training clients; do not treat this as a verified internal closed-loop training system.

**D4 — Context:** Campaign data (payload, status, dates, risks). Employee data (location, title, comp, history). Benefits documentation. "Talk to a human" button always available.

**D5 — HITL:** Code review maintained. Support: AI triage → Tier 1-2 eliminated, Tier 3+ → humans. HR: 80% auto-resolution, 20% redirect to human. "Always a 'talk to a human' button in the UX."

**D6 — Guardrails:** Systematic "talk to a human button." Human code review. No formal gate but contextual judgment.

**D7 — Measurement:** Engineering: 3-5 PRs/day vs 1-3/week. Support Tier 1-2: nearly eliminated. Ops chatbot: real-time status without SQL. HR: 80% auto-resolution target.

**D8 — Roles:** Ops team: from dashboard operators to NL query users. People team: scales without headcount growth. Engineering: review = new bottleneck.

**D9 — Culture:** Company "adapts to the AI-first interface." UI paradigm → chatting with AI = muscle memory. Personalization = table stakes.

**D10 — Maturity:** Advanced on engineering and support. In progress on HR and ops. RLHF used for continuous improvement.

**D11 — Token economics:** Not addressed.

**D12 — Hiring:** "Pioneering use of AI = engineers as they adopt new technologies fastest."

**D13 — Vision:** Agents replacing dashboards everywhere. Conversational interfaces as the universal paradigm. "Societal adaptation happening."

**Key quote:** "We always have a 'talk to a human' button on the UX at all times, because we cannot erode customer trust in the products. But I feel society itself is adapting more and more to an AI-first interface."

**Strong signal:** Rare case combining operational RLHF + personalized HR chatbot + ops NL query in the same organization. The "talk to a human button" as an explicit design principle = trust management heuristic not documented elsewhere.

---

### Pat Sheth | Enterprise | June 9, 2026
**Sector/Context:** Technology company (protected identity, "technology" as industry) — Digital Growth Organization
**Interviewee:** Role in digital growth (B2C + B2B)

**D1 — Focal workflow:** Marketing content workflow: from manual brief creation → content → approvals → launch (several weeks) → agentic system with variants at scale, massive A/B tests, brief standardization.

**D2 — Agentic architecture:** Variant generation agent from an enriched brief. Automated approval on existing templates. Human review + brand compliance + legal compliance on new content. Parallelization of steps (non-sequential).

**D3 — Technical stack:** Not specified (company owns its stack). Standardized marketing templates. Structured brief system as input.

**D4 — Context:** Brand guidelines, enriched brief (initial brief improved by AI), variant performance history. "The quality of the brief determines the quality of the output."

**D5 — HITL:** Brand compliance team + legal compliance team review campaigns/content. Existing templates can make execution faster and cheaper, but the transcript does not support a distinct lighter-review pathway for templates. "Two cities": those who embrace vs. those who resist.

**D6 — Guardrails:** Legal + brand compliance review. Human approval on new formats. Clear limits on what AI can send without review.

**D7 — Measurement:** Reduction of redundant interactions between teams. Compliance/legal capacity utilization reduced. No quantified metrics cited.

**D8 — Roles:** Content creators: roles blending. Marketing ops: more autonomous. Brand/legal: review centered on non-standard cases.

**D9 — Culture:** Divided adoption ("two cities"). Change management underway. Training needed for resisters.

**D10 — Maturity:** In transition. Existing templates are easier to automate; new formats still require more work and review.

**D11 — Token economics:** Not addressed.

**D12 — Hiring:** AI proficiency = systematic criterion for all new roles. "Future-proof" role evaluation before hiring ("will this role exist in 2 years?"). AI proficiency performance being integrated.

**D13 — Vision:** Thousands of variants tested in parallel. Next: "who's right" on variants without waiting for human tests. AI performance = performance criterion by end of 2026 ("do or die").

**Key quote:** "For every new role we hire, we ask: Is this role something we'll need? Could it be automated? And the individual needs AI proficiency — this role needs to be future-proof and adaptable."

**Strong signal:** Only enterprise-scale marketing automation case with brief-to-variants described in detail. The "two cities" metaphor = precise cultural diagnosis of organizational bifurcation. "Do or die" as a formulation of AI urgency in hiring.

---

### Dmitry Shkolnik | Enterprise | June 10-11, 2026
**Sector/Context:** Large tech company (unnamed) — Senior Manager Data Science (team of 8-9, organization of 100+ data scientists)
**Interviewee:** Senior Manager Data Science

**D1 — Focal workflow:** (1) Analytics automation: NL → SQL / data queries for stakeholders. (2) AI coding (Claude Code + Codex) for data science. (3) Bottom-up workflows/skills in an internal "plugin repo marketplace."

**D2 — Agentic architecture:** No centralized agentic orchestration. Bottom-up skills ecosystem (internal marketplace). Virtuous cycle: best workflows adopted → more context → better workflows. "Context ownership" emerging (extension of "metric ownership").

**D3 — Technical stack:** Claude Code, Codex (interchangeable). External startups explored for NL-to-SQL. Internal plugin repo (skills marketplace). GitHub repos markdown = context stores.

**D4 — Context:** Context stores = GitHub repos of markdown files. Centralized vs. decentralized tension. Context ownership = emerging new role (similar to "metric owners"). Context = key for high-performing workflows.

**D5 — HITL:** Humans = validators of data outputs. Human code review. Judgment call on cross-team changes.

**D6 — Guardrails:** Infrastructure standardization (yes) vs. workflow standardization (no — by domain). Context ownership + validation for context updates.

**D7 — Measurement:** "Marketplace of ideas" = only adoption measure currently. Next phase: performance measurement (input → output efficiency) + optimization. Lack of formal metrics = recognized gap.

**D8 — Roles:** Data scientists less blocked by stakeholder analytical requests. "Context owners" = emerging new role. Time freed for higher-value work.

**D9 — Culture:** Bottom-up first, centralized standardization only for infra. "Standardize everything = reduce ownership and local tweaking" = conscious opposition. Network effects through internal marketplace.

**D10 — Maturity:** Advanced on coding. In progress on NL analytics. Emerging on context governance. Next phase: measurement and optimization.

**D11 — Token economics:** Not addressed.

**D12 — Hiring:** Not addressed.

**D13 — Vision:** Formalized context ownership. Workflow performance measurement (next phase). Differentiation: domain-specific workflows > generic workflows.

**Key quote:** "We're extending the logic of metric ownership to context ownership — these would be people who have the subject matter expertise to help maintain the freshness of context and to approve any changes."

**Strong signal:** "Context ownership" concept as an extension of "metric ownership" = original organizational insight not expressed elsewhere. The centralization vs. decentralization tension on workflows = most clearly articulated node in the corpus.

---

### Taoufik Arif | Enterprise | June 10-11, 2026
**Sector/Context:** Johnson & Johnson (manufacturing & supply chain, Digital Product team) — 25 years of experience (Nestlé, Olam, J&J)
**Interviewee:** Digital Product Leader (AI/ML, end-to-end supply chain)

**D1 — Focal workflow:** (1) Procurement: shortage prediction, supplier alternatives, order optimization. (2) Multi-purpose robotics: reprogrammable robotic cell via LLM (prompt → workflow → robot code) without a specialized engineer. (3) 700+ supply chain processes (plan, source, make, deliver, quality, logistics).

**D2 — Agentic architecture:** LLM generates step-by-step workflows from business prompts. Workflow sent to the robot (code automatically generated). Vision system → LLM → picking coordinates for the robot. Architecture: prompt → workflow → robot code → physical execution.

**D3 — Technical stack:** NVIDIA (hardware + OS). Azure (cloud). Claude (primary LLM — "much more reliable for code generation than ChatGPT or Gemini"). Vision systems. MES (Manufacturing Execution System). CAD data sheets. On-premise NVIDIA for data privacy.

**D4 — Context:** Part CAD/data sheets (dimensions, tolerances). MES (performance and production data). No other sources needed for the robotic cell. Privacy = strong constraint (ITAR/compliance data).

**D5 — HITL:** Operator/supervisor validates the generated step-by-step workflow before execution. "Clicking Generate" after visual validation = last human act. No engineer needed.

**D6 — Guardrails:** On-premise for privacy. Operator validation before execution. Audit agents (being deployed). ITAR and manufacturing regulatory compliance.

**D7 — Measurement:** Specialized engineers eliminated for robotic reprogramming. Change time: days → minutes. Savings on skilled headcount (nearly impossible to recruit in a factory). Supply chain ROI: "€100M in annual savings over 5 years" targeted.

**D8 — Roles:** Operators = programmers via prompts. No more robotics engineers needed to reprogram. Supply chain planners: assisted by AI for procurement decisions.

**D9 — Culture:** "Enterprise companies still think inside the box of tools they know." Strong resistance from IT/CIO. Approach: showing concrete cases to the CFO to bypass the CIO.

**D10 — Maturity:** Very advanced in manufacturing (unique case in the corpus). Pre-2023 models = classic ML. Since 2023 = LLMs. Projection: agents replacing SAP in 2-3 years.

**D11 — Token economics:** Not addressed (enterprise infrastructure).

**D12 — Hiring:** Shortage of skilled engineers in factories = primary driver of automation. "It's almost impossible to find qualified people who want to work in a factory."

**D13 — Vision:** "Agents replacing SAP — €100M in licenses vs €2-3M for agents." Autonomous audit agents. End of traditional ERP. "Many of my peers are aligned with this."

**Key quote:** "Now we call them multi-purpose robotic cells — they are not dedicated to one task anymore. This is only possible because of AI. Otherwise it would not be possible."

**Strong signal:** The only physical manufacturing and robotics case in the corpus. LLM → robot code → physical execution = causal chain closest to the real world. Most radical vision on replacing SAP with agents. Shortage of skilled factory workers = automation driver unique to manufacturing.

---

### Aaron White | Expert | June 4, 2026
**Sector/Context:** Technical expert (ex-Keystone) — Advisory on frontier firm architecture
**Interviewee:** Technical expert (consultation on the Frontier Firms project)

**D1 — Focal workflow:** N/A — expert role to validate the Keystone/Microsoft study framework. Reaction to the dimensions of the proposed operational model (infrastructure, harness, operating capabilities).

**D2 — Agentic architecture:** Meta-perspective: tools matter less than layers. "There will always be 5-6 tools doing the same thing — pick one."

**D3 — Technical stack:** Cloud native (AWS/Azure) = table stakes. Centralized semantic layer = frontier firm differentiator. Centralized data layer (single definition of revenue, utilization, etc.).

**D4 — Context:** Semantic layer = priority. Problem of business logic scattered across multiple layers (DB, BI tool, report). "Single definition" as imperative. Conway's Law as a barrier to centralization.

**D5 — HITL:** Not addressed.

**D6 — Guardrails:** Reference architecture (second opinion engagements). Cloud native = prerequisite, not differentiator.

**D7 — Measurement:** Not addressed.

**D8 — Roles:** Not addressed.

**D9 — Culture:** Not addressed.

**D10 — Maturity:** Frontier firm vision = accomplished centralized semantic layer (rare in practice). "Everyone agrees it's a good idea, then there's always a reason not to do it."

**D11 — Token economics:** Not addressed.

**D12 — Hiring:** Not addressed.

**D13 — Vision:** Frontier firm = centralized semantic layer + cloud native + harness (agent orchestration) + operating capabilities (humans). Tools are interchangeable — layers are what matter.

**Key quote:** "A frontier firm actually has accomplished a centralized semantic layer — because that tends to be harder than everyone agrees it's a thing you should do."

**Strong signal:** Only non-practitioner expert. Keystone framework validation with addition of the "compute" layer for frontier firms. The centralized semantic layer as the real discriminator between frontier firms and the rest — high-level architectural insight.

---

---

## SYNTHESIS TABLE

| Dimension | # of interviews | Dominant signal |
|-----------|----------------|-----------------|
| **D1 — Focal workflow** | 25/25 | Engineering (code) = most frequent workflow (16/25). Customer ops = 2nd (support, KYB, CX). Marketing/legal/manufacturing = niches. |
| **D2 — Agentic architecture** | 22/25 | Orchestrator + hierarchical sub-agents = dominant pattern. Predefined sequential chains for simple flows. Multi-model review (Claude + Codex) = sophisticated practice. Temporal = unique. |
| **D3 — Technical stack** | 25/25 | Claude = dominant LLM (18/25+ mentions). Cursor + Claude Code = standard code tools. AWS Bedrock for versioned stability. LangChain for enterprise orchestration. MCP emerging strongly. |
| **D4 — Context & data** | 23/25 | Monorepo + co-located docs (engineering). Context layer / organizational brain (a few advanced cases). Semantic layer = identified gap. Silo management = major enterprise barrier. |
| **D5 — HITL** | 25/25 | HITL maintained everywhere except Voice AI (Arnon). Pattern: agent → recommendation → human validation. Progressive reduction but not elimination. Compliance/legal = regulatory HITL. |
| **D6 — Guardrails** | 20/25 | AI Council / formal governance (Fetch, JPM). Read-only DB access = standard. Context isolation per use case = rule. Bounding box for customer-facing agents. RLHF emerging. |
| **D7 — Value & metrics** | 22/25 | Time reduction = primary metric (7min→1min, 3 weeks→2 days, 4 weeks→1 day). Few precise financial metrics. Token cost = emerging. ROI often qualitative. |
| **D8 — Roles & org** | 23/25 | Engineers = reviewers rather than coders. Leaders = ICs who ship. Non-engineers = builders (low-code). Role merging. Ops teams = more autonomous. |
| **D9 — Culture & change** | 22/25 | Top-down for large enterprises, bottom-up for startups. Change management = barrier #1. "Two cities" = cultural bifurcation. Managers leading by example = accelerator. |
| **D10 — Maturity** | 25/25 | Wide spectrum: individual vibe coding → self-improving agent factory. Majority: AI-assisted well established. Frontier (10%): systemic AI-native. |
| **D11 — Token economics** | 12/25 | Emerging. JPM: proactive limits. Fetch: transition underway. Daniel: API token per agent. Amrish: model cost = technical decision. Majority: not yet formalized. |
| **D12 — Hiring** | 15/25 | AI proficiency = binary threshold (not a criterion among others). Future-proof role evaluation before hiring. Technical fundamentals > tool mastery. |
| **D13 — Vision** | 23/25 | Autonomous end-to-end agents = convergence. SAP/ERP replaced by agents (Taoufik). Agentic commerce (Aditya). Formalized context ownership (Dmitry). Semantic layer (Aaron). |

---

## CROSS-CUTTING OBSERVATIONS

### 1. The "post-December 2025" quality threshold
Aditya and several others mention a clear before/after shift at the end of 2025. Agents have become reliable enough that HITL has been reduced to formal validation rather than substantive correction.

### 2. Hierarchical vs. peer-to-peer architecture
The dominant pattern is master agent → sub-agents (Aditya, Kal, Catalin, Nishith). Very little direct agent-to-agent communication. Control and traceability = perceived value superior to the efficiency of an agent mesh.

### 3. Context as critical infrastructure
Consensus is emerging: it's not the model that differentiates, it's the quality of context (Alec, Kunal, Michael, Dmitry, Aaron). Frontier firms have invested in context layers (monorepo, brain, semantic layer, markdown repos) that the majority does not have.

### 4. Tribal knowledge = unresolved gap
Several interviewees (Mitchell, Kunal, Dmitry) name the same problem: implicit intent and undocumented knowledge that agents cannot capture. Nobody has a complete solution.

### 5. MCP as a silent revolution
Cullen and several others name MCP (Model Context Protocol) as the change that "unlocks everything" in terms of connectivity. Emerged during 2025, it replaces Zapier and ad hoc integrations.

### 6. Organizational bifurcation
In large enterprises (Pat, Dmitry, Kal, Taoufik), a bifurcation is systematically observed: a minority adopts aggressively, a majority resists or adopts superficially. The gap between the two groups is widening.

### 7. Claude as the de facto dominant model
Without being cited the most explicitly as the sole choice, Claude appears as the reference model in 18+ interviews — often presented as superior to GPT-4 for code and contextual reasoning tasks.
