# Project Overview
Generate my resume in .pdf format using `lualatex`.

## Directory Structure
```
.
├── auto-build.sh
├── flake.nix
├── output
└── templates
```

`.tex` files for various templates live in `templates/` directory. When the `auto-build.sh` script is running edited `.tex` files are compiled to `.pdf` and moved to the `output/` directory.

## Dependencies
Enumerated as `buildInputs` in `flake.nix`.
- `texlive` installs dependencies required to run the `lualatex` command line tool.
- `inotify-tools` installs dependencies required to run `innotifywait` used in `auto-build.sh` to listen for filesystem changes. 

# Getting Started
Launch development environment and run auto build script.
```
nix develop
./auto-build.sh
```

Edit `.tex` files and view the `.pdf` files using a browser or pdf viewer.

## Manual Compilation
To compile a `.pdf` without `auto-build.sh` change directory to the particular template containing `.tex` and `.cls` files and run `lualatex`.
```
cd templates/${template}
lualatex ${template}.tex
```
`.cls` defines the resume layout used by the `.tex` file. `.aux` and `.out` are intermediate files used to build the `.pdf` and may be removed after compilation.

## Templates
Sourced from [latextemplates.com](latextemplates.com). Modified for my needs.
- [Freeman](https://www.latextemplates.com/template/freeman-cv)
- [Medium Length](https://www.latextemplates.com/template/medium-length-professional-cv)
