#!/bin/bash
#
# Assemble les fiches du Guide Dravet pour les equipes en un seul fichier markdown.
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
    OUTPUT="guide_equipes_complet_web.md"
  else
    OUTPUT="guide_equipes_complet.md"
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
  headerTemplate: "<div style=\"font-size:8px;width:100%;text-align:center;color:#999;\">Guide Dravet pour les equipes</div>"
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

# Guide Dravet pour les equipes

## Fiches pratiques pour l'accueil en structure residentielle

### 12 fiches autonomes pour les professionnels de l'accompagnement

*A destination des equipes educatives, soignantes et d'encadrement en etablissement*

---

</div>

EOF

# Sommaire
cat >> "$OUTPUT" << 'EOF'

# Sommaire

[**Introduction**](#introduction-comment-utiliser-ce-guide) — Pourquoi ce guide, comment l'utiliser

**Les 12 fiches pratiques**

- [Fiche 1 : Le syndrome de Dravet en 5 minutes](#fiche-1-le-syndrome-de-dravet-en-5-minutes)
- [Fiche 2 : Les medicaments interdits](#fiche-2-les-medicaments-interdits)
- [Fiche 3 : Protocole de crise](#fiche-3-protocole-de-crise-arbre-decisionnel)
- [Fiche 4 : SUDEP, le risque nocturne](#fiche-4-sudep-le-risque-nocturne)
- [Fiche 5 : La journee type d'un resident Dravet](#fiche-5-la-journee-type-dun-resident-dravet)
- [Fiche 6 : Reconnaitre la douleur sans les mots](#fiche-6-reconnaitre-la-douleur-sans-les-mots)
- [Fiche 7 : Crises dans la vie quotidienne](#fiche-7-crises-dans-la-vie-quotidienne)
- [Fiche 8 : Communiquer avec la famille](#fiche-8-communiquer-avec-la-famille)
- [Fiche 9 : Les droits du resident](#fiche-9-les-droits-du-resident-rappel)
- [Fiche 10 : Carte d'urgence](#fiche-10-carte-durgence-a-imprimer)
- [Fiche 11 : Le Dravet en 2 minutes (accueil nouveau personnel)](#fiche-11-le-syndrome-de-dravet-en-2-minutes)
- [Fiche 12 : Fiche chambre du resident](#fiche-12-fiche-chambre-du-resident-a-remplir-et-afficher)

EOF

# Assembler les fiches dans l'ordre
FILES=(
  "fiches/00_introduction.md"
  "fiches/01_identite_dravet.md"
  "fiches/02_medicaments_interdits.md"
  "fiches/03_protocole_crise.md"
  "fiches/04_sudep_surveillance.md"
  "fiches/05_vie_quotidienne.md"
  "fiches/06_reconnaitre_douleur.md"
  "fiches/07_crises_quotidien.md"
  "fiches/08_communication_famille.md"
  "fiches/09_droits_resident.md"
  "fiches/10_carte_urgence.md"
  "fiches/11_accueil_nouveau.md"
  "fiches/12_fiche_chambre.md"
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
