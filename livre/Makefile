CHAPITRES  = $(wildcard chapitres/*.md)
OUTPUT_MD  = livre_complet.md
OUTPUT_WEB = livre_complet_web.md
OUTPUT_PDF = livre_complet.pdf
OUTPUT_HTML = _site/index.html
STYLE      = style.css
TEMPLATE   = template.html

# Detection de l'OS
UNAME := $(shell uname -s)
ifeq ($(UNAME),Darwin)
  PKG_MGR := brew
else ifeq ($(UNAME),Linux)
  PKG_MGR := apt
else
  PKG_MGR := unknown
endif

HAS_NODE   := $(shell command -v node 2>/dev/null)
HAS_NPM    := $(shell command -v npm 2>/dev/null)
HAS_PANDOC := $(shell command -v pandoc 2>/dev/null)

.PHONY: all pdf md html clean help deps check-deps-pdf check-deps-html

## Cible par defaut : generer le PDF
all: pdf

## --- Verification des dependances ---

check-deps-pdf:
ifndef HAS_NODE
	$(error Node.js introuvable. Lancez 'make deps' pour installer les dependances)
endif
ifndef HAS_NPM
	$(error npm introuvable. Lancez 'make deps' pour installer les dependances)
endif

check-deps-html:
ifndef HAS_PANDOC
	$(error pandoc introuvable. Lancez 'make deps' pour installer les dependances)
endif

## Installer les dependances selon l'OS
deps:
ifeq ($(PKG_MGR),brew)
	@echo "macOS detecte — installation via Homebrew..."
	@command -v brew >/dev/null || (echo "Erreur : Homebrew requis. https://brew.sh" && exit 1)
	@command -v node >/dev/null || brew install node
	@command -v pandoc >/dev/null || brew install pandoc
else ifeq ($(PKG_MGR),apt)
	@echo "Linux (apt) detecte — installation via apt..."
	@command -v node >/dev/null || (sudo apt-get update && sudo apt-get install -y nodejs npm)
	@command -v pandoc >/dev/null || sudo apt-get install -y pandoc
	@# Chromium headless pour Puppeteer (utilise par md-to-pdf)
	@sudo apt-get install -y chromium-browser 2>/dev/null \
		|| sudo apt-get install -y chromium 2>/dev/null \
		|| echo "Info : installez Chromium manuellement si la generation PDF echoue"
else
	@echo "OS non reconnu. Installez manuellement :"
	@echo "  1. Node.js >= 18  (https://nodejs.org)"
	@echo "  2. pandoc          (https://pandoc.org)"
	@echo "  3. npm install -g md-to-pdf"
	@exit 1
endif
	@echo "Installation de md-to-pdf..."
	@npm install -g md-to-pdf
	@echo "Dependances installees."

## --- Assemblage ---

md: $(OUTPUT_MD)

$(OUTPUT_MD): $(CHAPITRES) assemble.sh
	@echo "Assemblage des chapitres (PDF)..."
	@./assemble.sh
	@echo "=> $(OUTPUT_MD) ($$( wc -l < $(OUTPUT_MD) ) lignes)"

$(OUTPUT_WEB): $(CHAPITRES) assemble.sh
	@echo "Assemblage des chapitres (HTML)..."
	@./assemble.sh --html
	@echo "=> $(OUTPUT_WEB) ($$( wc -l < $(OUTPUT_WEB) ) lignes)"

## --- Generation PDF ---

pdf: check-deps-pdf $(OUTPUT_PDF)

$(OUTPUT_PDF): $(OUTPUT_MD) $(STYLE)
	@echo "Rendu des diagrammes Mermaid..."
	@mmdc -i $(OUTPUT_MD) -o _mermaid_rendered.md --quiet -p $(CURDIR)/puppeteer-config.json || mmdc -i $(OUTPUT_MD) -o _mermaid_rendered.md --quiet || (echo "mmdc indisponible, mermaid non rendu" && cp $(OUTPUT_MD) _mermaid_rendered.md)
	@echo "Generation du PDF..."
	@npx --yes md-to-pdf _mermaid_rendered.md
	@mv _mermaid_rendered.pdf $(OUTPUT_PDF)
	@rm -f _mermaid_rendered.md _mermaid_rendered-*.svg
	@echo "=> $(OUTPUT_PDF)"

## --- Generation HTML (GitHub Pages) ---

html: check-deps-html $(OUTPUT_HTML)

$(OUTPUT_HTML): $(OUTPUT_WEB) $(STYLE) $(TEMPLATE)
	@mkdir -p _site
	@echo "Generation du HTML..."
	@pandoc $(OUTPUT_WEB) \
		-o $(OUTPUT_HTML) \
		--standalone \
		--template=$(TEMPLATE) \
		--metadata title="Syndrome de Dravet — Ouvrage de Reference" \
		--css=$(STYLE) \
		--toc \
		--toc-depth=2
	@cp $(STYLE) _site/
	@echo "=> $(OUTPUT_HTML)"

## --- Nettoyage ---

clean:
	rm -f $(OUTPUT_MD) $(OUTPUT_WEB) $(OUTPUT_PDF)
	rm -rf _site

## --- Aide ---

help:
	@echo "Cibles disponibles :"
	@echo "  make          Assembler le markdown et generer le PDF"
	@echo "  make md       Assembler uniquement le markdown"
	@echo "  make pdf      Generer le PDF (assemble le markdown si necessaire)"
	@echo "  make html     Generer le site HTML (GitHub Pages)"
	@echo "  make deps     Installer les dependances (Node.js, pandoc, md-to-pdf)"
	@echo "  make clean    Supprimer les fichiers generes"
	@echo "  make help     Afficher cette aide"
	@echo ""
	@echo "OS detecte : $(UNAME) ($(PKG_MGR))"
