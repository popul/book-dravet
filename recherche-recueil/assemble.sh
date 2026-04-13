#!/bin/bash
#
# Assemble les fiches de recherche en un seul fichier markdown.
#
# Usage:
#   ./assemble.sh                   # sortie PDF
#   ./assemble.sh --html            # sortie HTML
#   ./assemble.sh --html -o out.md  # idem, fichier de sortie personnalise
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

# Fichier de sortie par defaut
if [[ -z "$OUTPUT" ]]; then
  if [[ "$MODE" == "html" ]]; then
    OUTPUT="recherche_complet_web.md"
  else
    OUTPUT="recherche_complet.md"
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
  headerTemplate: "<div style=\"font-size:8px;width:100%;text-align:center;color:#999;\">Base de Recherche — Syndrome de Dravet</div>"
  footerTemplate: "<div style=\"font-size:8px;width:100%;text-align:center;color:#999;\"><span class=\"pageNumber\"></span> / <span class=\"totalPages\"></span></div>"
stylesheet: style.css
---
FRONTMATTER
else
  : > "$OUTPUT"
fi

# Page de titre
cat >> "$OUTPUT" << 'EOF'

<div class="title-page">

# Base de Recherche

## Syndrome de Dravet

### Syntheses scientifiques et documentaires

*10 fiches thematiques — genetique, traitements, comorbidites, vie adulte, aspects sociaux*

---

</div>

EOF

# Sommaire
cat >> "$OUTPUT" << 'EOF'

# Sommaire

**Science fondamentale**

- [01 — Genetique et SCN1A](#genetique-du-syndrome-de-dravet--le-gene-scn1a)
- [02 — Physiopathologie](#physiopathologie-du-syndrome-de-dravet)
- [03 — Traitements pharmacologiques](#traitements-pharmacologiques-du-syndrome-de-dravet)

**Clinique et developpement**

- [04 — Comorbidites et developpement](#comorbidites-et-developpement-dans-le-syndrome-de-dravet)
- [05 — Therapie genique et innovation](#therapie-genique-et-approches-innovantes-dans-le-syndrome-de-dravet)
- [06 — Vie adulte et vieillissement](#vie-adulte-et-vieillissement-dans-le-syndrome-de-dravet)

**Dimension humaine et sociale**

- [07 — Aspects sociaux et ethiques](#aspects-sociaux-economiques-et-ethiques-du-syndrome-de-dravet)
- [08 — Non-reponse therapeutique](#non-reponse-therapeutique-dans-le-syndrome-de-dravet)
- [09 — Vie en structure residentielle](#vie-en-structure-residentielle-pour-adultes-avec-syndrome-de-dravet)
- [10 — Vieillissement des aidants et succession](#vieillissement-des-parents-aidants-et-planification-de-la-succession)

EOF

# Les fiches de recherche (dans livre/recherche/)
RESEARCH_DIR="../livre/recherche"
FILES=(
  "$RESEARCH_DIR/01_genetique_SCN1A.md"
  "$RESEARCH_DIR/02_physiopathologie.md"
  "$RESEARCH_DIR/03_traitements.md"
  "$RESEARCH_DIR/04_comorbidites_developpement.md"
  "$RESEARCH_DIR/05_therapie_genique_innovation.md"
  "$RESEARCH_DIR/06_vie_adulte_vieillissement.md"
  "$RESEARCH_DIR/07_aspects_sociaux_ethiques.md"
  "$RESEARCH_DIR/08_non_reponse_therapeutique.md"
  "$RESEARCH_DIR/09_vie_structure_residentielle.md"
  "$RESEARCH_DIR/10_vieillissement_aidants_succession.md"
)

for f in "${FILES[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "Attention : $f introuvable, ignore." >&2
    continue
  fi
  echo "" >> "$OUTPUT"
  cat "$f" >> "$OUTPUT"
  echo "" >> "$OUTPUT"
done

echo "Assemblage termine ($MODE): $(wc -l < "$OUTPUT") lignes -> $OUTPUT"
