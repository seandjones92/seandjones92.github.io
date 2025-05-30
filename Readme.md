# Sean Jones Personal Site

This site is a static website generated from Markdown files using Pandoc and Make.

## How it Works

- **Content Source:**
  - All site content is written in Markdown and stored in the `Markdown/` directory.
- **HTML Output:**
  - The Markdown files are converted to HTML and placed in the `HTML/` directory.
- **Templating:**
  - Pandoc uses a custom template (`PandocTemplates/template.html`) to ensure consistent styling and layout across all pages.
- **Automation:**
  - The `Makefile` automates the build process, mapping each Markdown file to its corresponding HTML output.

## Usage

1. **Build the Site:**
   - Run `make` to convert all Markdown files to HTML.
2. **Serve Locally:**
   - Run `make serve` to start a local web server at [http://localhost:8000](http://localhost:8000) and preview the site.
3. **Clean Output:**
   - Run `make clean` to remove all generated HTML files.

## Directory Structure

```
/Markdown         # Source Markdown files
/HTML             # Generated HTML files
/PandocTemplates  # Pandoc HTML template
Makefile          # Build automation
```

## Requirements
- [Pandoc](https://pandoc.org/) (ensure it is installed and available at `/opt/homebrew/bin/pandoc` or update the Makefile)
- Python 3 (for serving files locally)

---

Feel free to edit the Markdown files to update site content. Run `make` after changes to regenerate the HTML output.