# Operating Capabilities — Cross-check d'hallucinations

**Source vérifiée :** `operating-capabilities-insights.docx`
**Référentiel :** `interviews/transcripts/` (lecture intégrale des transcripts concernés)
**Date :** 2026-06-10

## Méthodologie et limites (à lire avant les verdicts)

1. **Les "quotes" du document ne sont PAS verbatim.** Ce sont des paraphrases condensées entre guillemets (notation `→`, `=`, abréviations, puces fusionnées). La vérification est donc **sémantique** : la substance existe-t-elle dans le transcript, et est-elle attribuée au bon locuteur ? Un match exact aurait produit de faux positifs.
2. **Tag "PPTX case study".** ~12 citations sont taguées comme provenant d'un PPTX (`output/MSFT-Frontier Firms-CheckIn4`), pas du transcript. Pour celles-ci, « absent du transcript » n'est pas automatiquement une hallucination — SAUF si le PPTX était lui-même censé dériver de ces interviews. **Je n'ai pas audité le PPTX.** Quand le transcript de la personne porte sur un sujet entièrement différent (Catalin, Amrish), l'attribution est suspecte quelle que soit la source.
3. **Verdicts :** `SUPPORTED` (substance clairement présente), `PARTIAL` (cœur exact mais amplification/distorsion ajoutée), `NOT FOUND` (aucune trace).

## Synthèse chiffrée

| Verdict | Nombre |
|---|---|
| SUPPORTED | ~24 |
| PARTIAL (distorsion à corriger) | 8 |
| NOT FOUND (à re-sourcer ou retirer) | 13 |

**Les 3 blocs les plus graves :**
- **Charles Barton — 0/4.** Ses 4 citations sont absentes de son transcript, dont 2 non taguées PPTX. La citation "design team coding" ressemble à une contamination depuis Mahesh/Kunal.
- **Amrish Macedo — 0/4 (toutes PPTX).** Les mots « brain » et « domain knowledge » n'apparaissent jamais. Son transcript ne parle ni de managers ICs, ni de refresh quotidien.
- **Catalin Vieru — 0/2 (PPTX).** Mauvais locuteur : son interview porte sur un workflow GTM Google Cloud, jamais sur le recrutement ni la détection d'hallucinations. Probable réassignation depuis Michael Bernstein / Arnon.

**Pattern transversal :** plusieurs PARTIAL ajoutent un amplificateur que le locuteur n'a pas dit (« experimental », « without support », « reviewer » au lieu d'« orchestrator », « read-only »). Les échecs PPTX partagent un autre pattern : des punchlines AI-org plausibles (« brain », « coding is a commodity », « identify hallucinations ») collées à des locuteurs qui ne les ont jamais prononcées — signe possible d'une étape de génération qui a mélangé les interviews.

---

## Détail par personne

### Dmitry Shkolnik (Enterprise) — 3/3 SUPPORTED
1. *« Extending metric ownership to context ownership… approve changes / maintain freshness »* — **SUPPORTED** (quasi-verbatim, l.647-649). ⚠️ Présenté comme **aspirationnel** (« we're trying to implement that right now », « we don't have an answer to that ») — ne pas présenter comme opérationnel.
2. *« Network effects through internal marketplace »* — **SUPPORTED.** Deux fils réels (marketplace de plugins l.328 ; network effects via standardisation l.83/353) fusionnés. Compression équitable.
3. *« Context ownership + validation for context updates »* — **SUPPORTED** (même passage). Même réserve : en cours, pas en place.

### Pat Sheth (Enterprise) — 1 SUPPORTED, 1 NOT FOUND
1. *« For every new role… could it be automated… future-proof and adaptable »* — **SUPPORTED** (quasi-verbatim, l.499-505).
2. *« Existing templates = lighter review vs. new external formats = full review »* — **NOT FOUND.** Le processus de review est **uniforme** (toute campagne passe compliance + approbation humaine, l.168-171, 252-253). La catégorie « external formats » n'existe pas dans le transcript. Le contraste template/format est inventé. Le seul vrai contraste est template = chemin plus rapide/moins cher (l.163-165), pas « review plus légère ».

### Kal Gangavarapu — 2 SUPPORTED, 1 PARTIAL
1. *« KYC talent: from document processors to AI summary reviewers »* — **SUPPORTED** (l.60, 97-103). Cadré comme équipes legal/compliance mais KYC est bien le process.
2. *« 3 buckets: chat / coding / autonomous agents »* — **SUPPORTED** (l.210-222). Nuance : il dit que l'ingénierie visait l'efficacité **process**, pas token.
3. *« 3 buckets with different caps per use case type »* — **PARTIAL.** Seul le bucket coding a des caps explicites ; le chat n'est **pas** cappé, les agents restent sous budget par design. « caps » appliqué aux trois surévalue.

