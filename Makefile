# top-level dirs
SRC := Markdown
DST := HTML

# command and flags
PANDOC := pandoc -s --template=PandocTemplates/template.html

# find all .md under SRC
MD := $(shell find $(SRC) -name '*.md')

# map Markdown/foo/bar.md → HTML/foo/bar.html
HTML := $(patsubst $(SRC)/%.md,$(DST)/%.html,$(MD))

# default target
all: $(HTML)

# pattern rule: build HTML/%.html from Markdown/%.md
$(DST)/%.html: $(SRC)/%.md
	@echo "→ $<"
	mkdir -p $(dir $@)
	$(PANDOC) $< -o $@

# Use python to serve the HTML directory
.PHONY: serve
serve:
	@echo "Serving HTML files at http://localhost:8000"
	python3 -m http.server --directory $(DST)

# convenience: rebuild everything
.PHONY: clean
clean:
	rm -rf $(DST)/*.html $(DST)/*/*.html
