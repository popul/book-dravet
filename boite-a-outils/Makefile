# Makefile — Boite a Outils Dravet
# Pages HTML autonomes imprimables (pas de PDF genere, pas d'assemblage markdown)

NAV_BANNER = ../_shared/nav-banner.html
OUTPUT_DIR = _site

# Tous les fichiers HTML source dans les sous-dossiers
PAGES = $(shell find . -name '*.html' -not -path './_site/*' -not -name 'Makefile')

.PHONY: html clean

html:
	@mkdir -p $(OUTPUT_DIR)/urgence $(OUTPUT_DIR)/douleur $(OUTPUT_DIR)/passeport
	@echo "Copie des pages de la boite a outils..."
	@for dir in urgence douleur passeport; do \
		for f in $$dir/*.html; do \
			[ -f "$$f" ] && cp "$$f" "$(OUTPUT_DIR)/$$f"; \
		done; \
	done
	@cp index.html $(OUTPUT_DIR)/
	@echo "=> $(OUTPUT_DIR)/"

clean:
	rm -rf $(OUTPUT_DIR)
