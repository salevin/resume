.PHONY: clean all build clean-all

# Compiler
CC = xelatex

# Directories
RESUME_DIR = resume-2025

# Source files
RESUME_MAIN = $(RESUME_DIR)/resume.tex
RESUME_OUT = $(RESUME_DIR)/resume.pdf

# Default target - always rebuilds
all: build

# Build resume PDF (always regenerates)
build:
	cd $(RESUME_DIR) && $(CC) resume.tex
	cd $(RESUME_DIR) && $(CC) resume.tex

# File-based target for dependency tracking (if needed elsewhere)
$(RESUME_OUT): build
	@echo "PDF generated: $@"

# Clean build artifacts
clean:
	cd $(RESUME_DIR) && rm -f *.aux *.fdb_latexmk *.fls *.log *.synctex.gz *.xdv *.out
	rm -f $(RESUME_OUT)

# Deep clean (including PDF)
clean-all: clean
	rm -f $(RESUME_DIR)/resume.pdf
