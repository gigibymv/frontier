# Operating Capabilities Slide Traits - Bilingual Evidence Guide

Purpose: explain the operating-capability traits dimension by dimension, using the slide wording so each item is easy to find. Each trait includes an English label, a French label, a French description, and examples or evidence status.

Evidence status:

- `Observed - strong`: transcript-backed by multiple substantive sources.
- `Observed - partial`: real or plausible transcript signal, but mono-source, adjacent, or not strong enough for a strict benchmark trait.
- `Not yet verified`: do not present as interview-verified until re-sourced.
- `Do not use`: previously flagged as contaminated or unsupported.

## 1. Organization Structure & Composition

| English trait | Trait en francais | Evidence status | Description en francais | Exemples / evidence |
|---|---|---|---|---|
| Smaller team ("1 engineer builds") | Equipes plus petites ("1 ingenieur construit") | Observed - partial | L'idee est que l'IA compresse la taille minimale d'une equipe capable de livrer un produit ou une fonctionnalite. Le signal existe surtout dans les startups, mais il n'est pas encore assez strictement source comme trait multi-source autonome. | Kunal fixe un objectif hebdomadaire de shipping avec IA (`Startup_Kunal Datta_20260511.md:780-782`). Vijay montre que les equipes operations et people peuvent scaler sans croissance proportionnelle (`Startup_Vijay Devatha_20260514.md:342-363`). |
| Middle-management layer reduced as coordination shifts up | Reduction de la couche de management intermediaire quand la coordination remonte | Not yet verified | L'idee est que l'IA prend en charge une partie de la coordination quotidienne, ce qui pousserait le role des managers vers la supervision, la priorisation et la revue. Dans les transcripts stricts, ce trait n'est pas encore assez directement prouve comme changement structurel. | Adjacent: Kunal dit que le role de l'expert devient plus "reviewer" ou "manager" (`Startup_Kunal Datta Follow Up_20260609.md:62`). Do not state as confirmed reduction of middle management. |
| Older functions merging and roles being redesigned | Fusion d'anciennes fonctions et redesign des roles | Observed - strong | Les frontieres entre fonctions deviennent moins nettes: des operations, people, product, design ou engineering absorbent des taches autrefois separees. Ce trait est observe des deux cotes, donc il ne doit pas etre classe startup-only ou enterprise-only. | Kal/JPMC montre le passage du traitement documentaire humain vers des resumes IA avec revue (`Startup_Kal Gangavarapu_20260608.md:61-64`, `:97`). Vijay montre l'equipe operations et people qui change de role et scale autrement (`Startup_Vijay Devatha_20260514.md:342-363`). |
| AI champions who push adoption | Champions IA qui poussent l'adoption | Observed - partial | Des individus ou leaders diffusent les usages IA, partagent les workflows et rendent l'adoption visible. Le signal est reel, mais il se confond avec peer sharing et leadership behavior. | Tyler mentionne le canal Slack `AI Upskilling` (`Startup_Tyler Malone_20260520.md:591`). Dmitry decrit un marketplace interne de workflows et plugins (`Enterprise_Dmitry Shkolnik_20260611.md:328`). |
| Creation of AI steering committees (risk, strategy, and/or cost) | Creation de comites de pilotage IA (risque, strategie et/ou cout) | Observed - partial | Les organisations peuvent creer une instance de gouvernance pour arbitrer risques, strategie, budget et outils IA. Le trait est plausible mais pas assez multi-source dans les transcripts stricts. | Cullen decrit un council qui peut fermer des cas non justifies, mais cela reste mono-source dans le strict check (`Startup_Cullen Brown_20260601.md:506-512`). |
| Focus on "no silos" | Focus sur l'absence de silos | Observed - partial | L'IA a plus de valeur quand les connaissances, donnees et workflows traversent les silos fonctionnels. Le trait est important comme principe, mais pas encore assez net comme operating trait strict. | Alec souligne que les entreprises doivent enlever les silos entre product, business et technology (`Startup_Alec Dickinson_20260508.md:201`). |
| Non-engineers as production code shippers | Non-ingenieurs qui livrent du code de production | Observed - strong | Des profils non-engineering peuvent creer des outils, automatisations ou PRs, mais sous revue, permissions et garde-fous. Le point important est "production contribution under review", pas "acces libre a la prod". | Mitchell: un non-technical employee peut automatiser son job si l'acces est donne (`Startup_Mitchell Fierro_20260601.md:111-112`). Mahesh: design/product teams peuvent contribuer et "Anyone can submit the PR" (`Startup_Mahesh_20260522.md:219`, `:275`). |
| Formal context ownership responsibility | Responsabilite formelle de proprietaire du contexte | Observed - partial | Certaines organisations commencent a traiter le contexte comme un actif qui doit avoir un owner, comme les metrics. Le signal enterprise est fort mais mono-source comme role formel. | Dmitry: extension de la logique de metric ownership vers context ownership pour maintenir la fraicheur et approuver les changements (`Enterprise_Dmitry Shkolnik_20260611.md:647-649`). |

