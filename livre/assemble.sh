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
script:
  - url: https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.min.js
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

**Introduction** — Guide de lecture

**Partie I : L'Architecture du Chaos**
- Chapitre 1 : Le Code Source (Étiologie)
- Chapitre 2 : La Tempête Électrique (Physiopathologie)
- Chapitre 3 : La Diversité des Visages (Hétérogénéité)

**Partie II : La Chronique d'une Maladie**
- Chapitre 4 : L'Éveil de la Maladie (La Première Année)
- Chapitre 5 : La Traversée du Développement (Enfance et Adolescence)
- Chapitre 6 : Les Comorbidités (Le Spectre Étendu)

**Partie III : L'Arsenal Thérapeutique**
- Chapitre 7 : La Pharmacopée Classique
- Chapitre 8 : La Révolution Moléculaire (Traitements Ciblés)
- Chapitre 9 : Le Protocole d'Urgence (Gestion des crises et SUDEP)

**Partie IV : L'Impact Global**
- Chapitre 10 : L'Écosystème Familial
- Chapitre 11 : Inclusion et Droits (Scolarité, Juridique, Social)

**Partie V : L'Horizon de Vie**
- Chapitre 12 : La Transition Critique (Pédiatrie vers Adulte)
- Chapitre 13 : La Vie Adulte Active (25-45 ans)
- Chapitre 14 : Le Grand Virage (45 ans et +)
- Chapitre 15 : Éthique, Autonomie et Fin de Vie

**Partie VI : Demain**
- Chapitre 16 : La Frontière de l'Espoir (Thérapies géniques)
- Chapitre 17 : Conclusion — Trois Mondes, Un Seul Combat

**Glossaire**

**Bibliographie**

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

# Script Mermaid pour le PDF (transforme les blocs code en divs mermaid)
if [[ "$MODE" == "pdf" ]]; then
  cat >> "$OUTPUT" << 'MERMAID_INIT'

<script>
  // md-to-pdf (marked) converts ```mermaid to <code class="language-mermaid">
  // Mermaid JS expects <div class="mermaid"> with raw syntax
  document.querySelectorAll('code.language-mermaid').forEach(code => {
    const pre = code.parentElement;
    const div = document.createElement('div');
    div.className = 'mermaid';
    div.textContent = code.textContent;
    pre.replaceWith(div);
  });
  mermaid.initialize({ startOnLoad: false, theme: 'base',
    themeVariables: { primaryColor: '#ecf0f1', primaryBorderColor: '#2c3e50', lineColor: '#2c3e50' }
  });
  mermaid.run();
</script>
MERMAID_INIT
fi

echo "Assemblage terminé ($MODE): $(wc -l < "$OUTPUT") lignes -> $OUTPUT"
