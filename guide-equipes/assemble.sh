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

### 10 fiches autonomes pour les professionnels de l'accompagnement

*A destination des equipes educatives, soignantes et d'encadrement en etablissement*

---

</div>

EOF

# Sommaire
cat >> "$OUTPUT" << 'EOF'

# Sommaire

[**Introduction**](#introduction) — Pourquoi ce guide, comment l'utiliser

**Les 10 fiches pratiques**

- [Fiche 1 : Identite Dravet](#fiche-1--identite-dravet) — Ce qu'il faut savoir en priorite
- [Fiche 2 : Medicaments interdits](#fiche-2--medicaments-interdits) — Les molecules a ne jamais administrer
- [Fiche 3 : Protocole crise](#fiche-3--protocole-crise) — Que faire pendant et apres une crise
- [Fiche 4 : SUDEP et surveillance](#fiche-4--sudep-et-surveillance) — Comprendre et reduire le risque
- [Fiche 5 : Vie quotidienne](#fiche-5--vie-quotidienne) — Amenager l'environnement et les activites
- [Fiche 6 : Reconnaitre la douleur](#fiche-6--reconnaitre-la-douleur) — Evaluer ce qui ne se dit pas
- [Fiche 7 : Crises et quotidien](#fiche-7--crises-et-quotidien) — Gerer les situations du jour le jour
- [Fiche 8 : Communication famille](#fiche-8--communication-famille) — Construire le lien avec les proches
- [Fiche 9 : Droits du resident](#fiche-9--droits-du-resident) — Cadre juridique et bonnes pratiques
- [Fiche 10 : Carte d'urgence](#fiche-10--carte-durgence) — Le document a avoir sur soi

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
