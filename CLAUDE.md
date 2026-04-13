# CLAUDE.md — Ouvrage de Référence sur le Syndrome de Dravet

## Description du projet
Livre de référence multidimensionnel sur le syndrome de Dravet, destiné à 3 publics : familles/aidants, corps médical, et professionnels de l'accompagnement (éducateurs, structures d'accueil).

## Structure des chapitres
Chaque chapitre DOIT contenir exactement 4 sections dans cet ordre :
1. **L'Essentiel** (familles) — langage simple, analogies, pas de jargon
2. **Le Protocole** (médical) — terminologie précise, mécanismes, protocoles
3. **L'Accompagnement** (professionnels) — observation, sécurité, aménagement
4. **Le Point de Liaison** (synthèse) — tableau comparatif des 3 perspectives

Chaque chapitre inclut au moins un diagramme Mermaid.

## Organisation des fichiers
- `chapitres/` — les chapitres du livre (chapitre_XX.md)
- `recherche/` — base de connaissances scientifiques (publications, reviews)
- `specifications_projet.md` — plan et directives de production
- `PROGRESS_TRACKER.md` — état d'avancement

## Règles médicales critiques (NE PAS ENFREINDRE)
- **CONTRE-INDIQUÉS** : lamotrigine, carbamazépine, oxcarbazépine, phénytoïne, vigabatrine (bloqueurs sodiques = aggravation du Dravet)
- **Fenfluramine** : toujours mentionner l'échocardiographie obligatoire (risque valvulopathie 5-HT₂B)
- **Valproate** : toujours mentionner la contre-indication grossesse/femme en âge de procréer
- Ne jamais présenter un traitement comme "guérison" — les traitements actuels sont symptomatiques

## Conventions de rédaction
- Pas d'emojis dans le texte courant (seulement les icônes de section : L'Essentiel, Le Protocole, L'Accompagnement, Le Point de Liaison)
- Notation chimique en Unicode (GABA-A, 5-HT₂B) et non en LaTeX ($GABA_A$)
- Ne pas laisser d'artefacts de conversation AI dans les chapitres
- Les références bibliographiques seront ajoutées dans une phase ultérieure
- **Accessibilité** : chaque terme scientifique doit être expliqué à sa première occurrence dans les sections Essentiel et Accompagnement. Le glossaire (`chapitres/glossaire.md`) sert de référence transversale
- Tout nouveau terme ajouté au livre doit aussi être ajouté au glossaire

## Directives de mise en page mobile (PDF portrait)
- **Mermaid** : toujours utiliser `graph TD` (vertical), JAMAIS `graph LR` (horizontal)
- **Noeuds** : texte court (max ~20 caractères), utiliser `<br/>` pour les retours à la ligne
- **Labels d'arêtes** : max ~15 caractères
- **Subgraphs** : titre court (1-2 mots)
- **Tableaux** : max 4 colonnes, texte concis dans les cellules