### Nishith Sahu — 2 SUPPORTED (1 réserve de périmètre)
1. *« 2,500 agents → reviewers rather than manual processors »* — **SUPPORTED.** Le chiffre 2 500 est exact (l.59, agents CX humains). ⚠️ Périmètre : seuls ~20 % du volume de cas (50/250 types) sont couverts aujourd'hui — la flèche laisse croire à une bascule complète de l'effectif.
2. *« Human CX agents validate before sending »* — **SUPPORTED** (l.84-85, 96).

### Vijay Devatha — 2/2 SUPPORTED
1. *« Ops team: dashboards → NL queries. People team: scales without headcount growth »* — **SUPPORTED** (ops l.343-347 ; people l.363-364).
2. *« 'talk to a human' button… cannot erode customer trust »* — **SUPPORTED** (quasi-verbatim l.649).

### Mitchell Fierro — 4 SUPPORTED, 1 PARTIAL, 1 NOT FOUND
1. *« Non-tech → full-stack low-code ; ops autonomous ; eng = gatekeepers »* — **SUPPORTED** (l.238, 78-80, 145, 268-271).
2. *« Context ownership = next step ; tribal knowledge = unresolved gap »* — **SUPPORTED** (l.280-282, 357).
3. *« Claude Code is just how people produce stuff… built a whole internal platform »* — **SUPPORTED** (quasi-verbatim, légèrement réordonné, l.138-139).
4. *« Grassroots — ops teams build their apps »* — **SUPPORTED** (l.165-172).
5. *« Internal APIs = write-access eng only. Non-engineers = read-only + controlled API calls »* — **PARTIAL.** 1ère moitié OK (l.270-271). « read-only » est **faux** : les non-engineers invoquent des APIs qui exécutent des actions (ex. retour de transfert) via un modèle de permissions.
6. *« $200 version of Claude… data scientist building a video game… commits production code »* (PPTX) — **NOT FOUND** dans le transcript. Aucun « $200 », data scientist, jeu vidéo. Adjacent réel mais différent : non-engineers « top spenders » sur Claude Code (l.381-384, outils internes, pas le produit principal).

### Charles Barton — 0/4 NOT FOUND ⚠️
1. *« Design team coding with AI assistance. Engineers doing product thinking »* — **NOT FOUND.** Il dit que les engineers ne codent plus à la main mais via agent (l.439) ; rien sur une design team qui code. Probable contamination depuis Mahesh/Kunal.
2. *« AI Doctor meeting » hebdo (PPTX)* — **NOT FOUND.** Aucun « AI Doctor » ni meeting wins/mistakes (grep + lecture). Il décrit « speedboat teams », « power couples ».
3. *« cap → manager approval before T2 upgrade » (PPTX)* — **NOT FOUND.** Aucun T1/T2, cap, ni mécanisme d'upgrade par manager.
4. *« AI budget = experimentation budget for teams »* — **NOT FOUND.** « Budget » = R&D ($20M) et customer success ; aucune équivalence budget IA = budget d'expérimentation.

### Mahesh — 2 PARTIAL, 1 NOT FOUND
1. *« Designers submitting PRs — experimental »* — **PARTIAL.** Designers soumettant des PR : solidement appuyé (l.218-219, 258-275). Mais « experimental » non appuyé — il le présente comme pratique **établie et autorisée**.
2. *« Top-down to standardize infrastructure + bottom-up for workflows »* — **NOT FOUND.** Ce dichotomie top-down/bottom-up n'existe pas. Le tableau est plutôt culturel/bottom-up et inégal (l.377-392, 480).
3. *« Bottom-up — each team builds its own workflows »* — **PARTIAL.** Bottom-up/culturel appuyé, mais « each team builds its own workflows » surévalue (il insiste plutôt que les workflows ne sont **pas encore** réorganisés, l.453-456).

### Kunal Datta — 1 SUPPORTED, 1 PARTIAL
1. *« Leader = IC + reviewer. We're just rappers — humans orchestrate agents »* — **PARTIAL.** IC (l.780) et reviewer (follow-up l.62) appuyés. Mais « we're just rappers » est une **remarque jetée en fin d'échange** (l.821), sans explication ; le lien « rappers = humans orchestrate agents » est un gloss ajouté (possiblement même « wrappers » mal transcrit).
2. *« If he can do it, so can I »* — **SUPPORTED** (l.784, paraphrase fidèle).

### Tyler Malone — 2 PARTIAL (cœur appuyé)
1. *« CEO autonomous on his own deliverables — board reports without support »* — **PARTIAL.** Le CEO produit ses board reports/decks via ses propres workflows (l.51). « without support » est ajouté — jamais dit qu'il a remplacé du support.
2. *« Bottom-up — principal engineer builds, shares… encourages others »* — **SUPPORTED sur la substance** (l.39-43, 80-81, 591-597). « bottom-up » est un label de l'analyste, pas son mot.

