#!/bin/bash
#
# Assemble les chapitres en un seul fichier markdown.
#
# Usage:
#   ./assemble.sh                   # sortie PDF (frontmatter md-to-pdf, sans mermaid)
#   ./assemble.sh --html            # sortie HTML (sans frontmatter, mermaid conservé)
#   ./assemble.sh --html -o out.md  # idem, fichier de sortie personnalisé
#

MODE="pdf"
OUTPUT=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --html) MODE="html"; shift ;;
    -o)     OUTPUT="$2"; shift 2 ;;
    *)      echo "Option inconnue : $1" >&2; exit 1 ;;
  esac
done

# Fichier de sortie par défaut
if [[ -z "$OUTPUT" ]]; then
  if [[ "$MODE" == "html" ]]; then
    OUTPUT="livre_complet_web.md"
  else
    OUTPUT="livre_complet.md"
  fi
fi

# Frontmatter md-to-pdf (uniquement pour le PDF)
if [[ "$MODE" == "pdf" ]]; then
  cat > "$OUTPUT" << 'FRONTMATTER'
---
pdf_options:
  format: A4
  margin: 20mm
  printBackground: true
  displayHeaderFooter: true
  headerTemplate: '<div style="font-size:8px;width:100%;text-align:center;color:#999;">Syndrome de Dravet — Ouvrage de Référence</div>'
  footerTemplate: '<div style="font-size:8px;width:100%;text-align:center;color:#999;"><span class="pageNumber"></span> / <span class="totalPages"></span></div>'
stylesheet: style.css
---
FRONTMATTER
else
  : > "$OUTPUT"
fi

# Page de titre
cat >> "$OUTPUT" << 'EOF'

<div class="title-page">

# Syndrome de Dravet

## Comprendre, Soigner, Accompagner

### Ouvrage de Référence Multidimensionnel

*Pour les familles, le corps médical et les professionnels de l'accompagnement*

---

</div>

EOF

# Sommaire
cat >> "$OUTPUT" << 'EOF'

# Sommaire

**Introduction** — [Guide de lecture](#introduction)

**Partie I : L'Architecture du Chaos**
- [Chapitre 1 : Le Code Source (Étiologie)](#chapitre-1-le-code-source-etiologie)
- [Chapitre 2 : La Tempête Électrique (Physiopathologie)](#chapitre-2-la-tempete-electrique-physiopathologie)
- [Chapitre 3 : La Diversité des Visages (Hétérogénéité)](#chapitre-3-la-diversite-des-visages-heterogeneite)

**Partie II : La Chronique d'une Maladie**
- [Chapitre 4 : L'Éveil de la Maladie (La Première Année)](#chapitre-4-leveil-de-la-maladie-la-premiere-annee)
- [Chapitre 5 : La Traversée du Développement](#chapitre-5-la-traversee-du-developpement-enfance-et-adolescence)
- [Chapitre 6 : Les Comorbidités (Le Spectre Étendu)](#chapitre-6-les-comorbidites-le-spectre-etendu)

**Partie III : L'Arsenal Thérapeutique**
- [Chapitre 7 : La Pharmacopée Classique](#chapitre-7-la-pharmacopee-classique)
- [Chapitre 8 : La Révolution Moléculaire (Traitements Ciblés)](#chapitre-8-la-revolution-moleculaire-traitements-cibles)
- [Chapitre 9 : Le Protocole d'Urgence (Gestion des crises et SUDEP)](#chapitre-9-le-protocole-durgence-gestion-des-crises-et-sudep)

**Partie IV : L'Impact Global**
- [Chapitre 10 : L'Écosystème Familial](#chapitre-10-lecosysteme-familial)
- [Chapitre 11 : Inclusion et Droits](#chapitre-11-inclusion-et-droits-scolarite-juridique-social)

**Partie V : L'Horizon de Vie**
- [Chapitre 12 : La Transition Critique (Pédiatrie vers Adulte)](#chapitre-12-la-transition-critique-pediatrie-vers-adulte)
- [Chapitre 13 : La Vie Adulte Active (25-45 ans)](#chapitre-13-la-vie-adulte-active-25-45-ans)
- [Chapitre 14 : Le Grand Virage (45 ans et +)](#chapitre-14-le-grand-virage-45-ans-et)
- [Chapitre 15 : Éthique, Autonomie et Fin de Vie](#chapitre-15-ethique-autonomie-et-fin-de-vie)

**Partie VI : Demain**
- [Chapitre 16 : La Frontière de l'Espoir (Thérapies géniques)](#chapitre-16-la-frontiere-de-lespoir-therapies-geniques)
- [Chapitre 17 : Conclusion — Trois Mondes, Un Seul Combat](#chapitre-17-conclusion-trois-mondes-un-seul-combat)

[**Glossaire**](#glossaire) — [**Bibliographie**](#bibliographie)

EOF

# Assembler les chapitres dans l'ordre
FILES=(
  "chapitres/introduction.md"
  "chapitres/chapitre_01.md"
  "chapitres/chapitre_02.md"
  "chapitres/chapitre_03.md"
  "chapitres/chapitre_04.md"
  "chapitres/chapitre_05.md"
  "chapitres/chapitre_06.md"
  "chapitres/chapitre_07.md"
  "chapitres/chapitre_08.md"
  "chapitres/chapitre_09.md"
  "chapitres/chapitre_10.md"
  "chapitres/chapitre_11.md"
  "chapitres/chapitre_12.md"
  "chapitres/chapitre_13.md"
  "chapitres/chapitre_14.md"
  "chapitres/chapitre_15.md"
  "chapitres/chapitre_16.md"
  "chapitres/chapitre_17.md"
  "chapitres/glossaire.md"
  "chapitres/bibliographie.md"
)

for f in "${FILES[@]}"; do
  echo "" >> "$OUTPUT"
  cat "$f" >> "$OUTPUT"
  echo "" >> "$OUTPUT"
done

echo "Assemblage terminé ($MODE): $(wc -l < "$OUTPUT") lignes -> $OUTPUT"
