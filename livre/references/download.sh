#!/bin/bash
# =============================================================================
# download.sh -- Ouvrir les PDF PMC dans le navigateur pour telechargement manuel
# =============================================================================
#
# NCBI/PMC bloque les telechargements automatises (Cloudflare).
# Ce script ouvre chaque PDF dans Safari/Chrome pour que vous puissiez
# les enregistrer manuellement (Cmd+S ou clic droit > Enregistrer).
#
# Usage :
#   chmod +x download.sh
#   ./download.sh
#
# Conseil : Creez un dossier 'pdfs/' avant de lancer le script,
# puis enregistrez chaque PDF sous le nom PMID_xxxxx.pdf
# =============================================================================

echo "============================================================"
echo " Telechargement des articles PMC -- Syndrome de Dravet"
echo "============================================================"
echo ""
echo " Ce script va ouvrir 44 PDF dans votre navigateur."
echo " Pour chaque article :"
echo "   1. Attendez que le PDF se charge"
echo "   2. Enregistrez-le avec Cmd+S"
echo "   3. Nommez-le PMID_<numero>.pdf (le PMID est affiche)"
echo ""
echo " Appuyez sur Entree pour commencer (Ctrl+C pour annuler)..."
read -r

# Creer le dossier pdfs/ si absent
mkdir -p "$(dirname "$0")/pdfs"
echo ""
echo " Les PDF seront a enregistrer dans : $(cd "$(dirname "$0")" && pwd)/pdfs/"
echo ""

# Liste des articles PMC : PMID | PMC_ID | Description courte
declare -a ARTICLES=(
  "11359211|PMC1226119|Claes 2001 - De novo SCN1A mutations"
  "17537961|PMC6672241|Ogiwara 2007 - Nav1.1 in PV+ interneurons"
  "14606691|PMC6748642|Rubenstein 2003 - E/I ratio autism model"
  "17928448|PMC6672849|Kalume 2007 - Purkinje neuron Na current"
  "19234125|PMC2656197|Depienne 2009 - PCDH19 Dravet-like"
  "19578035|PMC2778764|Patino 2009 - SCN1B null mutation"
  "20194124|PMC2901973|Catterall 2010 - NaV1.1 and epilepsy"
  "20664807|PMC2906812|Gogolla 2009 - E/I balance autism"
  "21446020|PMC3073544|Camfield 2011 - Transition to adult care"
  "21463286|PMC3652007|Caraballo 2011 - Ketogenic diet Dravet"
  "21620773|PMC5321557|Li 2011 - Autism in Dravet"
  "21903728|PMC3187539|Catarino 2011 - Dravet encephalopathy"
  "22912404|PMC3443187|Cheah 2012 - NaV1.1 deletion interneurons"
  "22914087|PMC3448848|Han 2012 - Autistic behaviour Scn1a mice"
  "23524966|PMC3613924|Kalume 2013 - SUDEP mouse model"
  "23639079|PMC3655893|Higurashi 2013 - iPSC Dravet model"
  "23644485|PMC3665733|Jiao 2013 - iPSC and converted neurons"
  "24002024|PMC3891590|Baraban 2013 - Clemizole zebrafish"
  "24155979|PMC3796480|Auerbach 2013 - Cardiac SUDEP"
  "24225340|PMC4225757|Nabbout 2013 - Encephalopathy not from epilepsy"
  "24434335|PMC3968814|Mistry 2014 - Hippocampal Na currents"
  "24861491|PMC4107035|Brunklaus 2014 - Encephalopathy to channelopathy"
  "25024183|PMC4121787|Tai 2014 - SST+ PV+ interneuron impairment"
  "25766673|PMC4402283|Kalume 2015 - Sleep impairment Dravet"
  "26350728|PMC5321557|Jeste 2015 - Autism and epilepsy"
  "26438699|PMC4621800|Wu 2015 - Dravet incidence US"
  "26608744|PMC4805082|Chang 2016 - Decanoic acid AMPA"
  "28073790|PMC6075536|Griffin 2017 - Clemizole serotonin"
  "28973916|PMC5651774|Kaplan 2017 - CBD Dravet mouse"
  "29320603|PMC6491279|McTague 2018 - Drug management SE children"
  "29804833|PMC6003870|Olson 2018 - Gut microbiota ketogenic diet"
  "30049889|PMC6125816|Favero 2018 - FS interneuron window"
  "30082393|PMC6099857|Richards 2018 - Selective NaV1.1 activation"
  "30381367|PMC6282235|Arends 2018 - Nocturnal seizure detection"
  "31597037|PMC6961983|Kim 2019 - Milasen personalized ASO"
  "31607539|PMC6952031|Colasante 2020 - dCas9 Scn1a activation"
  "31648370|PMC7042118|Goff 2019 - VIP+ interneurons Dravet"
  "31790543|PMC6902175|Nabbout 2020 - Fenfluramine + stiripentol"
  "32091549|PMC7042808|Miller 2020 - CBD dose-ranging Dravet"
  "32129831|PMC7089667|Colasante 2020 - In vivo CRISPRa"
  "32647113|PMC7347622|Lim 2020 - TANGO ASO gene upregulation"
  "32848093|PMC8409261|Han 2020 - ASO Scn1a SUDEP"
  "35526234|PMC9320878|Tanenhaus 2022 - AAV SCN1A gene therapy"
  "36923331|PMC10009132|Goldberg 2023 - Precision medicine Dravet"
)

TOTAL=${#ARTICLES[@]}
COUNT=0

for entry in "${ARTICLES[@]}"; do
  IFS='|' read -r pmid pmc_id description <<< "$entry"
  COUNT=$((COUNT + 1))

  echo "[$COUNT/$TOTAL] PMID $pmid -- $description"
  echo "         -> https://pmc.ncbi.nlm.nih.gov/articles/$pmc_id/pdf/"
  echo "         Enregistrer sous : pdfs/PMID_${pmid}.pdf"
  echo ""

  open "https://pmc.ncbi.nlm.nih.gov/articles/$pmc_id/pdf/"

  # Pause de 2 secondes entre chaque pour ne pas surcharger le navigateur
  if [ "$COUNT" -lt "$TOTAL" ]; then
    sleep 2
  fi
done

echo "============================================================"
echo " Termine ! $TOTAL PDF ouverts dans le navigateur."
echo ""
echo " Rappel : enregistrez chaque PDF dans le dossier pdfs/"
echo " avec le nom PMID_xxxxx.pdf indique ci-dessus."
echo "============================================================"
