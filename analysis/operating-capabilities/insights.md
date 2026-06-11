# Operating Capabilities — Transcript-Verified Insights

This file contains only insights that can be traced to the interview transcripts in `interviews/transcripts/`. Earlier PPTX-only or synthesis-only claims are excluded unless the same substance is visible in a transcript.

## Source Integrity Rules

- Treat `analysis/operating-capabilities/verified-insights.md` and `analysis/quality-checks/operating-capabilities-hallucination-check.md` as the source-integrity baseline for this topic.
- Do not promote PPTX-only claims into this file unless they are re-checked against transcripts or separately labeled as deck-only.
- Keep counts conservative: count verified transcript support, not plausible adjacent examples.
- Preserve maturity and scope caveats where the transcript frames a practice as aspirational, partial, or limited.

## 1. Org Structure & Composition

**Non-engineers producing production-grade output** | n=1 verified, 1 partial

The boundary between technical and non-technical work is shifting, but transcript support is narrower than earlier drafts suggested.

- Mitchell Fierro: non-technical employees become full-stack low-code engineers through a gated internal platform.
- Mahesh: design and product teams are empowered to contribute code; the earlier "experimental PRs" framing was interviewer/synthesis language, not his stated characterization.

**Senior leaders personally working with AI** | n=2 verified

Leadership adoption matters as a signal, but the transcript evidence supports "leaders doing IC-style work with AI," not a universal management mandate.

- Kunal Datta: expert work is becoming reviewer/manager-like even when doing IC work.
- Tyler Malone: the CEO uses Claude workflows for his own board reports and slide decks. The transcript does not support "without support staff" as a replacement claim.

**Platform team owns deployment; product and ops teams consume the rails** | n=1 verified

- Mitchell Fierro: Claude Code lets people produce things, but the hard problem is deployment, runtime, network connection, permissions, and platform integration.

**Context owner as an emerging role** | n=1 verified, 1 adjacent gap

- Dmitry Shkolnik: context ownership extends metric ownership; subject-matter experts maintain freshness and approve changes. This is aspirational/in progress, not fully implemented.
- Mitchell Fierro: context ownership and tribal knowledge capture are named as unresolved next-step problems.

**Role shift rather than pure elimination** | n=3 verified

- Kal Gangavarapu: KYC/legal/compliance work shifts from document processing toward reviewing AI-generated summaries.
- Nishith Sahu: time savings are repurposed toward cross-selling, not toward AI review.
- Vijay Devatha: ops moves from dashboards to natural-language queries, while people operations scales without proportional headcount growth.

## 2. Talent Readiness

**Orchestration as a core engineering competency** | n=1 verified

- Daniel Guzman: the engineer role is moving toward orchestrating agents rather than writing every line of code directly.

**Future-proof role evaluation before opening a req** | n=1 verified

- Pat Sheth: each new role is assessed for whether it will still be needed, whether it could be automated, and whether the candidate has AI proficiency.

**AI proficiency as a binary threshold** | n=2 verified

- Cullen Brown: basic ChatGPT use is not enough; AI adaptiveness is treated as a threshold for functioning in the role.
- Pat Sheth: AI performance is expected to become a do-or-die performance criterion by end of 2026.

## 3. Review & Learning Culture

**Peer-to-peer workflow sharing** | n=2 verified, 1 limited-context example

- Mitchell Fierro: teams self-serve and build automations for their own jobs.
- Dmitry Shkolnik: internal marketplace dynamics can create network effects as reusable workflows improve with adoption.
- Tyler Malone: workflows are shared across project, personal, and organization levels, but the company is small, so generalizability is limited.

**Context maintenance is necessary, but mature pruning routines are not broadly verified** | n=1 verified

- Dmitry Shkolnik: subject-matter experts should approve context changes and maintain freshness. Daily automated "brain refresh" and "AI Doctor" routines remain unverified in transcripts.

## 4. Judgment & Accountability

**"Who owns the consequence if this goes wrong?" as the HITL rule** | n=2 verified

- Alec Dickinson: accountability for failure is the criterion for where to place human review.
- Michael Bernstein: the committer owns the result regardless of whether an agent produced the work.

**Human touchpoints protect customer trust** | n=1 verified, 2 adjacent examples

- Vijay Devatha: a "talk to a human" button remains available because customer trust cannot be eroded.
- Aditya Nemmaluri: customer-facing agents have explicit bounding boxes, especially in regulated contexts.
- Nishith Sahu: human CX agents validate before messages are sent for covered workflows.

**Internal tools can be more autonomous than external/customer-facing outputs** | n=1 verified

- Mitchell Fierro: engineers build and test internal APIs, then expose permissioned, read-oriented access with observability. Earlier drafts overstated this as purely read-only access for non-engineers.

## 5. AI Economics & Value

**Model routing and task-level cost management** | n=2 verified

- Arnon: cheaper models are used for routine screening, while stronger models handle more complex review.
- Alec Dickinson: cost and ETA are estimated at each turn as a feedback loop.

**Token budgeting by use-case type** | n=1 verified

- Kal Gangavarapu: economics fall into normal chat, coding tools, and agentic orchestration buckets. Only coding has explicit caps; manager-approved seniority tiering is not transcript-verified.

**Ring-fenced experimentation budget** | n=1 verified

- Cullen Brown: experimentation budget supports exploration, with unjustified cases shut down by the AI Council.

**Agent cost vs. human time remains mostly unsolved** | evidence from synthesis, not a firm-level implemented practice

Most interviews discuss time saved, output volume, or productivity proxies. Very few pair that with token/model cost to produce a true workflow unit-economics view.

## Excluded Until Re-sourced

- Charles Barton: design team coding, AI Doctor meeting, token tiers, AI experimentation budget, and N+1 error replication claims.
- Amrish Macedo: managers shipping weekly, domain knowledge replaced by a brain, daily brain cleanup/refresh, and helping others scale as promotion criterion.
- Catalin Vieru: hallucination detection as hiring criterion and coding-is-commodity hiring claims.
- Mitchell Fierro: personal AI subscription or data scientist building a video game as a hiring signal.
- Pat Sheth: lighter review for templates vs. full review for new external formats.
- Any claim that only appears in the check-in deck and not in transcripts.
