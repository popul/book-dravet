# Syndrome de Dravet — Monorepo

Ce depot contient **cinq livrables complementaires** sur le syndrome de Dravet, destines aux familles, aux professionnels de l'accompagnement et au corps medical.

## Les 5 livrables

### 1. Le Livre — Ouvrage de Reference

Ouvrage complet et multidimensionnel — 17 chapitres couvrant la science fondamentale, les traitements, la vie quotidienne (dysphagie, douleur, hygiene, vie affective), la dimension humaine et la recherche.

Chaque chapitre integre trois perspectives :

| Section | Public cible | Approche |
|---|---|---|
| **L'Essentiel** | Familles et aidants | Langage simple, analogies concretes |
| **Le Protocole** | Corps medical | Terminologie precise, mecanismes, protocoles |
| **L'Accompagnement** | Educateurs, structures d'accueil | Observation, securite, amenagement |

### 2. Le Fil d'Ariane — Guide d'action pour l'adulte Dravet en structure

Guide pratique pour les familles d'adultes vivant en structure residentielle (FAM, MAS, foyer de vie, l'Arche). Huit hypotheses d'amelioration avec plans d'action, couts, delais et parcours administratifs.

| # | Hypothese | Impact |
|---|---|---|
| H1 | Fenfluramine chez l'adulte | Eleve (80 % repondeurs) |
| H2 | Audit de la polytherapie | Moyen-eleve |
| H3 | Bilan douleur cachee | Tres eleve |
| H4 | Monitoring nocturne (SUDEP) | Vital |
| H5 | Regime Atkins modifie | Modere |
| H6 | Essais cliniques | Potentiellement transformateur |
| H7 | Droits face a la structure | Immediat |
| H8 | Preparer l'apres-parents | Essentiel |

### 3. Guide pour les equipes — 12 fiches pratiques

Fiches operationnelles pour le personnel en structure (educateurs, AMP, AES, veilleurs de nuit) : protocole de crise, medicaments interdits, surveillance nocturne, reconnaissance de la douleur, droits du resident, fiche chambre.

### 4. Base de recherche — 10 syntheses scientifiques

Syntheses documentaires sourcees : genetique SCN1A, physiopathologie, traitements, comorbidites, therapie genique, vie adulte, aspects sociaux, vie en structure, vieillissement des aidants.

### 5. Boite a outils — Documents a remplir et imprimer

17 outils pratiques repartis en 6 categories :

| Categorie | Outils |
|---|---|
| **Urgence** | Fiche d'urgence recto-verso, affiche contre-indications A4 |
| **Suivi medical** | Passeport medical, Profil Personnel de Douleur, Parcours de vie, Savoir parental |
| **Avant le RDV** | Checklists neurologue, gynecologue, dentiste, MDPH, osteodensitometrie |
| **Courriers types** | Revision projet personnalise, demande monitoring, personne qualifiee, demande PCH |

Tous les outils sont des pages HTML remplissables dans le navigateur, avec impression A4 optimisee.

## Structure du depot

```
livre/                     Ouvrage de reference (17 chapitres)
  chapitres/               Chapitres, glossaire, bibliographie
  recherche/               10 fiches de synthese scientifique

fil-ariane/                Guide d'action (8 hypotheses)
  sections/                Intro + 8 hypotheses + synthese

guide-equipes/             Guide pour les equipes (12 fiches)
  fiches/                  Fiches pratiques

recherche-recueil/         Recueil de recherche (10 syntheses)

boite-a-outils/            Documents a remplir et imprimer
  urgence/                 Fiche urgence, contre-indications
  passeport/               Passeport medical
  douleur/                 Profil Personnel de Douleur
  parcours/                Patient Journey Map
  savoir-parental/         Documentation du savoir parental
  rendez-vous/             Checklists avant RDV (5 specialites)
  courriers/               Modeles de courriers (4 types)

_shared/                   Ressources partagees (nav-banner)
Makefile                   Build racine (5 livrables)
CLAUDE.md                  Instructions pour Claude Code
CHANGELOG.md               Historique des versions
.github/workflows/         CI : build PDF, release, GitHub Pages
```

## Generer les livrables

```bash
make deps          # Installer les dependances (Node.js, pandoc, md-to-pdf)
make               # Construire les 4 livrables PDF
make html          # Les 5 en HTML (GitHub Pages)
make livre         # Livre seul
make fil-ariane    # Fil d'Ariane seul
make guide-equipes # Guide equipes seul
make clean         # Supprimer les fichiers generes
```

### Prerequis

- **PDF** : [md-to-pdf](https://github.com/simonhaenisch/md-to-pdf) (Node.js + Chromium headless)
- **HTML** : [pandoc](https://pandoc.org)

`make deps` installe tout automatiquement via Homebrew (macOS) ou apt (Linux).

### CI / CD

- **Build** : genere les 4 PDF a chaque push/PR sur `master`
- **Release** : cree une release GitHub avec les PDF a chaque tag `v*`
- **Pages** : deploie les 5 livrables en HTML sur GitHub Pages

## Avertissement medical

Les informations contenues dans ces documents sont fournies a titre educatif et ne remplacent en aucun cas un avis medical professionnel. Les traitements du syndrome de Dravet sont symptomatiques — aucun traitement curatif n'existe a ce jour.

## Licence

Tous droits reserves.
