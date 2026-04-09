# CV

LaTeX source for Jonathan-Oliver Funke-Kaiser's curriculum vitae, built with
[`moderncv`](https://ctan.org/pkg/moderncv) (classic style).

## Prerequisites

A TeX distribution with `latexmk` and the `moderncv` package.

On macOS, install BasicTeX and the required packages:

```sh
brew install --cask basictex

# BasicTeX installs binaries under /Library/TeX/texbin — add to PATH
# (already on PATH for new shells after install; for the current shell:)
eval "$(/usr/libexec/path_helper)"

sudo tlmgr update --self
sudo tlmgr install latexmk moderncv collection-fontsrecommended
```

## Build

```sh
make            # builds cv.pdf
make watch      # rebuild on save (latexmk -pvc)
make clean      # remove aux files, keep cv.pdf
make distclean  # remove everything generated, including cv.pdf
```

To use a different engine (e.g. for system fonts via `fontspec`):

```sh
make ENGINE=xelatex
```

## Files

- `cv.tex` — CV source
- `Makefile` — build targets