### Daniel Guzman — 2 SUPPORTED, 1 PARTIAL, 1 NOT FOUND
1. *« CS email role SMB eliminated; person redeployed »* (PPTX) — **SUPPORTED** (l.101-106, 117-118).
2. *« Full-stack + product ownership ; engineers = reviewers more than coders »* — **PARTIAL.** Full-stack/product ownership OK (l.550-561). Mais son mot est **« orchestrator »** (l.146), pas « reviewer ».
3. *« Bottom-up — engineers adopt Cursor naturally »* — **NOT FOUND / contredit.** Il est l'**ambassadeur Cursor** qui anime meetups et mentore (l.51) — adoption pilotée, pas organique.
4. *« Per-fix learning loop : merged PR pushes context into skill »* (PPTX) — **SUPPORTED** (l.189-191 ; follow-up l.204-207). Réserve : il dit que ça « ne se déclenche parfois même pas » (l.227).

### Amrish Macedo — 0/4 NOT FOUND (toutes PPTX) ⚠️
1. *« All managers expected to IC with AI and ship weekly »* — **NOT FOUND.** Aucun mandat managers/IC/shipping hebdo.
2. *« I don't care about domain knowledge… hook up to the brain… ask the brain »* — **NOT FOUND.** « brain » et « domain knowledge » n'apparaissent jamais.
3. *« Daily cleanup trims brain »* — **NOT FOUND.**
4. *« Daily automated brain refresh »* — **NOT FOUND.** Concept opposé présent : il **fige** les versions de modèle (pinned, l.162-163).

### Catalin Vieru — 0/2 NOT FOUND — mauvais locuteur (PPTX) ⚠️
1. *« People who orchestrate agents… coding is a commodity »* — **NOT FOUND.** Son interview porte sur un workflow GTM/competitive-intel Google Cloud. Ressemble aux propos de Michael Bernstein / Arnon.
2. *« Identify hallucinations… changed interview 3-4 times »* — **NOT FOUND.** Aucun contenu recrutement/interview.

### Michael Bernstein — 2/2 SUPPORTED
1. *« Can't let an agent build without strong fundamentals — supply chain attacks »* — **SUPPORTED** (l.354, NPM/TanStack).
2. *« Commit ownership = result ownership, agent or not »* — **SUPPORTED** (l.255 « a carpenter doesn't blame his tools » ; follow-up l.344).

### Aditya Nemmaluri — 1 SUPPORTED, 1 PARTIAL
1. *« Bounding box on customer-facing agents as explicit policy »* — **SUPPORTED** (l.561-565).
2. *« Bounding box specifically for customer-facing agents, not internal ones »* — **PARTIAL.** Il dit « **especially** the customer facing ones » (l.564) — emphase, pas exclusion. Jamais dit que les agents internes sont exemptés.

### Alec Dickinson — 2/2 SUPPORTED
1. *« Who's accountable if something goes wrong = criterion for HITL »* — **SUPPORTED** (l.308-310).
2. *« Cost and ETA estimated at each turn… feedback loop »* — **SUPPORTED** (l.179-181).

### Arnon — 1 SUPPORTED (nuance)
1. *« Deliberate Haiku (routine) vs. Opus (complex) to optimize costs »* — **SUPPORTED avec nuance.** Haiku pour économiser sur grosses bases (l.193) OK. Mais son contraste explicite complexité/coût est **Opus vs Sonnet** (l.314-317), Haiku étant le fallback coût. La formulation Haiku-vs-Opus compresse deux distinctions.

### Cullen Brown — 1/1 SUPPORTED
1. *« Experimentation budget to explore… unjustified cases shut down »* — **SUPPORTED** (budget l.506 ; shutdowns via AI Council l.502). « without ROI justification » légèrement éditorialisé mais fidèle.

---

## Recommandations

1. **Bloc Charles Barton (0/4) :** re-sourcer ou retirer en priorité. Vérifier d'urgence si la citation "design team coding" appartient en réalité à Mahesh ou Kunal.
2. **Amrish (0/4) et Catalin (0/2) :** auditer le PPTX `MSFT-Frontier Firms-CheckIn4`. Si ces claims y figurent attribués à ces personnes, c'est une misattribution dans le deck, pas seulement un écart transcript. La piste forte est une réassignation entre locuteurs (les propos « commodity / hallucinations » correspondent à Michael/Arnon).
3. **Corriger les amplifications (PARTIAL) :** retirer « experimental » (Mahesh), « without support » (Tyler), remplacer « reviewer » par « orchestrator » (Daniel), corriger « read-only » (Mitchell), nuancer « caps » (Kal) et « not internal » (Aditya).
4. **Réserves de maturité :** signaler que la context ownership (Dmitry) est en cours, pas en place ; et que la bascule des 2 500 agents (Nishith) ne couvre que ~20 % des cas.

> ⚠️ **Périmètre non couvert :** ce cross-check porte uniquement sur les transcripts. Les citations taguées « PPTX case study » dont la source réelle est le deck ne sont pas validables ici à 100 %. Audit du PPTX recommandé en étape suivante.