## 2. Talent Readiness

| English trait | Trait en francais | Evidence status | Description en francais | Exemples / evidence |
|---|---|---|---|---|
| Interviews with live build of AI or plan.md | Entretiens avec construction live d'IA ou `plan.md` | Observed - partial | Le recrutement peut tester la capacite a utiliser l'IA en situation reelle, par exemple construire un produit ou produire un plan avant execution. Le signal est startup-shaped mais pas strictement multi-source. | Kunal decrit un entretien ou le candidat recoit un prompt et doit construire un produit utilisable en une heure (`Startup_Kunal Datta_20260511.md:671`). |
| AI fluency requirement for candidates and recruiters | Exigence de fluence IA pour candidats et recruteurs | Observed - strong | La competence IA devient un seuil d'employabilite ou de performance, pas seulement un bonus. Ce trait est observe dans startups et grandes organisations. | Cullen: chaque employe a l'AI adaptiveness comme critere de performance (`Startup_Cullen Brown_20260601.md:536`). Pat: AI proficiency devient un facteur "do or die" (`Enterprise_Pat Sheth_20260609.md:505-513`). |
| Curriculums per function to increase AI literacy for reskilling | Curriculums par fonction pour augmenter la literacy IA et reskiller | Observed - partial | Les entreprises commencent a former par fonction, mais les transcripts soutiennent surtout le reskilling general et l'apprentissage hands-on, pas encore des curriculums fonctionnels formalises. | Nishith/Maersk decrit le reskilling de talents internes tech vers ML/LLM par mise en pratique sur initiatives (`Startup_Nishith Sahu_20260603.md:442-443`). |
| Classifying skills and roles by replaceability | Classification des competences et roles selon leur remplacabilite | Observed - partial | Les organisations commencent a regarder quels roles resteront necessaires, lesquels seront automatises, et quelles competences deviennent durables. Le meilleur signal est enterprise mais mono-source. | Pat demande pour chaque role: est-ce encore necessaire, peut-il etre automatise, est-il future-proof? (`Enterprise_Pat Sheth_20260609.md:499-505`). |
| Novel roles focused on orchestration and governance | Nouveaux roles centres sur l'orchestration et la gouvernance | Observed - partial | Le travail se deplace vers l'orchestration d'agents, la revue, la supervision et la gouvernance. Le trait exact "novel roles" est moins prouve que le shift de role. | Daniel: le role de l'engineer devient "orchestrator" (`Startup_Daniel Guzman_20260522.md:146`). Kunal: l'expert devient reviewer/manager (`Startup_Kunal Datta Follow Up_20260609.md:62`). |
| Core engineering skill shifting from coding to orchestration | Competence coeur engineering qui passe du code a l'orchestration | Observed - strong | Pour les profils engineering frontier, la valeur se deplace de l'ecriture manuelle de code vers la decomposition, le pilotage d'agents, la revue, et la qualite du systeme. | Daniel: "the role of engineer is more like an orchestrator" (`Startup_Daniel Guzman_20260522.md:146`). Michael insiste sur la necessite de ne pas laisser un agent construire sans supervision (`Startup_Michael Bernstein_20260512.md:354`). |
| Hiring screening for role durability / future-proofing | Screening du recrutement pour durabilite / future-proofing du role | Observed - partial | Avant d'ouvrir un poste, certaines organisations demandent si le role existera encore et si la personne sera adaptable a l'IA. Signal fort mais mono-source. | Pat: "is this role something we'll need?" et "future-proof and adaptable" (`Enterprise_Pat Sheth_20260609.md:499-505`). |

