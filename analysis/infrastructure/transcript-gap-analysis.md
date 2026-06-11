# Infrastructure Traits - Transcript-Verified Capture Gaps

Purpose: identify infrastructure traits that are visible in the interview transcripts but are not already explicit in the current infrastructure section of `analysis/framework/dimension-mapping.md`.

Source rule: this file is conservative. It does not promote a trait unless the transcript evidence is specific enough to distinguish it from an already captured infrastructure trait.

## Already Captured In The Current Infrastructure Page

Do not add these as new traits; they are already represented in the `INFRASTRUCTURE` table or in the existing outside-framework notes:

| Existing trait | Current home | Keep as-is / note |
|---|---|---|
| Model selection, model interchangeability, fine-tuning, build vs. buy | Models; OUT-1 Build vs. Buy Decision Logic | Already strong. Do not add another generic "model choice" or "build vs. buy" trait. |
| MCP / API / connector adoption | Integration & connection | Already partially captured. Only add a new trait if it is about permissioning, credentials, or system access governance, not generic connectivity. |
| Context layer, monorepo/markdown, organizational brain, semantic layer | Data & context substrate | Already strong. Do not add another generic "context quality" trait. |
| Sandboxes, isolated repos/VMs, execution environments | Execution environments | Already partially captured. |
| Outcome metrics, PR velocity, time saved, telemetry gap | Eval / telemetry infra | Already captured as weak. |
| Compute and on-prem deployment | Compute | Already captured as weak; on-prem/NVIDIA should remain a supporting example, not a new trait by itself. |
| Strategic build/buy logic | OUT-1 | Already identified outside the framework. |

## Transcript-Captured Infrastructure Traits Not Explicitly Captured

### 1. Model Version Control And Runtime Stability

**What is missing:** The current "Models" row captures model choice and fine-tuning, but not the operational requirement to pin model versions and avoid unannounced SaaS model/runtime changes.

**Why it matters:** For production workflows, the infrastructure capability is not just choosing a model. It is controlling model drift, version upgrades, repeatability, cost predictability, and when a model/runtime change enters production.

**Transcript evidence:**

- Amrish Macedo avoids standard SaaS models because he does not want a different answer after an unannounced upgrade; he uses deployed Bedrock models with explicit version control (`Startup_Amrish Macedo_20260520.md:156-170`).
- The same interview separates PDF extraction and Llama understanding from general-purpose LLMs to reduce risk and cost (`Startup_Amrish Macedo_20260520.md:477-500`).

**Specific transcript quotes:**

- "I don't want the a completely different answer the next day" (`Startup_Amrish Macedo_20260520.md:156`).
- "stick with version 3.1 until we decide" (`Startup_Amrish Macedo_20260520.md:163`).

**Cross-check verdict:** Supported and distinct. The version-pinning evidence is strong. The PDF/Llama separation evidence should be treated as supporting specialized runtime/model separation, not as primary evidence for version control.

**Suggested framework placement:** Add as an Infrastructure sub-dimension under Models: `Model lifecycle and runtime stability`.

**Do not conflate with:** Generic model selection, fine-tuning, or build/buy logic, which are already captured.

### 2. Access, Permissioning, And Credential Infrastructure

**What is missing:** "Integration & connection" captures whether systems are connected, but the transcripts show a separate infrastructure capability: controlled access to those systems through permission models, gateways, API vaults, and app-level access requests.

**Why it matters:** Once non-engineers or agents can build tools, the bottleneck becomes safe access: who or what can touch Salesforce, Zendesk, Datadog, operational APIs, databases, Google Drive, S3, Excel, and email systems.

**Transcript evidence:**

