# Makefile racine — Monorepo Dravet
#
# Deux livrables :
#   1. livre/        — Ouvrage de reference sur le syndrome de Dravet
#   2. fil-ariane/   — Guide d'action pour l'adulte Dravet en structure
#

.PHONY: all livre fil-ariane guide-equipes recherche-recueil boite-a-outils html html-livre html-fil-ariane html-guide-equipes html-recherche html-outils pdf clean deps help

## Cible par defaut : tout construire
all: livre fil-ariane guide-equipes recherche-recueil

## --- Livre ---

livre:
	@$(MAKE) -C livre pdf

html-livre:
	@$(MAKE) -C livre html

## --- Fil d'Ariane ---

fil-ariane:
	@$(MAKE) -C fil-ariane pdf

html-fil-ariane:
	@$(MAKE) -C fil-ariane html

## --- Guide equipes ---

guide-equipes:
	@$(MAKE) -C guide-equipes pdf

html-guide-equipes:
	@$(MAKE) -C guide-equipes html

## --- Recueil de recherche ---

recherche-recueil:
	@$(MAKE) -C recherche-recueil pdf

html-recherche:
	@$(MAKE) -C recherche-recueil html

## --- Boite a outils ---

boite-a-outils:
	@echo "Boite a outils : pas de PDF (pages HTML autonomes)"

html-outils:
	@$(MAKE) -C boite-a-outils html

## --- Les cinq en HTML (pour GitHub Pages) ---

html: html-livre html-fil-ariane html-guide-equipes html-recherche html-outils
	@mkdir -p _site/livre _site/fil-ariane _site/guide-equipes _site/recherche _site/boite-a-outils
	@cp index.html _site/
	@cp -r livre/_site/* _site/livre/ 2>/dev/null || true
	@cp -r fil-ariane/_site/* _site/fil-ariane/ 2>/dev/null || true
	@cp -r guide-equipes/_site/* _site/guide-equipes/ 2>/dev/null || true
	@cp -r recherche-recueil/_site/* _site/recherche/ 2>/dev/null || true
	@cp -r boite-a-outils/_site/* _site/boite-a-outils/ 2>/dev/null || true
	@echo "=> _site/ (accueil + 5 livrables)"

## --- PDF ---

pdf: livre fil-ariane guide-equipes recherche-recueil

## --- Dependances ---

deps:
	@$(MAKE) -C livre deps

## --- Nettoyage ---

clean:
	@$(MAKE) -C livre clean
	@$(MAKE) -C fil-ariane clean
	@$(MAKE) -C guide-equipes clean
	@$(MAKE) -C recherche-recueil clean
	@$(MAKE) -C boite-a-outils clean
	rm -rf _site

## --- Aide ---

help:
	@echo "Cibles disponibles :"
	@echo "  make              Construire les trois livrables (PDF)"
	@echo "  make livre        Construire le livre seul"
	@echo "  make fil-ariane   Construire le Fil d'Ariane seul"
	@echo "  make guide-equipes  Construire le Guide equipes seul"
	@echo "  make html         Construire les trois en HTML (GitHub Pages)"
	@echo "  make deps         Installer les dependances"
	@echo "  make clean        Supprimer les fichiers generes"