## 3. Performance Management

| English trait | Trait en francais | Evidence status | Description en francais | Exemples / evidence |
|---|---|---|---|---|
| AI leverage as explicit review dimension | Leverage IA comme dimension explicite d'evaluation | Observed - partial | L'utilisation de l'IA commence a entrer dans l'evaluation de performance, mais les systemes matures restent rares. Il faut plutot parler de seuil de proficiency/performance que de systeme complet. | Cullen: AI adaptiveness fait partie de la review cycle et promotion (`Startup_Cullen Brown_20260601.md:536`). Pat dit que l'AI proficiency devient un facteur plus important (`Enterprise_Pat Sheth_20260609.md:505-513`). |
| Promoted on AI leverage AND on helping others scale | Promotion basee sur le leverage IA ET l'aide aux autres a scaler | Do not use | Ce libelle n'est pas transcript-verifie dans le strict audit. Ne pas l'utiliser comme trait observe. | No verified transcript example in the current strict check. Previously linked to unverified/PPTX-only material. |
| Token consumption is secondary to orchestration efficiency | La consommation de tokens est secondaire face a l'efficacite d'orchestration | Observed - partial | Certaines grandes organisations ne cherchent pas seulement a minimiser les tokens; elles arbitrent entre cout, qualite et efficacite du process. Le signal est surtout Kal/JPMC et reste etroit. | Kal/JPMC separe normal chat, coding tools et agentic orchestration; l'orchestration est concue pour l'efficacite du process (`Startup_Kal Gangavarapu_20260608.md:211-222`). |

## 4. Review & Learning Culture

| English trait | Trait en francais | Evidence status | Description en francais | Exemples / evidence |
|---|---|---|---|---|
| Failure tolerance and open sandboxing | Tolerance a l'echec et sandboxing ouvert | Observed - partial | Les organisations encouragent l'experimentation et l'apprentissage, mais avec limites de securite et budget. Le trait est plausible mais pas assez strictement multi-source comme slide claim. | Kunal decrit une culture "go play and see what works" et partage des resultats (`Startup_Kunal Datta_20260511.md:605`). Cullen decrit un budget d'experimentation encadre (`Startup_Cullen Brown_20260601.md:506-512`). |
| Project postmortems placed into a monorepo | Postmortems projet places dans un monorepo | Not yet verified | L'idee est de transformer les apprentissages de projet en contexte reutilisable par les agents. Cette formulation precise n'est pas encore sourcee dans les transcripts stricts. | No verified transcript example in the current strict check. |
| Diagnostic deliberation forums ("AI doctor meeting") | Forums de deliberation diagnostic ("AI doctor meeting") | Do not use | Ce claim a ete signale comme non verifie/contamine. Ne pas le presenter comme evidence interview. | No verified transcript example; previously attributed to Charles Barton without transcript support. |
| Remove older / invalidated designs for clean knowledge base | Retirer les anciens designs invalides pour garder une base de connaissance propre | Observed - partial | Les equipes cherchent a eviter que les agents reutilisent des decisions obsoletes. Signal interessant mais mono-source/adjacent. | Michael mentionne l'idee de retirer ou invalider une ancienne decision de design pour eviter qu'un agent la suggere a nouveau (`Startup_Michael Bernstein Follow Up_20260521.md:312-313`). |
| Review and codification of "tribal" knowledge | Revue et codification de la connaissance tribale | Observed - partial | Le probleme de fond est reel: le savoir implicite des experts est difficile a encoder. Les pratiques matures de codification restent moins prouvees que le gap lui-meme. | Kunal parle de tacit/tribal knowledge difficile a coder dans le systeme (`Startup_Kunal Datta Follow Up_20260609.md:142-155`). Dmitry propose context ownership par experts metier (`Enterprise_Dmitry Shkolnik_20260611.md:647-649`). |
| Peer-to-peer workflow sharing as adoption norm | Partage pair-a-pair de workflows comme norme d'adoption | Observed - strong | L'adoption se diffuse par partage de workflows, tips, skills et plugins entre pairs. Mecanismes plus informels en startup, plus marketplace/standardisation en enterprise. | Tyler: canal Slack `AI Upskilling` pour partager les tips (`Startup_Tyler Malone_20260520.md:591`). Dmitry: workflows/skills places dans un marketplace interne (`Enterprise_Dmitry Shkolnik_20260611.md:328-353`). |

