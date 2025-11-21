.PHONY: clean all build build-startup build-data-engineering clean-all

# Compiler
CC = xelatex

# Directories
RESUME_DIR = resume-2025

# Source files
RESUME_STARTUP_MAIN = $(RESUME_DIR)/resume-startup.tex
RESUME_STARTUP_OUT = $(RESUME_DIR)/resume-startup.pdf
RESUME_DE_MAIN = $(RESUME_DIR)/resume-data-engineering.tex
RESUME_DE_OUT = $(RESUME_DIR)/resume-data-engineering.pdf

# Default target - always rebuilds both resumes
all: build

# Build both resumes
build: build-startup build-data-engineering

# Build startup resume PDF (always regenerates)
build-startup:
	cd $(RESUME_DIR) && $(CC) resume-startup.tex
	cd $(RESUME_DIR) && $(CC) resume-startup.tex

# Build data engineering resume PDF (always regenerates)
build-data-engineering:
	cd $(RESUME_DIR) && $(CC) resume-data-engineering.tex
	cd $(RESUME_DIR) && $(CC) resume-data-engineering.tex

# File-based targets for dependency tracking (if needed elsewhere)
$(RESUME_STARTUP_OUT): build-startup
	@echo "PDF generated: $@"

$(RESUME_DE_OUT): build-data-engineering
	@echo "PDF generated: $@"

# Clean build artifacts
clean:
	cd $(RESUME_DIR) && rm -f *.aux *.fdb_latexmk *.fls *.log *.synctex.gz *.xdv *.out
	rm -f $(RESUME_STARTUP_OUT) $(RESUME_DE_OUT)

# Deep clean (including PDFs)
clean-all: clean
	rm -f $(RESUME_DIR)/resume-startup.pdf $(RESUME_DIR)/resume-data-engineering.pdf
