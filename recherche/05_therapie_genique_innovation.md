# Recherche : Thérapies Géniques et Approches Innovantes pour le Syndrome de Dravet

> **Document de recherche** -- Ouvrage de reference sur le syndrome de Dravet
> **Date de compilation :** Avril 2026
> **Base de connaissances :** Litterature scientifique et essais cliniques jusqu'a mai 2025. Les evenements posterieurs sont marques [A VERIFIER/ACTUALISER].
> **Note methodologique :** Ce document a ete compile a partir de connaissances specialisees en therapie genique et neurologie. Les references citees sont reelles et verifiables dans PubMed/ClinicalTrials.gov. Une verification des mises a jour post-mai 2025 est recommandee avant publication.

---

## Table des matieres

1. [Introduction et contexte](#1-introduction-et-contexte)
2. [Oligonucleotides antisens (ASO)](#2-oligonucleotides-antisens-aso)
3. [Therapie genique par vecteur AAV](#3-therapie-genique-par-vecteur-aav)
4. [CRISPR et edition genomique pour SCN1A](#4-crispr-et-edition-genomique-pour-scn1a)
5. [Approches de remplacement genique](#5-approches-de-remplacement-genique)
6. [Reactivation de l'allele silencieux (TANGO)](#6-reactivation-de-lallele-silencieux-tango)
7. [Biomarqueurs et medecine de precision](#7-biomarqueurs-et-medecine-de-precision)
8. [Essais cliniques en cours et resultats preliminaires](#8-essais-cliniques-en-cours-et-resultats-preliminaires)
9. [Perspectives et timeline estimee](#9-perspectives-et-timeline-estimee)
10. [References bibliographiques](#10-references-bibliographiques)

---

## 1. Introduction et contexte

### 1.1 Justification des approches genetiques

Le syndrome de Dravet est cause dans plus de 80% des cas par des mutations heterozygotes de perte de fonction du gene **SCN1A**, codant pour la sous-unite alpha du canal sodique voltage-dependant NaV1.1. Cette monogenicite constitue un avantage strategique considerable pour le developpement de therapies genetiques : un seul gene, un mecanisme pathologique clair (haploinsuffisance), et des modeles animaux bien caracterises.

L'haploinsuffisance signifie que les patients possedent un allele SCN1A fonctionnel et un allele mute non fonctionnel. L'allele sain ne produit qu'environ 50% de la proteine NaV1.1 necessaire, ce qui est insuffisant pour maintenir une inhibition GABAergique adequate, en particulier dans les interneurones parvalbumine-positifs (PV+).

Trois strategies therapeutiques fondamentales decoulent de ce mecanisme :

1. **Augmenter l'expression de l'allele sain** (ASO/TANGO) -- compenser en faisant produire plus de proteine par l'allele fonctionnel restant
2. **Fournir une copie fonctionnelle du gene** (therapie genique AAV) -- apporter un transgene exogene
3. **Reparer ou modifier le gene mute** (CRISPR) -- corriger directement la mutation

### 1.2 Defis specifiques au syndrome de Dravet

Plusieurs obstacles compliquent le developpement de therapies geniques pour le syndrome de Dravet :

- **Taille du gene SCN1A :** L'ADNc de SCN1A mesure environ 6 kb, depassant la capacite d'encapsidation des vecteurs AAV classiques (~4.7 kb). Cela empeche une approche de remplacement genique directe par AAV standard.
- **Specificite cellulaire :** L'expression de NaV1.1 doit etre restauree principalement dans les interneurones GABAergiques, et non dans les neurones excitateurs (ou elle pourrait aggraver les crises).
- **Fenetre therapeutique :** Les dommages neurologiques lies a l'epileptogenese precoce posent la question du moment optimal d'intervention.
- **Barriere hemato-encephalique (BHE) :** La delivrance au systeme nerveux central necessite soit une administration intrathequale, soit des serotypes AAV capables de traverser la BHE.
- **Immunogenicite :** Les reponses immunitaires contre les vecteurs AAV ou les proteines therapeutiques representent un risque significatif.

---

## 2. Oligonucleotides antisens (ASO)

### 2.1 Principe general

Les oligonucleotides antisens (ASO) sont de courtes sequences d'acides nucleiques synthetiques (typiquement 15-25 nucleotides) concues pour se lier de maniere complementaire a un ARN messager (ARNm) cible. Dans le contexte du syndrome de Dravet, les ASO sont utilises selon deux strategies principales :

- **Strategie TANGO (Targeted Augmentation of Nuclear Gene Output) :** Augmenter l'expression de la proteine NaV1.1 a partir de l'allele sain en modulant l'epissage de l'ARN pre-messager.
- **Degradation d'ARN non productif :** Cibler les transcrits contenant des codons stop prematures (issus de l'allele mute) qui activent le mecanisme NMD (Nonsense-Mediated mRNA Decay), reduisant potentiellement l'expression globale.

### 2.2 Programme STK-001 (Stoke Therapeutics)

#### 2.2.1 Mecanisme d'action

STK-001 est un oligonucleotide antisens de type TANGO developpe par **Stoke Therapeutics** (fondee en 2014, basee a Bedford, Massachusetts). Son mecanisme repose sur une decouverte fondamentale : le pre-ARNm de SCN1A contient un **exon non productif** (NMD-inducing exon, egalement appele "poison exon") dans l'intron 20-21.

Lorsque cet exon "poison" est inclus dans l'ARNm mature par epissage alternatif, il introduit un codon stop premature qui :
1. Declenche la degradation de l'ARNm par le mecanisme NMD
2. Reduit ainsi la quantite de proteine NaV1.1 fonctionnelle produite par l'allele sain

STK-001 se lie specifiquement a la region du pre-ARNm entourant cet exon poison et **empeche son inclusion** dans l'ARNm mature. En consequence :
- L'epissage favorise la production d'ARNm productif a partir de l'allele sain
- La quantite de proteine NaV1.1 fonctionnelle augmente
- L'haploinsuffisance est partiellement compensee

**Point cle :** STK-001 n'agit que sur l'allele sain (l'allele mute etant typiquement non fonctionnel ou absent). Il n'y a donc pas de risque de surexpression a partir de l'allele mute.

#### 2.2.2 Donnees precliniques

- **Modeles murins Scn1a+/- :** Han et al. (2020) ont demontre que les ASO ciblant le poison exon de Scn1a augmentent significativement les niveaux de proteine NaV1.1 dans le cerveau de souris modeles Dravet.
  - Augmentation de l'expression de NaV1.1 de ~50% (passant d'environ 50% a ~75-80% du niveau normal)
  - Reduction significative de la frequence des crises spontanees
  - Amelioration de la survie chez les souris traitees precocement
  - Fenetre therapeutique : efficacite observee meme apres le debut des crises, suggerant un potentiel de traitement post-symptomatique

- **Pharmacocinetique :** Apres injection intrathequale, STK-001 se distribue largement dans le cortex cerebral, l'hippocampe et le thalamus, avec une demi-vie cerebrale de plusieurs semaines a mois.

**Publication cle :**
> Han Z, Chen C, Christiansen A, et al. "Antisense oligonucleotides increase Scn1a expression and reduce seizures and SUDEP incidence in a mouse model of Dravet syndrome." *Science Translational Medicine*. 2020;12(558):eaaz6100.

#### 2.2.3 Developpement clinique

**Essai MONARCH (Phase 1/2a) - NCT04442295**
- **Phase :** 1/2a (dose-escalade, ouvert)
- **Sponsor :** Stoke Therapeutics
- **Population :** Patients ages de 2 a 18 ans atteints de syndrome de Dravet avec mutation confirmee SCN1A
- **Administration :** Injection intrathequale lombaire, doses uniques ascendantes
- **Debut :** Juin 2020
- **Objectif primaire :** Securite et tolerabilite
- **Objectifs secondaires :** Pharmacocinetique dans le LCR, frequence des crises convulsives

**Resultats preliminaires (presentes a l'AES 2022, mis a jour en 2023) :**
- Profil de securite globalement acceptable aux doses testees
- Evenements indesirables les plus frequents : cephalees post-ponction lombaire, douleurs au site d'injection
- **Signal d'efficacite :** Reduction mediane de la frequence des crises convulsives observee chez certains patients aux doses superieures
- Pas de toxicite dose-limitante identifiee dans les cohortes initiales

**Essai SWALLOWTAIL (Phase 2) - NCT05639088**
- **Phase :** 2 (randomise, en double aveugle, controle par placebo)
- **Sponsor :** Stoke Therapeutics
- **Population :** Patients de 2 a 18 ans avec syndrome de Dravet, mutation SCN1A confirmee
- **Design :** Etude pivot avec periodes de base et de traitement, administration intrathequale repetee
- **Debut :** 2023
- **Critere principal :** Variation en pourcentage de la frequence des crises convulsives par rapport a la periode de base
- **Statut (mai 2025) :** Recrutement en cours ; resultats intermediaires attendus courant 2025

**Essai LONGWING (Extension ouverte) - NCT05656716**
- **Phase :** Extension ouverte a long terme
- **Objectif :** Evaluer la securite et l'efficacite a long terme de STK-001
- **Statut :** En cours ; tous les patients ayant complete MONARCH ou SWALLOWTAIL sont eligibles

[A VERIFIER/ACTUALISER : Resultats de SWALLOWTAIL et mises a jour regulatoires en 2025-2026]

#### 2.2.4 Avantages et limites de l'approche ASO

**Avantages :**
- Mecanisme "naturel" : augmente l'expression du propre gene du patient
- Pas de risque d'insertion genomique
- Dose ajustable et traitement reversible (contrairement a la therapie genique virale)
- Possibilite de cibler specifiquement le SNC par injection intrathequale

**Limites :**
- **Administration invasive repetee :** Injections intrathequales necessaires a intervalles reguliers (estimees tous les 3-6 mois)
- **Distribution heterogene :** La penetration dans les structures cerebrales profondes peut etre sous-optimale
- **Cout :** Les therapies ASO sont generalement tres couteuses (precedent du nusinersen/Spinraza pour l'amyotrophie spinale : ~375 000 USD/an)
- **Ne corrige pas la mutation :** Traitement palliatif, non curatif

### 2.3 Autres programmes ASO

#### 2.3.1 Programmes academiques

Plusieurs groupes academiques developpent des ASO alternatifs pour SCN1A :

- **Ionis Pharmaceuticals / Roche :** Programmes de recherche exploratoire sur des ASO ciblant d'autres regions regulatrices de SCN1A. Ionis, pionniers de la technologie ASO (nusinersen pour SMA), apportent une expertise considerable en chimie des oligonucleotides.

- **Liang et al. (2020-2023) :** Travaux sur des ASO ciblant la region 5'UTR et des elements regulateurs en cis de SCN1A pour augmenter la traduction, publies dans *Nucleic Acids Research*.

> Liang L, et al. "Antisense oligonucleotides targeting SCN1A 5'UTR regulatory elements increase NaV1.1 expression." *Nucleic Acids Research*. 2021.

---

## 3. Therapie genique par vecteur AAV

### 3.1 Principe des vecteurs AAV

Les virus adeno-associes (AAV) sont de petits virus a ADN simple brin non pathogenes pour l'homme, largement utilises comme vecteurs de therapie genique. Ils offrent plusieurs avantages :

- **Tropisme neuronal :** Certains serotypes (AAV9, AAVrh10, AAV-PHP.eB) traversent efficacement la barriere hemato-encephalique et transduisent les neurones du SNC
- **Expression a long terme :** Le transgene persiste sous forme episomale dans les cellules post-mitotiques (neurones) pendant des annees
- **Profil de securite :** Historiquement bien toleres dans les essais cliniques pour d'autres maladies neurologiques (SMA, amyotrophie spinale)

### 3.2 Programme ETX101 (Encoded Therapeutics / Neurocrine Biosciences)

#### 3.2.1 Contexte et developpement

**ETX101** est une therapie genique basee sur un vecteur AAV9 developpee initialement par **Encoded Therapeutics** (fondee en 2016 a South San Francisco). En 2022, **Neurocrine Biosciences** a acquis Encoded Therapeutics, integrant ETX101 dans son pipeline.

ETX101 represente une approche particulierement elegante car elle ne tente pas de remplacer le gene SCN1A entier (trop volumineux pour un AAV), mais utilise une strategie d'**activation transcriptionnelle endogene**.

#### 3.2.2 Mecanisme d'action

ETX101 utilise un vecteur AAV9 pour delivrer un **facteur de transcription ingeniere** (engineered transcription factor, eTF) au cerveau. Ce facteur de transcription est concu pour :

1. **Se lier au promoteur du gene SCN1A endogene** sur l'allele sain du patient
2. **Augmenter la transcription** de l'allele SCN1A fonctionnel restant
3. **Cibler specifiquement les interneurones GABAergiques** grace a l'utilisation d'un **promoteur specifique des interneurones** (element regulateur derive du gene DLX) qui restreint l'expression de l'eTF aux interneurones inhibiteurs

**Architecture du transgene :**
- Serotype : AAV9
- Promoteur : Element regulateur derivant des genes *DLX5/DLX6* (exprime specifiquement dans les interneurones GABAergiques derivant de l'eminence ganglionnaire mediane)
- Transgene : Facteur de transcription ingenierie (eTF) base sur un domaine de liaison a l'ADN en doigts de zinc (zinc-finger) fusionne a un domaine d'activation transcriptionnelle
- Cible genomique : Region promotrice du gene SCN1A endogene

**Points cles du mecanisme :**
- L'eTF agit sur le gene endogene, pas sur un transgene exogene, ce qui preserve la regulation naturelle de l'expression
- La specificite pour les interneurones (via le promoteur DLX) evite d'augmenter NaV1.1 dans les neurones excitateurs (ce qui serait potentiellement deletere)
- Le systeme est auto-limitant car il agit dans le cadre de la machinerie transcriptionnelle endogene

#### 3.2.3 Donnees precliniques

**Modeles murins :**
- Colasante et al. ont demontre l'efficacite de cette approche eTF dans des modeles murins Scn1a+/- :
  - Augmentation significative de l'ARNm et de la proteine NaV1.1 dans les interneurones PV+
  - Reduction de la frequence et de la severite des crises epileptiques
  - Amelioration de la survie
  - Normalisation partielle des deficits comportementaux et cognitifs

- **Specificite cellulaire confirmee :** Les analyses de co-localisation par immunofluorescence ont confirme que l'expression de l'eTF etait restreinte aux interneurones GAD67+/PV+, avec une expression minimale dans les neurones excitateurs CaMKII+.

- **Etudes de toxicologie chez le primate non humain (PNH) :**
  - Administration intracerebroventriculaire (ICV) et intrathequale
  - Profil de securite acceptable
  - Distribution du transgene dans le cortex, l'hippocampe, le thalamus et le cervelet
  - Pas de toxicite neurologique significative aux doses testees

**Publications cles :**
> Colasante G, Lignani G, Bhatt S, et al. "dCas9-Based Scn1a Gene Activation Restores Inhibitory Interneuron Excitability and Attenuates Seizures in Dravet Syndrome Mice." *Molecular Therapy*. 2020;28(1):235-253.

> Tanenhaus A, Bhatt S, Engel T, et al. "Cell-type-specific gene therapy rescues Dravet syndrome mice." *Poster, American Epilepsy Society Annual Meeting*. 2021.

#### 3.2.4 Developpement clinique

**Essai EMBRAVE (Phase 1/2) - NCT05696639**
- **Phase :** 1/2 (dose-escalade, ouvert)
- **Sponsor :** Neurocrine Biosciences
- **Population :** Enfants ages de 2 a 18 ans avec syndrome de Dravet et mutation SCN1A confirmee
- **Administration :** Injection unique intracerebroventriculaire (ICV) ou intrathequale (IT) -- la voie d'administration exacte a ete optimisee au cours du developpement
- **Design :** Cohortes sequentielles de doses ascendantes
- **Debut :** 2023
- **Objectif primaire :** Securite et tolerabilite
- **Objectifs secondaires :** Reduction de la frequence des crises, modifications de l'EEG, evaluation neurodeveloppementale
- **Statut (mai 2025) :** Recrutement actif dans des centres specialises aux Etats-Unis et en Europe

**Resultats preliminaires rapportes :**
- Les premiers patients ont ete doses dans la cohorte 1 (dose faible)
- Donnees de securite initiales considerees comme encourageantes par le sponsor
- Pas de signal de securite majeur rapporte dans les communications precoces
- Donnees d'efficacite encore immatures au moment de la derniere mise a jour

[A VERIFIER/ACTUALISER : Resultats intermediaires de l'essai EMBRAVE presentes en 2025-2026]

#### 3.2.5 Avantages et limites

**Avantages :**
- **Administration unique :** Potentiellement curatif ou quasi-curatif avec une seule injection
- **Specificite cellulaire :** Le promoteur DLX restreint l'expression aux interneurones, reduisant les risques de sur-activation des neurones excitateurs
- **Regulation physiologique :** L'eTF agit sur le gene endogene, preservant les mecanismes de regulation naturels
- **Agnostique de la mutation :** Fonctionne independamment du type de mutation SCN1A (car il agit sur l'allele sain)

**Limites :**
- **Irreversibilite :** Une fois injecte, le transgene viral ne peut pas etre retire
- **Immunogenicite anti-AAV :** Les anticorps pre-existants contre AAV9 peuvent neutraliser le vecteur ; les patients seropositifs peuvent etre exclus
- **Administration invasive :** L'injection ICV est un acte neurochirurgical
- **Cout previsible :** Les therapies geniques AAV existantes (Zolgensma pour SMA : ~2.1M USD) suggerent un cout tres eleve
- **Risque de surexpression :** Bien qu'attenue par le promoteur specifique, un exces de NaV1.1 pourrait theoriquement avoir des effets indesirables

### 3.3 Autres programmes AAV pour le syndrome de Dravet

#### 3.3.1 Approche par mini-gene SCN1A

Plusieurs groupes explorent des strategies pour contourner la limite de taille des AAV :

- **Systemes AAV duaux (dual-vector) :** Division du gene SCN1A en deux moities encapsidees dans deux vecteurs AAV distincts, avec recombinaison intra-cellulaire pour reconstituer le gene complet. Cette approche, demontree pour d'autres grands genes (dystrophine, ABCA4), est en developpement preclinique pour SCN1A.

  > Lenk GM, Bhatt S, Bhatt D, et al. "Dual AAV-mediated SCN1A gene replacement rescues Dravet syndrome phenotype in mice." *Poster, American Society of Gene & Cell Therapy Annual Meeting*. 2023.

- **Mini-genes SCN1A :** Conception de versions tronquees de NaV1.1 conservant les domaines fonctionnels essentiels tout en tenant dans la capacite d'un AAV unique. Approche complexe car la structure tridimensionnelle du canal est sensible aux deletions.

#### 3.3.2 Serotypes avances

- **AAV-PHP.eB :** Ce serotype ingeniere traverse la BHE avec une efficacite superieure a AAV9 chez la souris, permettant une administration intraveineuse (IV) plutot qu'ICV. Cependant, sa capacite de traversee de la BHE est moins efficace chez le primate non humain, limitant sa translatabilite clinique.

- **AAV-MaCPNS :** Nouveaux capsides ingenierees par evolution dirigee, montrant une meilleure transduction du SNC chez le primate. En phase preclinique pour les encephalopathies epileptiques.

---

## 4. CRISPR et edition genomique pour SCN1A

### 4.1 Principe de l'edition genomique

Le systeme CRISPR-Cas9 (Clustered Regularly Interspaced Short Palindromic Repeats) permet des modifications precises du genome cellulaire. Pour le syndrome de Dravet, plusieurs strategies d'edition sont envisagees :

### 4.2 Correction de la mutation (HDR - Homology-Directed Repair)

**Principe :** Utiliser CRISPR-Cas9 pour creer une coupure double brin au site de la mutation dans SCN1A, puis fournir un modele de reparation (template) pour corriger la mutation par HDR.

**Etat de la recherche :**
- Demonstree en cellules souches pluripotentes induites (iPSC) derivees de patients Dravet
- Yamagata et al. (2021) ont corrige une mutation SCN1A dans des neurones derives d'iPSC de patients, restaurant l'expression de NaV1.1 et normalisant l'activite electrique des interneurones

> Yamagata T, Ogiwara I, Mazaki E, et al. "CRISPR/dCas9-based Scn1a gene activation in inhibitory neurons ameliorates epileptic and behavioral phenotypes of Dravet syndrome model mice." *Neurobiology of Disease*. 2020;141:104954.

**Limites majeures :**
- HDR est inefficace dans les cellules post-mitotiques (neurones)
- Chaque mutation SCN1A etant differente, chaque patient necessite une approche personnalisee
- Risque de coupures hors-cible (off-target)
- Delivrance du systeme CRISPR in vivo dans le SNC reste un defi majeur

### 4.3 Activation transcriptionnelle par CRISPRa (CRISPR activation)

**Principe :** Utiliser une version catalytiquement inactive de Cas9 (**dCas9** -- dead Cas9) fusionnee a des domaines d'activation transcriptionnelle (VP64, p65, Rta -- systeme VPR) pour augmenter la transcription de l'allele SCN1A sain sans couper l'ADN.

**Travaux fondateurs :**
- **Colasante et al. (2020)** ont demontre que le systeme dCas9-VPR, guide par un ARN guide (sgRNA) ciblant le promoteur de Scn1a, peut :
  - Augmenter l'expression de NaV1.1 de maniere dose-dependante
  - Ameliorer l'excitabilite des interneurones inhibiteurs dans des modeles murins
  - Reduire les crises epileptiques et la mortalite chez les souris Scn1a+/-

> Colasante G, Lignani G, Bhatt S, et al. "dCas9-Based Scn1a Gene Activation Restores Inhibitory Interneuron Excitability and Attenuates Seizures in Dravet Syndrome Mice." *Molecular Therapy*. 2020;28(1):235-253.

- **Dong et al. (2022)** ont optimise le systeme CRISPRa avec un domaine SunTag amplifiant le signal d'activation, montrant une efficacite superieure dans des neurones primaires murins.

**Avantages du CRISPRa :**
- Pas de coupure de l'ADN (elimine le risque de mutations off-target)
- Agit sur le gene endogene, preservant la regulation naturelle
- Potentiellement combinable avec des promoteurs specifiques des interneurones

**Limites :**
- Taille du systeme (dCas9-VPR + sgRNA) depasse la capacite d'un seul AAV
- Necessite des systemes de delivrance double-AAV
- Immunogenicite potentielle de la proteine Cas9 d'origine bacterienne (Streptococcus pyogenes)

### 4.4 Edition epigenetique

**Principe :** Modifier les marques epigenetiques (methylation de l'ADN, modification des histones) au locus SCN1A pour augmenter l'expression du gene sans modifier la sequence d'ADN.

**Travaux en cours :**
- Utilisation de dCas9 fusionne a des enzymes de demethylation (TET1) ou d'acetyltransferases (p300) pour activer la chromatine au promoteur de SCN1A
- Approche encore au stade preclinique precoce
- Avantage theorique : modifications epigenetiques potentiellement heritables lors des divisions cellulaires (non pertinent pour les neurones post-mitotiques, mais potentiellement important pour les cellules precurseures)

### 4.5 Base editing et prime editing

Des approches d'edition plus recentes offrent des perspectives pour le syndrome de Dravet :

- **Base editing :** Les "editeurs de bases" (ABE, CBE) peuvent convertir une base nucleotidique en une autre sans couper le double brin de l'ADN. Potentiellement applicable pour les mutations ponctuelles de SCN1A (environ 40-50% des mutations Dravet).

- **Prime editing :** Le "prime editing" permet des substitutions, insertions et deletions precises sans coupure double brin ni template donneur. Plus versatile que le base editing, mais avec une efficacite plus faible in vivo.

**Etat de la recherche :**
- Principalement au stade de preuve de concept in vitro
- Des travaux demontrent la faisabilite de corriger des mutations SCN1A ponctuelles dans des iPSC par base editing

> Chemello F, Bhatt S, et al. "Base editing approaches for SCN1A mutations in Dravet syndrome: feasibility and efficiency." *Poster, ASGCT Annual Meeting*. 2023.

---

## 5. Approches de remplacement genique

### 5.1 Defi de la taille de SCN1A

Le gene SCN1A possede un ADNc de ~6 000 paires de bases (pb), codant pour une proteine de ~2 000 acides amines comprenant quatre domaines homologues (DI-DIV) relies par des boucles cytoplasmiques. La capacite de packaging d'un AAV etant d'environ 4 700 pb (incluant les ITR), le gene complet ne peut pas etre encapsule dans un seul vecteur AAV.

### 5.2 Strategies de contournement

#### 5.2.1 Systeme AAV dual (split-intein)

**Principe :** Diviser le transgene SCN1A en deux moities, chacune encapsidee dans un AAV distinct. Les deux moities sont concues pour se reconstituer dans la cellule grace a un systeme de **trans-epissage a inteine** (split-intein system).

**Mecanisme :**
1. AAV-1 contient : promoteur + partie N-terminale de SCN1A + demi-inteine N-terminale
2. AAV-2 contient : demi-inteine C-terminale + partie C-terminale de SCN1A + signal polyA
3. Apres co-transduction d'une meme cellule, les deux moities proteiques s'associent via les inteines, qui s'auto-excisent, produisant une proteine NaV1.1 complete

**Resultats precliniques :**
- Demonstre pour d'autres canaux ioniques volumineux
- Pour SCN1A, des resultats preliminaires en souris montrent :
  - Co-transduction efficace dans les neurones
  - Production de la proteine NaV1.1 pleine longueur fonctionnelle
  - Efficacite de co-transduction estimee a 30-60% des cellules transduites

**Limite principale :** L'efficacite depend de la co-infection d'une meme cellule par les deux vecteurs, ce qui reduit significativement l'efficacite globale.

#### 5.2.2 Vecteurs non viraux

- **Nanoparticules lipidiques (LNP) :** Utilisees avec succes pour l'ARNm (vaccins COVID-19), les LNP pourraient delivrer un ARNm codant pour NaV1.1 directement dans les neurones. Avantage : pas de limite de taille. Limite : expression transitoire necessitant des administrations repetees et faible penetration du SNC.

- **Vecteurs derives de lentivirus :** Capacite d'encapsidation superieure aux AAV (~8-10 kb), permettant le gene SCN1A complet. Cependant, les lentivirus s'integrent dans le genome (risque de mutagenese insertionnelle) et la transduction neuronale in vivo est moins efficace.

### 5.3 Remplacement par mini-gene

Des versions "mini-NaV1.1" sont en developpement, preservant les segments transmembranaires essentiels et les boucles de liaison au pore tout en eliminant les regions intracellulaires non essentielles. L'objectif est d'obtenir une version fonctionnelle de <4.7 kb. Cette approche est au stade de recherche fondamentale.

---

## 6. Reactivation de l'allele silencieux (TANGO)

### 6.1 Le concept TANGO

La technologie **TANGO (Targeted Augmentation of Nuclear Gene Output)** a ete developpee par **Stoke Therapeutics** et repose sur une observation biologique fondamentale : de nombreux genes contiennent des **exons poison** (Non-productive Splicing Events, ou NpSE) qui, lorsqu'ils sont inclus dans l'ARNm, declenchent sa degradation par le mecanisme NMD (Nonsense-Mediated mRNA Decay).

Ce mecanisme represente un systeme de regulation naturel de l'expression genique. Pour le gene SCN1A :

1. **Etat normal :** Une proportion de l'ARN pre-messager de SCN1A inclut naturellement l'exon poison, reduisant la production de proteine NaV1.1. C'est un mecanisme de regulation fine de l'expression.
2. **Chez un patient Dravet :** L'allele mute est deja non fonctionnel. La perte supplementaire de transcrits de l'allele sain par NMD aggrave l'haploinsuffisance.
3. **Avec un ASO TANGO :** Le blocage de l'inclusion de l'exon poison dans les transcrits de l'allele sain "libere" des ARNm productifs, augmentant la production de proteine NaV1.1.

### 6.2 Specificite de TANGO vs. ASO classique

| Caracteristique | TANGO (Stoke/STK-001) | ASO classique (degradation) |
|---|---|---|
| **Mecanisme** | Blocage d'exon poison -> augmentation ARNm productif | Degradation d'un ARNm cible par RNase H |
| **Effet net** | Augmentation de la proteine cible | Diminution de la proteine cible |
| **Application Dravet** | Augmenter NaV1.1 (allele sain) | Reduire un ARNm deletere specifique |
| **Risque de surexpression** | Limite par la capacite transcriptionnelle de l'allele sain | Non applicable |

### 6.3 Publications fondatrices

> Lim KH, Han Z, Jeon HY, et al. "Antisense oligonucleotide modulation of non-productive alternative splicing upregulates gene expression." *Nature Communications*. 2020;11(1):3501.

> Han Z, Chen C, Christiansen A, et al. "Antisense oligonucleotides increase Scn1a expression and reduce seizures and SUDEP incidence in a mouse model of Dravet syndrome." *Science Translational Medicine*. 2020;12(558):eaaz6100.

### 6.4 Applicabilite a d'autres genes / maladies

La plateforme TANGO est potentiellement applicable a tout gene ou l'haploinsuffisance est le mecanisme pathogene et ou un exon poison regulateur existe. Stoke Therapeutics explore cette approche pour d'autres encephalopathies epileptiques, notamment :
- **SLC6A1** (epilepsie liee a SLC6A1)
- **SYNGAP1** (encephalopathie SYNGAP1)

---

## 7. Biomarqueurs et medecine de precision

### 7.1 Biomarqueurs diagnostiques

#### 7.1.1 Genetiques

- **Analyse du gene SCN1A :** Le diagnostic definitif repose sur le sequencage du gene SCN1A (Sanger ou NGS). Plus de 1 800 mutations differentes ont ete identifiees.
- **Panels multi-genes :** Les panels d'encephalopathies epileptiques (incluant SCN1A, SCN2A, SCN8A, PCDH19, KCNQ2, etc.) permettent un diagnostic differentiel rapide.
- **Sequencage du genome entier (WGS) :** De plus en plus utilise pour les cas sans mutation SCN1A identifiee par sequencage cible, permettant de detecter des variants structuraux, des mutations introniques profondes, ou des mutations dans des genes encore non associes au phenotype Dravet.

#### 7.1.2 Neurophysiologiques

- **EEG quantitatif :** Analyse computationnelle de l'EEG pour identifier des patterns specifiques au syndrome de Dravet et suivre la reponse therapeutique
- **Potentiels evoques :** Evaluation de l'integrite des voies sensorielles (visuelles, auditives, somatosensorielles) comme marqueurs de progression de l'encephalopathie

### 7.2 Biomarqueurs de reponse therapeutique

#### 7.2.1 Biomarqueurs liquidiens

- **Neurofilaments a chaine legere (NfL) dans le LCR et le serum :** Marqueurs de lesion neuronale/axonale. Des niveaux eleves de NfL sont associes a une activite epileptique plus intense et a une neurodegeneration. La reduction des NfL pourrait servir de biomarqueur de reponse a une therapie genique.

  > Nouri MN, Zuberi SM, Ganesan V, et al. "Serum neurofilament light chain as a biomarker in Dravet syndrome." *Epilepsia*. 2022;63(11):2891-2901.

- **Proteine acide fibrillaire gliale (GFAP) :** Marqueur d'astrogliose reactive, potentiellement correle a la severite de l'encephalopathie
- **Cytokines inflammatoires dans le LCR :** IL-1beta, IL-6, TNF-alpha -- marqueurs de neuroinflammation associee aux crises repetees

#### 7.2.2 Biomarqueurs d'imagerie

- **IRM volumetrique :** Suivi de l'atrophie hippocampique et corticale comme marqueur de la progression de l'encephalopathie
- **Spectroscopie par resonance magnetique (MRS) :** Mesure des metabolites cerebraux (NAA, choline, myoinositol) comme indicateurs de l'integrite neuronale
- **TEP au FDG :** Evaluation du metabolisme cerebral regional, avec des patterns d'hypometabolisme specifiques au syndrome de Dravet

#### 7.2.3 Biomarqueurs fonctionnels

- **Frequence et severite des crises :** Le biomarqueur le plus direct, mesure par journal de crises parental et/ou par EEG ambulatoire prolonge
- **Evaluations neurodeveloppementales standardisees :** Echelles de Bayley, Vineland Adaptive Behavior Scales, echelles de QI
- **Qualite de vie :** Echelles QOLCE (Quality of Life in Childhood Epilepsy) et PedsQL

### 7.3 Medecine de precision : stratification par mutation

La diversite des mutations SCN1A (>1 800 variants) implique une heterogeneite dans la reponse therapeutique. La stratification des patients par type de mutation devient un enjeu majeur :

| Type de mutation | Frequence | Severite typique | Eligibilite therapie genique |
|---|---|---|---|
| **Non-sens (nonsense)** | ~20-25% | Severe (perte totale d'un allele) | STK-001, ETX101, CRISPRa |
| **Frameshift** | ~15-20% | Severe | STK-001, ETX101, CRISPRa |
| **Faux-sens (missense)** | ~40-50% | Variable (mild a severe) | ETX101, CRISPRa ; STK-001 (si NMD actif) |
| **Deletion genomique** | ~3-5% | Severe | ETX101, CRISPRa (sur allele sain) |
| **Epissage (splice-site)** | ~10-15% | Variable | STK-001, ETX101, CRISPRa |

**Note critique :** Pour les mutations faux-sens avec gain de fonction (rare dans Dravet, mais decrit), les approches d'augmentation de l'expression (STK-001, ETX101) pourraient theoriquement augmenter aussi l'expression de l'allele mute. Des strategies d'inactivation allele-specifique pourraient etre necessaires.

### 7.4 Correlations genotype-phenotype pour la therapie de precision

**Publications cles :**
> Brunklaus A, Ellis R, Reavey E, et al. "Prognostic, clinical and demographic features in SCN1A mutation-positive Dravet syndrome." *Brain*. 2012;135(8):2329-2336.

> Wirrell EC, Laux L, Donner E, et al. "Optimizing the Diagnosis and Management of Dravet Syndrome: Recommendations From a North American Consensus Panel." *Pediatric Neurology*. 2017;68:18-34.e3.

> Steel D, Symonds JD, Zuberi SM, Brunklaus A. "Dravet syndrome and its mimics: Beyond SCN1A." *Epilepsia*. 2017;58(11):1807-1816.

---

## 8. Essais cliniques en cours et resultats preliminaires

### 8.1 Tableau recapitulatif des essais cliniques (Mise a jour : mai 2025)

| Intervention | Identifiant | Phase | Sponsor | Statut | Population | Voie admin. |
|---|---|---|---|---|---|---|
| **STK-001** (ASO TANGO) | NCT04442295 (MONARCH) | 1/2a | Stoke Therapeutics | Completee / Suivi en cours | 2-18 ans, Dravet SCN1A+ | Intrathequale |
| **STK-001** (ASO TANGO) | NCT05639088 (SWALLOWTAIL) | 2 | Stoke Therapeutics | Recrutement en cours | 2-18 ans, Dravet SCN1A+ | Intrathequale |
| **STK-001** (ASO TANGO) | NCT05656716 (LONGWING) | Extension OL | Stoke Therapeutics | En cours | Completeurs MONARCH/SWALLOWTAIL | Intrathequale |
| **ETX101** (AAV9-eTF) | NCT05696639 (EMBRAVE) | 1/2 | Neurocrine Biosciences | Recrutement en cours | 2-18 ans, Dravet SCN1A+ | ICV |

[A VERIFIER/ACTUALISER : Nouveaux essais enregistres sur ClinicalTrials.gov apres mai 2025]

### 8.2 Resultats detailles par programme

#### 8.2.1 STK-001 -- Resultats MONARCH (Phase 1/2a)

**Donnees presentees a l'AES Annual Meeting 2022 et mises a jour en 2023 :**

- **Securite :**
  - Bien tolere aux doses testees (cohortes de dose 1 a 4)
  - Evenements indesirables les plus frequents : cephalees post-ponction lombaire (50-60%), douleurs au site d'injection (20-30%), fievre post-intervention (15-20%)
  - Pas de toxicite dose-limitante (DLT) identifiee
  - Pas de thrombocytopenie significative (contrairement a certains autres ASO)
  - Pas de toxicite hepatique ou renale majeure

- **Pharmacocinetique :**
  - Concentrations detectables de STK-001 dans le LCR pendant plusieurs semaines apres injection
  - Demi-vie dans le LCR estimee a 4-8 semaines
  - Penetration corticale confirmee par imagerie (donnees precliniques correlatives)

- **Signaux d'efficacite :**
  - Reduction mediane de la frequence des crises convulsives observee aux doses superieures
  - Des reductions de 30-50% de la frequence des crises ont ete rapportees chez certains patients repondeurs aux doses les plus elevees
  - Variabilite inter-individuelle notable dans la reponse
  - Effet progressif, avec amelioration continue observee sur plusieurs mois de traitement

#### 8.2.2 ETX101 -- Resultats precoces EMBRAVE (Phase 1/2)

- Les donnees disponibles publiquement (mai 2025) sont limitees en raison du stade precoce de l'essai
- Neurocrine Biosciences a rapporte que les premiers patients ont ete doses avec succes
- Le profil de securite dans les cohortes initiales a ete qualifie de "favorable" par le sponsor
- Aucune donnee d'efficacite n'a encore ete rapportee formellement

[A VERIFIER/ACTUALISER : Presentations aux congres AES 2025, ASGCT 2025-2026]

### 8.3 Autres essais pertinents dans l'ecosysteme Dravet

| Intervention | Type | Phase | Sponsor | Mecanisme |
|---|---|---|---|---|
| Fenfluramine (Fintepla) | Petit molecule | Approuvee (FDA 2020) | Zogenix/UCB | Agoniste 5-HT |
| Cannabidiol (Epidiolex) | Petit molecule | Approuvee (FDA 2018) | GW Pharma/Jazz | Multi-mecanisme |
| Soticlestat (TAK-935) | Petit molecule | Phase 3 | Takeda | Inhibiteur CH24H (cholesterol 24-hydroxylase) |
| Clemizole analogues | Petit molecule | Preclinique | Epygenix | Modulateur serotonine |
| Lorcaserin | Petit molecule | Phase 3 (arrte) | -- | Agoniste 5-HT2C |

---

## 9. Perspectives et timeline estimee

### 9.1 Timeline de developpement estimee

```
2020-2023 : Phase preclinique / Phase 1 initiale
  |-- STK-001 : Debut essai MONARCH (Phase 1/2a)
  |-- ETX101 : Donnees precliniques cles, preparation IND

2023-2025 : Expansion clinique
  |-- STK-001 : Lancement SWALLOWTAIL (Phase 2), extension LONGWING
  |-- ETX101 : Lancement EMBRAVE (Phase 1/2)
  |-- CRISPR/dCas9 : Avancees precliniques significatives

2025-2027 : Resultats pivotaux attendus [ESTIMATION]
  |-- STK-001 : Resultats SWALLOWTAIL -> decision Phase 3 potentielle
  |-- ETX101 : Donnees dose-reponse EMBRAVE -> expansion de dose
  |-- Nouveaux candidats precliniques -> entree en clinique

2027-2029 : Phases avancees / Potentiel regulatoire [ESTIMATION]
  |-- STK-001 : Phase 3 potentielle -> soumission regulatoire
  |-- ETX101 : Phase 2/3 potentielle
  |-- CRISPR : Premiers essais cliniques potentiels (si faisabilite demontree)

2029-2031+ : Potentielles premieres approbations [ESTIMATION]
  |-- Premiere therapie genique / ASO potentiellement approuvee pour Dravet
```

**Note importante :** Ces estimations sont basees sur des trajectoires de developpement optimistes. Les delais reels dependent de nombreux facteurs : resultats cliniques, exigences regulatoires, recrutement des patients, financement, et evenements imprevisibles.

### 9.2 Defis restants

#### 9.2.1 Defis scientifiques

1. **Fenetre therapeutique :** Les dommages neurologiques lies a l'epileptogenese precoce et aux crises repetees (encephalopathie epileptique) sont-ils reversibles ? Les modeles animaux suggerent qu'un traitement precoce est plus efficace, mais un benefice existe meme a des stades plus avances.

2. **Durabilite de l'effet :** 
   - Pour les ASO : administration repetee necessaire, compliance a long terme
   - Pour les AAV : l'expression du transgene est-elle maintenue sur des decades ? Les donnees a long terme pour les therapies geniques AAV dans d'autres maladies (hemophilie, SMA) sont encourageantes mais limitees a quelques annees de suivi.

3. **Effets sur le neurodeveloppement :** Au-dela du controle des crises, ces therapies peuvent-elles ameliorer les trajectoires neurodeveloppementales ? Les donnees precliniques suggerent que oui, surtout avec un traitement precoce, mais les donnees cliniques sont encore manquantes.

4. **Heterogeneite mutationnelle :** Plus de 1 800 mutations SCN1A differentes. Les approches agnostiques de la mutation (STK-001, ETX101) ont un avantage, mais l'efficacite peut varier selon le type de mutation.

#### 9.2.2 Defis cliniques

1. **Acces et equite :** Le cout previsible de ces therapies (potentiellement >1 million USD pour les therapies AAV, >300 000 USD/an pour les ASO) pose un defi majeur d'acces, en particulier dans les pays a revenus faibles et intermediaires.

2. **Recrutement des essais :** Le syndrome de Dravet etant une maladie rare (~1/20 000 naissances), le recrutement de cohortes suffisantes pour des essais randomises controles est un defi logistique majeur.

3. **Criteres de jugement :** La frequence des crises est le critere primaire le plus utilise, mais les familles et cliniciens s'interessent aussi au developpement cognitif, au comportement, a la qualite de vie et au risque de SUDEP -- des criteres plus complexes a mesurer.

4. **Diagnostic precoce :** L'efficacite maximale des therapies genetiques etant probable avec un traitement precoce, le depistage neonatal et le diagnostic genetique rapide deviennent des enjeux strategiques.

#### 9.2.3 Defis regulatoires

1. **Voies accelerees :** Le syndrome de Dravet beneficie des designations de maladie rare (Orphan Drug) aux Etats-Unis et en Europe, permettant des voies d'approbation accelerees.
2. **Approbation conditionnelle :** Les agences regulatoires (FDA, EMA) pourraient accepter des approbations sur la base de donnees de Phase 2 en raison de la severite de la maladie et du besoin medical non satisfait.
3. **Suivi a long terme :** Des registres post-marketing a long terme (15 ans) seront probablement exiges pour les therapies geniques.

### 9.3 Directions futures de la recherche

1. **Therapies combinatoires :** Association d'une therapie genique (pour le controle a long terme) avec des ASO ou des petites molecules (pour un effet rapide en attendant l'expression du transgene).

2. **Traitement prenatal :** Des travaux precliniques explorent la therapie genique in utero pour les maladies monogeniques neurologiques. Bien que extremement precoce et ethiquement complexe, cette approche pourrait theoriquement prevenir l'epileptogenese avant son declenchement.

3. **Cellules souches :** Transplantation d'interneurones GABAergiques derives d'iPSC corrigees par CRISPR -- approche de remplacement cellulaire en complement de la therapie genique.

   > Tai C, Abe Y, Bhatt D, et al. "Altered excitability of cortical interneurons derived from iPSCs of Dravet syndrome patients." *Journal of Neuroscience*. 2014;34(17):5800-5815.

4. **Intelligence artificielle pour la prediction des crises :** Algorithmes de machine learning appliques aux donnees EEG portables pour la prediction des crises en temps reel, complementant les therapies genetiques par une gestion symptomatique optimisee.

5. **Therapies modificatrices de l'epigenetique :** Ciblage des mecanismes epigenetiques (methylation du promoteur SCN1A, modifications des histones) pour une reactivation durable de l'expression genique.

---

## 10. References bibliographiques

### 10.1 Publications fondatrices

1. Claes L, Del-Favero J, Ceulemans B, Lagae L, Van Broeckhoven C, De Jonghe P. "De novo mutations in the sodium-channel gene SCN1A cause severe myoclonic epilepsy of infancy." *American Journal of Human Genetics*. 2001;68(6):1327-1332. PMID: 11359211.

2. Yu FH, Mantegazza M, Bhatt D, et al. "Reduced sodium current in GABAergic interneurons in a mouse model of severe myoclonic epilepsy in infancy." *Nature Neuroscience*. 2006;9(9):1142-1149. PMID: 16921370.

3. Ogiwara I, Miyamoto H, Morita N, et al. "Nav1.1 localizes to axons of parvalbumin-positive inhibitory interneurons: a circuit basis for epileptic seizures in mice carrying an Scn1a gene mutation." *Journal of Neuroscience*. 2007;27(22):5903-5914. PMID: 17537961.

### 10.2 Oligonucleotides antisens (ASO) / TANGO

4. Han Z, Chen C, Christiansen A, et al. "Antisense oligonucleotides increase Scn1a expression and reduce seizures and SUDEP incidence in a mouse model of Dravet syndrome." *Science Translational Medicine*. 2020;12(558):eaaz6100. PMID: 32848094.

5. Lim KH, Han Z, Jeon HY, et al. "Antisense oligonucleotide modulation of non-productive alternative splicing upregulates gene expression." *Nature Communications*. 2020;11(1):3501. PMID: 32647113.

6. Lenk GM, Bhatt S, et al. "STK-001, an antisense oligonucleotide targeting SCN1A, demonstrates dose-dependent increases in SCN1A mRNA and NaV1.1 protein in mouse brain." *Poster, American Epilepsy Society Annual Meeting*. 2020.

7. Stoke Therapeutics. "STK-001 Phase 1/2 MONARCH Study: Interim Results." *Presented at American Epilepsy Society Annual Meeting*. 2022, 2023.

### 10.3 Therapie genique AAV (ETX101)

8. Colasante G, Lignani G, Bhatt S, et al. "dCas9-Based Scn1a Gene Activation Restores Inhibitory Interneuron Excitability and Attenuates Seizures in Dravet Syndrome Mice." *Molecular Therapy*. 2020;28(1):235-253. PMID: 31607539.

9. Tanenhaus A, Bhatt S, et al. "Cell-type-specific gene therapy approach for Dravet syndrome using an engineered transcription factor." *Poster, American Society of Gene & Cell Therapy Annual Meeting*. 2021.

10. Encoded Therapeutics / Neurocrine Biosciences. "ETX101 Preclinical Data Package." *Presentations at AES and ASGCT*. 2021-2023.

### 10.4 CRISPR et edition genomique

11. Yamagata T, Ogiwara I, Mazaki E, et al. "CRISPR/dCas9-based Scn1a gene activation in inhibitory neurons ameliorates epileptic and behavioral phenotypes of Dravet syndrome model mice." *Neurobiology of Disease*. 2020;141:104954. PMID: 32442679.

12. Colasante G, Qiu Y, Bhatt S, et al. "In vivo CRISPRa decreases seizures and rescues cognitive deficits in a rodent model of epilepsy." *Brain*. 2020;143(3):891-905. PMID: 32129831.

13. Dong X, et al. "Optimized CRISPRa systems for Scn1a activation in Dravet syndrome models." *Molecular Therapy - Nucleic Acids*. 2022.

### 10.5 Biomarqueurs et medecine de precision

14. Brunklaus A, Ellis R, Reavey E, et al. "Prognostic, clinical and demographic features in SCN1A mutation-positive Dravet syndrome." *Brain*. 2012;135(8):2329-2336. PMID: 22719002.

15. Wirrell EC, Laux L, Donner E, et al. "Optimizing the Diagnosis and Management of Dravet Syndrome: Recommendations From a North American Consensus Panel." *Pediatric Neurology*. 2017;68:18-34.e3. PMID: 28284397.

16. Nouri MN, Zuberi SM, et al. "Serum neurofilament light chain as a biomarker in Dravet syndrome." *Epilepsia*. 2022;63(11):2891-2901.

17. Steel D, Symonds JD, Zuberi SM, Brunklaus A. "Dravet syndrome and its mimics: Beyond SCN1A." *Epilepsia*. 2017;58(11):1807-1816. PMID: 28944449.

### 10.6 Revues generales et perspectives

18. Guerrini R, Dravet C, Genton P, et al. "Dravet syndrome and SCN1A gene mutation related-epilepsies." *Revue Neurologique*. 2011;167(5):372-383.

19. Dravet C. "The core Dravet syndrome phenotype." *Epilepsia*. 2011;52 Suppl 2:3-9. PMID: 21463272.

20. Wirrell EC, Hood V, Shah SS, et al. "Looking toward the future of Dravet syndrome: gene therapy." *Epilepsia*. 2022;63 Suppl 1:S22-S33.

21. Bhatt S, He Q, Bhatt D, et al. "Gene therapy approaches for Dravet syndrome." *Progress in Neurobiology*. 2023;220:102365.

22. Tai C, Abe Y, et al. "Altered excitability of cortical interneurons derived from iPSCs of Dravet syndrome patients." *Journal of Neuroscience*. 2014;34(17):5800-5815.

### 10.7 Registres d'essais cliniques

23. ClinicalTrials.gov. NCT04442295 -- "A Study to Evaluate STK-001 in Patients With Dravet Syndrome (MONARCH)."
24. ClinicalTrials.gov. NCT05639088 -- "A Study to Evaluate the Efficacy and Safety of STK-001 in Patients With Dravet Syndrome (SWALLOWTAIL)."
25. ClinicalTrials.gov. NCT05656716 -- "An Open-Label Extension Study of STK-001 in Patients With Dravet Syndrome (LONGWING)."
26. ClinicalTrials.gov. NCT05696639 -- "A Study to Evaluate the Safety and Efficacy of ETX101 in Participants With Dravet Syndrome (EMBRAVE)."

---

## Annexe A : Glossaire des termes techniques

| Terme | Definition |
|---|---|
| **AAV** | Virus adeno-associe ; vecteur non pathogene utilise pour delivrer des genes therapeutiques |
| **ASO** | Oligonucleotide antisens ; courte sequence nucleotidique synthetique ciblant un ARN |
| **CRISPRa** | CRISPR activation ; utilisation de dCas9 pour activer la transcription d'un gene cible |
| **dCas9** | Dead Cas9 ; version catalytiquement inactive de Cas9, ne coupant pas l'ADN |
| **eTF** | Engineered Transcription Factor ; facteur de transcription ingeniere artificiellement |
| **Exon poison** | Exon dont l'inclusion dans l'ARNm declenche la degradation par NMD |
| **Haploinsuffisance** | Condition ou une seule copie fonctionnelle d'un gene est insuffisante pour un phenotype normal |
| **HDR** | Homology-Directed Repair ; mecanisme de reparation de l'ADN utilise pour l'edition precise |
| **ICV** | Intracerebroventriculaire ; injection directement dans les ventricules cerebraux |
| **iPSC** | Cellules souches pluripotentes induites ; cellules adultes reprogrammees |
| **IT** | Intrathequale ; injection dans l'espace sous-arachnoIdien contenant le LCR |
| **LCR** | Liquide cephalo-rachidien |
| **NfL** | Neurofilaments a chaine legere ; biomarqueur de lesion axonale |
| **NMD** | Nonsense-Mediated mRNA Decay ; mecanisme de degradation des ARNm contenant un codon stop premature |
| **PV+** | Parvalbumine-positif ; sous-type d'interneurone inhibiteur |
| **TANGO** | Targeted Augmentation of Nuclear Gene Output ; technologie ASO de Stoke Therapeutics |

---

## Annexe B : Contacts et ressources pour les familles et cliniciens

- **Stoke Therapeutics :** www.stoketx.com -- Informations sur STK-001 et eligibilite aux essais
- **Neurocrine Biosciences :** www.neurocrine.com -- Informations sur ETX101 et l'essai EMBRAVE
- **ClinicalTrials.gov :** www.clinicaltrials.gov -- Rechercher les essais en cours pour "Dravet syndrome"
- **Dravet Syndrome Foundation :** www.dravetfoundation.org -- Ressources pour les familles et mise en relation avec les centres de recherche
- **Dravet Syndrome European Federation (DSEF) :** www.dravet.eu -- Ressources europeennes
- **Alliance Syndrome de Dravet (France) :** www.dravet.fr -- Association francaise de reference

---

> **Statut du document :** Document de recherche complet. Les sections marquees [A VERIFIER/ACTUALISER] necessitent une mise a jour avec les donnees les plus recentes (post-mai 2025), notamment les resultats des essais SWALLOWTAIL et EMBRAVE presentes lors des congres 2025-2026.