## 5. Judgment & Accountability

| English trait | Trait en francais | Evidence status | Description en francais | Exemples / evidence |
|---|---|---|---|---|
| Committer owns AI output | Le committer possede la responsabilite de l'output IA | Observed - strong | L'IA est un outil; la personne qui commit, livre ou approuve reste responsable du resultat. Ce trait est fortement soutenu cote startups/scale-ups. | Michael: la personne est responsable du code qu'elle commit, LLM ou non (`Startup_Michael Bernstein_20260512.md:255`, `Startup_Michael Bernstein Follow Up_20260521.md:344`). Alec pose la question de qui est accountable si ca tourne mal (`Startup_Alec Dickinson_20260508.md:308-309`). |
| Coordination chain and roles are one query, pushing oversight up | La chaine de coordination et les roles deviennent une requete, poussant l'oversight vers le haut | Observed - partial | L'IA peut compresser la coordination et faire remonter le role humain vers la supervision. Le libelle exact reste plus conceptuel que directement prouve. | Kunal decrit l'expert comme reviewer/manager (`Startup_Kunal Datta Follow Up_20260609.md:62`). Daniel parle de l'engineer comme orchestrator (`Startup_Daniel Guzman_20260522.md:146`). |
| Defined junction of output review by human vs multiple/other LLMs | Jonction definie entre revue humaine et revue par plusieurs/autres LLMs | Observed - strong | Les equipes definissent des etapes ou l'output est d'abord revu par d'autres LLMs, puis par un humain pour les decisions finales ou la responsabilite. | Kunal: plan technique revu par un second LLM puis par l'equipe/code owners (`Startup_Kunal Datta_20260511.md:555-559`). Michael: "once we get all the LLM issues resolved, I will do a human pass" (`Startup_Michael Bernstein_20260512.md:312-313`). |
| Higher quality threshold over internal for customer-facing AI | Seuil qualite plus eleve pour l'IA customer-facing que pour l'interne | Observed - strong | Les outputs customer-facing gardent plus de controles, car la confiance client, la reputation et le risque externe priment sur la simple reduction de cout. | Vijay garde toujours un bouton "talk to a human" pour ne pas eroder la confiance client (`Startup_Vijay Devatha_20260514.md:649`). Kal/JPMC dit que customer trust et reputation risk priment (`Startup_Kal Gangavarapu_20260608.md:82-84`). Nishith/Maersk garde un CX agent humain dans la boucle (`Startup_Nishith Sahu_20260603.md:96`). |
| Rebuilding workflows rather than AI taking over existing workflows | Reconstruire les workflows plutot que laisser l'IA reprendre l'existant | Observed - partial | Les meilleurs cas ne se contentent pas d'ajouter un agent sur un process existant; ils redesignent les etapes, les donnees, les handoffs et les controles. Le signal est fort dans certains cas mais pas encore un trait strict exclusif. | Nishith/Maersk a concu une architecture en couches avec classification, LangChain, data layer, templates et HITL (`Startup_Nishith Sahu_20260603.md:69-86`). Vijay distingue quand utiliser automation programmatique vs solution non deterministe (`Startup_Vijay Devatha_20260514.md:429-449`). |
| AI changing roles without reputation risk or customer trust | L'IA change les roles sans compromettre reputation ou confiance client | Observed - partial | Le fond est que les roles changent, mais les frontieres de confiance et reputation limitent ce que l'IA peut prendre en charge. La phrase slide est trop large; il faut la reformuler. | Kal/JPMC refuse de toucher certaines zones par design a cause de la reputation et customer trust (`Startup_Kal Gangavarapu_20260608.md:277`). Vijay maintient un human touchpoint pour confiance client (`Startup_Vijay Devatha_20260514.md:649`). |

