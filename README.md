# Resume

Personal resume repository for Samuel Levin built with LaTeX using the [Awesome CV](https://github.com/posquit0/Awesome-CV) template.

## Overview

This repository contains multiple resume variants tailored for different types of opportunities:

- **Startup Resume** (`resume-startup.tex`) - Optimized for startup positions
- **Data Engineering Resume** (`resume-data-engineering.tex`) - Focused on data engineering roles
- **Standard Resume** (`resume.tex`) - General-purpose resume

All resume variants are located in the `resume-2025/` directory and share common content files in `resume-2025/resume/`.

## Project Structure

```
resume-2025/
├── resume-startup.tex          # Startup-focused resume
├── resume-data-engineering.tex # Data engineering resume
├── resume.tex                  # Standard resume
├── awesome-cv.cls              # LaTeX class file
├── fonts/                      # Custom fonts
└── resume/                     # Shared content modules
    ├── summary.tex
    ├── summary-data-engineering.tex
    ├── experience.tex
    └── education.tex
```

## Building the Resumes

### Prerequisites

A full TeX distribution is required. The following are recommended:

- **macOS**: Install MacTeX via `brew install --cask mactex` or download from [MacTeX website](https://www.tug.org/mactex/)
- **Linux**: Install TeX Live via `sudo apt-get install texlive-full` or your distribution's package manager
- **Windows**: Install MiKTeX or TeX Live from [TeX Live website](https://www.tug.org/texlive/)

Alternatively, you can use [Docker](https://www.docker.com/) to avoid local installation:

```bash
docker run --rm --user $(id -u):$(id -g) -i -w "/doc" -v "$PWD":/doc texlive/texlive:latest make
```

### Build Commands

Build all resumes:
```bash
make
```

Build specific resume variants:
```bash
make build-startup           # Build startup resume only
make build-data-engineering  # Build data engineering resume only
```

The compiled PDFs will be generated in the `resume-2025/` directory.

### Clean Build Artifacts

```bash
make clean      # Remove auxiliary files (keeps PDFs)
make clean-all  # Remove all build artifacts including PDFs
```

## Automated Builds

This repository uses GitHub Actions to automatically compile PDFs on every push. The generated PDFs are available as artifacts in the Actions workflow.

## Customization

### Editing Content

Resume content is modularized into separate files:

- `resume/summary.tex` - Professional summary (general)
- `resume/summary-data-engineering.tex` - Data engineering-specific summary
- `resume/experience.tex` - Work experience
- `resume/education.tex` - Education background

### Creating New Variants

To create a new resume variant:

1. Copy an existing `.tex` file (e.g., `resume-startup.tex`)
2. Modify the imports to use the appropriate summary file
3. Update the Makefile to include the new build target
4. Update the GitHub Actions workflow if you want it built automatically

### Styling

The resume uses the Awesome CV template with custom fonts located in the `fonts/` directory. To modify styling, edit `awesome-cv.cls` or adjust the color scheme in the main `.tex` files.

## License

This resume is based on the [Awesome CV template](https://github.com/posquit0/Awesome-CV), which is licensed under CC BY-SA 4.0.

---

**Note**: This is a personal resume repository. Feel free to fork and adapt it for your own use, but please don't copy the content without permission.