- Mitchell Fierro describes the new infrastructure problem as making sure users have the right permissions and cannot do dangerous things (`Startup_Mitchell Fierro_20260601.md:108-113`).
- Mitchell describes a gateway service, delegated access, source-code visibility, usage insight, and observability for deployed apps (`Startup_Mitchell Fierro_20260601.md:232-242`).
- Mitchell lists the connector/access surface and says access and permissions are a huge component of the stack (`Startup_Mitchell Fierro_20260601.md:250-256`).
- Mitchell says engineering owns internal APIs with database write access and exposes them for consumption after building/testing (`Startup_Mitchell Fierro_20260601.md:268-271`).
- Mitchell also describes app-level access requests reviewed by engineering or IT before deployment (`Startup_Mitchell Fierro_20260601.md:342-347`).
- Nishith Sahu describes an API vault that stores credentials for underlying APIs inside the enterprise architecture (`Startup_Nishith Sahu_20260603.md:68-72`).

**Specific transcript quotes:**

- "all these non-technical people just need access to stuff" (`Startup_Mitchell Fierro_20260601.md:112`).
- "Apps can't just sort of like access everything out of the box" (`Startup_Mitchell Fierro_20260601.md:346`).

**Cross-check verdict:** Strongly supported and distinct. Mitchell supports governed app/user access; Nishith supports credential infrastructure through the API vault. The trait should be framed as governed access, not as blanket restriction.

**Suggested framework placement:** Add as an Infrastructure sub-dimension under Integration & connection: `Access, credentials, and permissioning layer`.

**Do not conflate with:** Generic MCP adoption. MCP is already captured; this trait is about secure, governed access to connected systems.

### 3. Source-System Load, API Rate Limits, And Latency Architecture

**What is missing:** The current page mentions compute weakly and integration partially, but not the operational infrastructure problem of protecting legacy/source systems from agent-driven load while maintaining response-time requirements.

**Why it matters:** AI-enabled workflows can over-query systems of record. Frontier infrastructure needs routing logic that decides whether to hit the live source system, a data lake/cache, or a manual fallback based on recency, rate limits, latency, and failure state.

**Transcript evidence:**

- Nishith Sahu routes recent orders to the source order-management system and older orders to Azure Data Lake, partly to avoid exceeding API thresholds in legacy systems (`Startup_Nishith Sahu_20260603.md:180-186`).
- Nishith describes fail-safe behavior: if an upstream system breaks, humans revert to the manual operating process and customer response time is affected (`Startup_Nishith Sahu_20260603.md:192-197`).
- Nishith says a workflow-specific Azure Data Lake exists because the workflow requires low-latency response (`Startup_Nishith Sahu_20260603.md:312-317`).

**Specific transcript quotes:**

- "certain API call rates that these underlying systems have a threshold for" (`Startup_Nishith Sahu_20260603.md:184`).
- "the agent goes back to their manual way of operating" (`Startup_Nishith Sahu_20260603.md:197`).

**Cross-check verdict:** Supported and distinct. The transcript supports workflow/API traffic-management logic; avoid implying an explicit "runaway autonomous agent" failure mode.

**Suggested framework placement:** Add as an Infrastructure sub-dimension under Integration & connection or Compute: `Source-system load and latency management`.

**Do not conflate with:** Generic "compute" or "data platform." This trait is specifically about agent traffic management across source systems, caches/data lakes, and fallback paths.

### 4. AI Consumption Metering By Agent, Workflow, Or Use Case

**What is missing:** Token economics is captured under operating capabilities, but transcripts show a technical infrastructure layer for metering consumption: API tokens, workflow labels, dashboards, and use-case allocation.

**Why it matters:** AI economics and model-routing policies depend on instrumentation that attributes consumption to an agent, workflow, team, or use case. This is infrastructure before it is governance.

**Transcript evidence:**

- Daniel Guzman says token spend is monitored, but workflow-level allocation is hard across multiple tools (`Startup_Daniel Guzman Follow Up_20260601.md:447-460`).
- Daniel says every agent has its own API token and dashboards can show monthly consumption by lead agent or orchestrator agent (`Startup_Daniel Guzman Follow Up_20260601.md:480-485`).
- Nishith Sahu describes enterprise token negotiation, allocation to the agentic service, and an ML pre-classification layer to avoid sending all 30 million cases to the LLM (`Startup_Nishith Sahu_20260603.md:418-425`).

