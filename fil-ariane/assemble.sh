#!/bin/bash
#
# Assemble les sections du Fil d'Ariane en un seul fichier markdown.
#
# Usage:
#   ./assemble.sh                   # sortie PDF (frontmatter md-to-pdf, sans mermaid)
#   ./assemble.sh --html            # sortie HTML (sans frontmatter, mermaid conserve)
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
    OUTPUT="fil_ariane_complet_web.md"
  else
    OUTPUT="fil_ariane_complet.md"
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
  headerTemplate: "<div style=\"font-size:8px;width:100%;text-align:center;color:#999;\">Le Fil d&#39;Ariane</div>"
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

# Le Fil d'Ariane

## Guide d'action pour l'adulte Dravet en structure

### Huit pistes concretes pour ameliorer le quotidien

*A destination des familles, des medecins referents et des equipes d'accompagnement*

---

</div>

EOF

# Sommaire
cat >> "$OUTPUT" << 'EOF'

# Sommaire

[**Introduction**](#le-fil-dariane--introduction) — Pourquoi ce guide, comment l'utiliser

**Les huit hypotheses**

- [H1 : Fenfluramine — La molecule sous-utilisee](#hypothèse-1--la-fenfluramine-une-option-sous-utilisée-chez-ladulte)
- [H2 : Audit de polytherapie — Simplifier pour mieux traiter](#hypothèse-2--un-audit-pharmacologique-après-30-ans-de-traitement)
- [H3 : Bilan douleur — Detecter ce qui ne se dit pas](#hypothèse-3--chercher-la-douleur-cachée)
- [H4 : Monitoring nocturne — Surveiller la nuit](#hypothèse-4--surveiller-la-nuit-pour-protéger-la-vie)
- [H5 : Regime Atkins modifie — L'option metabolique](#hypothèse-5--le-régime-atkins-modifié-une-arme-complémentaire-faisable-en-foyer)
- [H6 : Essais cliniques — Explorer les nouvelles pistes](#hypothèse-6--les-essais-cliniques-une-fenêtre-qui-souvre)
- [H7 : Cadre juridique — Vos droits face a la structure](#hypothèse-7--vos-droits-face-à-la-structure-daccueil)
- [H8 : Apres les parents — Anticiper la continuite](#hypothèse-8--préparer-laprès--quand-les-parents-ne-pourront-plus)

[**Synthese**](#synthèse--par-où-commencer) — Vue d'ensemble et plan d'action

EOF

# Assembler les sections dans l'ordre
FILES=(
  "sections/introduction.md"
  "sections/H1_fenfluramine.md"
  "sections/H2_audit_polytherapie.md"
  "sections/H3_bilan_douleur.md"
  "sections/H4_monitoring_nocturne.md"
  "sections/H5_regime_atkins.md"
  "sections/H6_essais_cliniques.md"
  "sections/H7_cadre_juridique.md"
  "sections/H8_apres_parents.md"
  "sections/synthese.md"
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
