# Syndrome de Dravet — Monorepo

Ce dépôt contient deux livrables complémentaires sur le **syndrome de Dravet** :

## 1. Le Livre — Ouvrage de Référence

Ouvrage complet, didactique et multidimensionnel, conçu comme un pont entre les familles, les professionnels de l'accompagnement et le corps médical.

Chaque chapitre intègre trois perspectives :

| Section | Public cible | Approche |
|---|---|---|
| **L'Essentiel** | Familles et aidants | Langage simple, analogies concrètes |
| **Le Protocole** | Corps médical | Terminologie précise, mécanismes, protocoles |
| **L'Accompagnement** | Éducateurs, structures d'accueil | Observation, sécurité, aménagement |

17 chapitres couvrant : science fondamentale, évolution clinique, traitements, dimension humaine, vie adulte, recherche.

## 2. Le Fil d'Ariane — Guide d'action pour l'adulte Dravet en structure

Guide pratique et concret pour les familles d'adultes vivant avec le syndrome de Dravet en structure résidentielle (FAM, MAS, foyer de vie, l'Arche).

Huit pistes d'action :

| # | Hypothèse | Impact |
|---|---|---|
| H1 | Fenfluramine chez l'adulte | Élevé |
| H2 | Audit de la polythérapie | Moyen-élevé |
| H3 | Bilan douleur cachée | Élevé |
| H4 | Monitoring nocturne (SUDEP) | Vital |
| H5 | Régime Atkins modifié | Modéré |
| H6 | Essais cliniques | Incertain |
| H7 | Droits face à la structure | Élevé |
| H8 | Préparer l'après-parents | Préventif critique |

## Structure du dépôt

```
livre/                     Ouvrage de référence (17 chapitres)
  chapitres/               Chapitres, glossaire, bibliographie
  recherche/               10 fiches de synthèse scientifique
  Makefile                 Build du livre
  assemble.sh              Script d'assemblage
  template.html            Template HTML
  style.css                Feuille de style

fil-ariane/                Guide d'action
  sections/                8 hypothèses + intro + synthèse
  Makefile                 Build du guide
  assemble.sh              Script d'assemblage
  template.html            Template HTML (palette ambre)
  style.css                Feuille de style

Makefile                   Build racine (les deux livrables)
CLAUDE.md                  Instructions pour Claude Code
.github/workflows/         CI : build, release, GitHub Pages
```

## Générer les livrables

```bash
make deps          # Installer les dépendances (Node.js, pandoc, md-to-pdf)
make               # Construire les deux livrables (PDF)
make livre         # Livre seul
make fil-ariane    # Fil d'Ariane seul
make html          # Les deux en HTML (GitHub Pages)
make clean         # Supprimer les fichiers générés
```

### Prérequis

- **PDF** : [md-to-pdf](https://github.com/simonhaenisch/md-to-pdf) (Node.js + Chromium headless)
- **HTML** : [pandoc](https://pandoc.org)

`make deps` installe tout automatiquement via Homebrew (macOS) ou apt (Linux).

### CI / CD

- **Build** : génère les PDF à chaque push/PR sur `master`
- **Release** : crée une release GitHub avec les PDF à chaque tag `v*`
- **Pages** : déploie les deux livrables en HTML sur GitHub Pages

## Avertissement médical

Les informations contenues dans ces documents sont fournies à titre éducatif et ne remplacent en aucun cas un avis médical professionnel. Les traitements du syndrome de Dravet sont symptomatiques — aucun traitement curatif n'existe à ce jour.

## Licence

Tous droits réservés.