## 6. AI Economics & Value

| English trait | Trait en francais | Evidence status | Description en francais | Exemples / evidence |
|---|---|---|---|---|
| AI sits in R&D, service, and information layers within total portfolio | L'IA se situe dans les couches R&D, service et information du portefeuille total | Not yet verified | Ce trait ressemble a une taxonomie de portefeuille plus qu'a un pattern transcript-verifie. Ne pas le presenter comme insight interview sans sourcing supplementaire. | No verified transcript example in the current strict check. |
| Value capture shifts from T&M to outcome-based AI rate models | La capture de valeur passe du T&M a des modeles de prix IA bases sur l'outcome | Not yet verified | Le passage a l'outcome-based pricing est strategiquement plausible, mais pas prouve comme capacite operationnelle implementee dans les transcripts stricts. | No strong implemented transcript example in the current strict check. |
| Limit token burn until definitive value realization | Limiter la consommation de tokens jusqu'a preuve definitive de valeur | Observed - strong | Les grandes organisations controlent la consommation par use case, type de workflow ou allocation enterprise tant que la valeur n'est pas suffisamment prouvee. | Kal/JPMC a mis des limites proactives sur les usages coding/tools (`Startup_Kal Gangavarapu_20260608.md:211-218`). Nishith/Maersk limite les tokens aux case types onboarded et acceptes (`Startup_Nishith Sahu_20260603.md:421-425`). |
| Model routing by task complexity and cost | Routage des modeles selon complexite de tache et cout | Observed - strong | Les equipes choisissent differents modeles selon le niveau de complexite, le besoin de revue, le cout et la taille du contexte. | Arnon utilise Haiku pour economiser des tokens et Opus pour le debut/review (`Startup_Arnon_20260608.md:193`, `:314`). Alec estime cout et temps par turn/modele (`Startup_Alec Dickinson_20260508.md:179-180`). |
| Ring-fenced experimentation budget before proven ROI | Budget d'experimentation ring-fenced avant ROI prouve | Observed - partial | Certaines organisations donnent un budget limite pour experimenter avant de prouver le ROI, avec possibilite de fermer les cas non justifies. Signal fort mais mono-source. | Cullen decrit un budget annuel limite pour tester de nouveaux outils IA (`Startup_Cullen Brown_20260601.md:506-512`). |

## Practical Slide Guidance

Use these as **transcript-verified observed traits**:

- `Non-engineers as production code shippers` (softened to governed contribution).
- `AI fluency requirement for candidates and recruiters`.
- `Core engineering skill shifting from coding to orchestration`.
- `Peer-to-peer workflow sharing as adoption norm`.
- `Committer owns AI output`.
- `Defined junction of output review by human vs multiple/other LLMs`.
- `Higher quality threshold over internal for customer-facing AI`.
- `Limit token burn until definitive value realization`.
- `Model routing by task complexity and cost`.

Use these only as **preliminary / needs more sourcing**:

- `Formal context ownership responsibility`.
- `Hiring screening for role durability / future-proofing`.
- `Ring-fenced experimentation budget before proven ROI`.
- `Review and codification of "tribal" knowledge`.
- `Rebuilding workflows rather than AI taking over existing workflows`.

Do **not** use these as interview-verified without re-sourcing:

- `Diagnostic deliberation forums ("AI doctor meeting")`.
- `Promoted on AI leverage AND on helping others scale`.
- `Project postmortems placed into a monorepo`.
- `Value capture shifts from T&M to outcome-based AI rate models`.
