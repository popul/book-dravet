#!/bin/bash
OUTPUT="livre_complet.md"

# Garder le frontmatter YAML existant
# Ajouter la page de titre
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
  # Supprimer les blocs mermaid (ne seront pas rendus en PDF)
  sed '/^```mermaid$/,/^```$/d' "$f" >> "$OUTPUT"
  echo "" >> "$OUTPUT"
done

echo "Assemblage terminé: $(wc -l < "$OUTPUT") lignes"
