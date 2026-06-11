# Frontier Firms — Project Workspace

**Client:** Microsoft  
**Team:** Marco Iansiti, Jen Stave, Ellora Sarkar, Dilina Abudurexiti, Elisabeth Beltinger, Tyler Richards, Mark Cherepashensky  
**Last updated:** 2026-06-11

---

## Project Overview

Research project studying the operating models of frontier firms in the AI era — building a benchmark and scorecard for Microsoft. Successor to the Tech Intensity study (2020–2022), adapted for modern organizations with a focus on AI-native operating models.

**Three-phase plan:**
1. Frontier research & framework development (current) — interviews with frontier startups and experts
2. Broader enterprise benchmarking — 200 companies, econometric analysis
3. Quarterly updates — ongoing benchmark refresh

**Framework (3 pillars):**
- **Infrastructure** — compute, cloud, models, data platforms
- **Platform / Harness** — context management, agent design, orchestration, risk management, learning systems
- **Operating Capabilities** — org structure, talent, performance management, governance, AI economics

---

## Folder Structure

```
Frontier Firm/
├── README.md                        ← this file
├── output/
│   └── MSFT-Frontier Firms-CheckIn4 - 2026.06.12.pptx  ← latest check-in deck
├── interviews/
│   ├── raw/                         ← original .docx + scorecard .xlsx files
│   └── transcripts/                 ← markdown-converted transcripts
│       ├── startups/                ← 22 startup-folder transcripts
│       ├── enterprise/              ← 3 enterprise interviews
│       └── expert/                  ← 1 expert interview
└── analysis/
    ├── framework/                   ← framework and pillar mapping
    ├── infrastructure/              ← infrastructure-specific transcript analyses
    ├── interviews/                  ← structured interview synthesis
    ├── operating-capabilities/      ← operating-capabilities insights, slide support, and org-type checks
    └── quality-checks/              ← source-integrity and hallucination audits
```

---

## Interview Coverage (as of 2026-06-11)

| Type | Count | Notes |
|------|-------|-------|
| Startup-folder transcripts | 22 | Mostly startup / scaleup sources; some records remain `mixed_or_unknown` or enterprise-classified in the source registry |
| Enterprise | 3 | Tech, manufacturing (J&J), financial services |
| Expert | 1 | Aaron White — framework validation |
| **Total** | **26** | Target: 25–30 |

---

## Key Outputs

- `output/MSFT-Frontier Firms-CheckIn4 - 2026.06.12.pptx` — latest check-in deck (scorecard draft, case studies, operating model framework)
- `analysis/interviews/interview-synthesis.md` — structured interview profiles across 13 dimensions + cross-cutting observations
- `analysis/framework/dimension-mapping.md` — mapping of interview dimensions to the three-pillar framework
- `analysis/operating-capabilities/slide-traits-bilingual.md` — bilingual operating-capabilities slide trait guide with evidence status