**Specific transcript quotes:**

- "constantly monitoring the spend of tokens" (`Startup_Daniel Guzman Follow Up_20260601.md:449`).
- "every agent that we run have is its own API token" (`Startup_Daniel Guzman Follow Up_20260601.md:483`).

**Cross-check verdict:** Supported with scope caveat. This overlaps with token economics unless narrowed to the technical attribution substrate: API tokens, labels, dashboards, and use-case allocation.

**Suggested framework placement:** Add as an Infrastructure sub-dimension under Eval / telemetry infra: `AI consumption telemetry and attribution`.

**Do not conflate with:** Operating-capability token budgeting. The operating capability decides policy; this infrastructure trait provides the measurement substrate.

### 5. Data Quality, Freshness, And Confidence Metadata

**What is missing:** The existing "Data & context substrate" row captures the presence of context/data layers, but not the metadata required to let agents reason about whether data is accurate, stale, incomplete, or safe to use.

**Why it matters:** A data/context substrate is not automatically reliable. The transcripts show that agents need quality scores, accuracy indicators, freshness/latency decisions, and fallback behavior when data quality is insufficient.

**Transcript evidence:**

- Catalin Vieru distinguishes data quality, latency, and completeness, and says data engineering vouches for quality scores during ingestion (`Startup_Catalin Vieru_20260512.md:399-402`).
- Catalin says ingested data can carry an accuracy indicator and that knowledge-graph relationships help distinguish more reliable from less reliable information (`Startup_Catalin Vieru_20260512.md:402-405`).
- Nishith Sahu decides between source systems and Azure Data Lake based on recency because the lake may not yet contain the newest orders (`Startup_Nishith Sahu_20260603.md:180-186`).

**Specific transcript quotes:**

- "one piece of the metadata is going to be the accuracy indicator" (`Startup_Catalin Vieru_20260512.md:402`).
- "the data lake would not have already captured that particular order" (`Startup_Nishith Sahu_20260603.md:183`).

**Cross-check verdict:** Supported and distinct if framed as quality/freshness metadata inside the data substrate. Catalin's passage blends general industry practice with company-specific language, so present it as a pattern described by Catalin rather than a fully audited implementation.

**Suggested framework placement:** Add under Data & context substrate: `Data freshness, quality, and confidence metadata`.

**Do not conflate with:** Generic semantic layer or context management. This is about quality/confidence metadata and data recency decisions.

## Candidates Not Added As New Traits

These were visible in transcripts but should not be added as new infrastructure traits because they are already captured or belong elsewhere:

| Candidate | Why not add |
|---|---|
| Build vs. buy decision logic | Already captured in OUT-1. |
| MCP replacing Zapier / ad hoc integrations | Already captured by Integration & connection and Platform / Architecture. |
| Semantic layer | Already captured under Data & context substrate and platform architecture. |
| On-prem NVIDIA / data sovereignty | Already captured under Compute; useful as supporting evidence only. |
| General outcome/time-saved metrics | Already captured under D7 and Eval / telemetry infra. |
| AI governance councils | Operating capability / risk governance, not a distinct infrastructure trait. |

**Cross-check verdict:** No mistaken exclusions found. MCP is only partially captured in the current framework, so this exclusion is valid only if the new infrastructure addition preserves the sharper access/permissioning/credential distinction.

## Recommended Infrastructure Additions

If the framework page is updated, add only these five net-new infrastructure traits:

1. `Model lifecycle and runtime stability`
2. `Access, credentials, and permissioning layer`
3. `Source-system load and latency management`
4. `AI consumption telemetry and attribution`
5. `Data freshness, quality, and confidence metadata`

These additions are transcript-supported and do not duplicate the existing infrastructure traits.
