.PHONY: clean all

# Compiler
CC = xelatex

# Directories
RESUME_DIR = resume-2025

# Source files
RESUME_MAIN = $(RESUME_DIR)/resume.tex
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
RESUME_OUT = $(RESUME_DIR)/resume.pdf

# Default target
all: $(RESUME_OUT)

# Build resume PDF
$(RESUME_OUT): $(RESUME_MAIN) $(RESUME_SRCS)
	cd $(RESUME_DIR) && $(CC) resume.tex
	cd $(RESUME_DIR) && $(CC) resume.tex

# Clean build artifacts
clean:
	cd $(RESUME_DIR) && rm -f *.aux *.fdb_latexmk *.fls *.log *.synctex.gz *.xdv *.out
	rm -f $(RESUME_OUT)

# Deep clean (including PDF)
clean-all: clean
	rm -f $(RESUME_DIR)/resume.pdf
