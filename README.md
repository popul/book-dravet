# Syndrome de Dravet — Ouvrage de Référence

Ouvrage complet, didactique et multidimensionnel sur le **syndrome de Dravet**, conçu comme un pont entre les familles, les professionnels de l'accompagnement et le corps médical.

## Trois niveaux de lecture

Chaque chapitre intègre systématiquement trois perspectives :

| Section | Public cible | Approche |
|---|---|---|
| **L'Essentiel** | Familles et aidants | Langage simple, analogies concrètes |
| **Le Protocole** | Corps médical | Terminologie précise, mécanismes, protocoles |
| **L'Accompagnement** | Éducateurs, structures d'accueil | Observation, sécurité, aménagement |

Un **Point de Liaison** clôt chaque chapitre avec un tableau comparatif des trois perspectives.

## Plan de l'ouvrage

- **Introduction** — Guide de lecture
- **Partie I — L'Architecture du Chaos** (Science fondamentale) : Étiologie, Physiopathologie, Hétérogénéité
- **Partie II — La Chronique d'une Maladie** (Évolution clinique) : Première année, Enfance/Adolescence, Comorbidités
- **Partie III — L'Arsenal Thérapeutique** (Traitements) : Pharmacopée classique, Traitements ciblés, Protocole d'urgence
- **Partie IV — L'Impact Global** (Dimension humaine) : Écosystème familial, Inclusion et droits
- **Partie V — L'Horizon de Vie** (Âge adulte et sénescence) : Transition pédiatrie/adulte, Vie adulte, Vieillissement, Éthique et fin de vie
- **Partie VI — Demain** (Recherche) : Thérapies géniques, Conclusion

## Structure du dépôt

```
chapitres/              17 chapitres + introduction, glossaire, bibliographie
recherche/              7 fiches de synthèse scientifique
specifications_projet.md   Plan et directives de production
PROGRESS_TRACKER.md        État d'avancement
assemble.sh                Script d'assemblage du livre complet
style.css                  Feuille de style pour l'export PDF
Makefile                   Build multi-OS (deps, assemblage, PDF)
.github/workflows/         CI : build, release, GitHub Pages
template.html              Template HTML pour le site web
```

## Générer le livre

```bash
make deps     # Installer les dépendances (Node.js, pandoc, md-to-pdf) — macOS / Linux
make          # Assembler le markdown et générer le PDF
make md       # Assembler uniquement le markdown
make pdf      # Générer le PDF
make html     # Générer le site HTML (GitHub Pages, avec diagrammes Mermaid)
make clean    # Supprimer les fichiers générés
```

### Prérequis

- **PDF** : [md-to-pdf](https://github.com/simonhaenisch/md-to-pdf) (Node.js + Chromium headless)
- **HTML** : [pandoc](https://pandoc.org)

`make deps` installe tout automatiquement via Homebrew (macOS) ou apt (Linux).

### CI / CD

Le dépôt inclut trois workflows GitHub Actions :

- **Build** : génère le PDF à chaque push/PR sur `master` (artefact téléchargeable)
- **Release** : crée une release GitHub avec le PDF à chaque push de tag `v*`
- **Pages** : déploie le livre en HTML sur GitHub Pages à chaque push sur `master`

```bash
git tag v1.0.0
git push origin v1.0.0   # Déclenche la release
```

## Avertissement médical

Les informations contenues dans cet ouvrage sont fournies à titre éducatif et ne remplacent en aucun cas un avis médical professionnel. Les traitements du syndrome de Dravet sont symptomatiques — aucun traitement curatif n'existe à ce jour.

## Licence

Tous droits réservés.
