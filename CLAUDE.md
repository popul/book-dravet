# CLAUDE.md — Monorepo Syndrome de Dravet

## Description du projet
Monorepo contenant deux livrables complémentaires sur le syndrome de Dravet :
1. **Le Livre** (`livre/`) — Ouvrage de référence multidimensionnel, destiné à 3 publics : familles/aidants, corps médical, et professionnels de l'accompagnement.
2. **Le Fil d'Ariane** (`fil-ariane/`) — Guide d'action concret pour les familles d'adultes Dravet vivant en structure résidentielle (FAM, MAS, foyer de vie, l'Arche). 8 hypothèses d'amélioration avec plans d'action.

## Structure du monorepo
- `livre/chapitres/` — les 17 chapitres du livre (chapitre_XX.md)
- `livre/recherche/` — base de connaissances scientifiques (10 fiches)
- `fil-ariane/sections/` — les 8 hypothèses du guide d'action (H1-H8)
- `Makefile` racine — orchestre les deux builds

## Structure des chapitres du Livre
Chaque chapitre DOIT contenir exactement 4 sections dans cet ordre :
1. **L'Essentiel** (familles) — langage simple, analogies, pas de jargon
2. **Le Protocole** (médical) — terminologie précise, mécanismes, protocoles
3. **L'Accompagnement** (professionnels) — observation, sécurité, aménagement
4. **Le Point de Liaison** (synthèse) — tableau comparatif des 3 perspectives

Chaque chapitre inclut au moins un diagramme Mermaid.

## Structure du Fil d'Ariane
Chaque hypothèse (H1-H8) contient :
- Contexte et données chiffrées sourcées
- Plan d'action concret (étapes numérotées)
- Au moins un diagramme Mermaid
- Ton direct et chaleureux, orienté action

## Règles médicales critiques (NE PAS ENFREINDRE)
- **CONTRE-INDIQUÉS** : lamotrigine, carbamazépine, oxcarbazépine, phénytoïne, vigabatrine (bloqueurs sodiques = aggravation du Dravet)
- **Fenfluramine** : toujours mentionner l'échocardiographie obligatoire (risque valvulopathie 5-HT₂B)
- **Valproate** : toujours mentionner la contre-indication grossesse/femme en âge de procréer
- Ne jamais présenter un traitement comme "guérison" — les traitements actuels sont symptomatiques

## Conventions de rédaction
- Pas d'emojis dans le texte courant (seulement les icônes de section du livre : L'Essentiel, Le Protocole, L'Accompagnement, Le Point de Liaison)
- Notation chimique en Unicode (GABA-A, 5-HT₂B) et non en LaTeX ($GABA_A$)
- Ne pas laisser d'artefacts de conversation AI dans les chapitres
- Citations inline format [Auteur et al., année] dans les sections Protocole du livre
- **Accessibilité** : chaque terme scientifique doit être expliqué à sa première occurrence
- Tout nouveau terme ajouté au livre doit aussi être ajouté au glossaire (`livre/chapitres/glossaire.md`)

## Directives de mise en page mobile (PDF portrait)
- **Mermaid** : toujours utiliser `graph TD` (vertical), JAMAIS `graph LR` (horizontal)
- **Noeuds** : texte court (max ~20 caractères), utiliser `<br/>` pour les retours à la ligne
- **Labels d'arêtes** : max ~15 caractères
- **Subgraphs** : titre court (1-2 mots)
- **Tableaux** : max 4 colonnes, texte concis dans les cellules
