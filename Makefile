# Makefile racine — Monorepo Dravet
#
# Deux livrables :
#   1. livre/        — Ouvrage de reference sur le syndrome de Dravet
#   2. fil-ariane/   — Guide d'action pour l'adulte Dravet en structure
#

.PHONY: all livre fil-ariane html html-livre html-fil-ariane pdf clean deps help

## Cible par defaut : tout construire
all: livre fil-ariane

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

## --- Les deux en HTML (pour GitHub Pages) ---

html: html-livre html-fil-ariane
	@mkdir -p _site
	@cp -r livre/_site/* _site/ 2>/dev/null || true
	@cp fil-ariane/_site/index.html _site/fil-ariane.html 2>/dev/null || true
	@cp fil-ariane/style.css _site/fil-ariane-style.css 2>/dev/null || true
	@echo "=> _site/ (livre + fil d'ariane)"

## --- PDF ---

pdf: livre fil-ariane

## --- Dependances ---

deps:
	@$(MAKE) -C livre deps

## --- Nettoyage ---

clean:
	@$(MAKE) -C livre clean
	@$(MAKE) -C fil-ariane clean
	rm -rf _site

## --- Aide ---

help:
	@echo "Cibles disponibles :"
	@echo "  make              Construire les deux livrables (PDF)"
	@echo "  make livre        Construire le livre seul"
	@echo "  make fil-ariane   Construire le Fil d'Ariane seul"
	@echo "  make html         Construire les deux en HTML (GitHub Pages)"
	@echo "  make deps         Installer les dependances"
	@echo "  make clean        Supprimer les fichiers generes"
