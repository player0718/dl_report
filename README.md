# AI6103 Project Report

LaTeX scaffold for the AI6103 group project: *Regularization Techniques for ViT on CIFAR-100: A Comparative Study*.

## What's in here

```
report/
├── main.tex                 # entry point; \input's all sections
├── references.bib           # bibliography (natbib / plainnat)
├── Makefile                 # `make` -> main.pdf via latexmk
├── README.md                # this file
├── sections/
│   ├── abstract.tex
│   ├── introduction.tex
│   ├── related_work.tex
│   ├── methodology.tex
│   ├── experiments_baseline.tex
│   ├── experiments_weight_decay.tex
│   ├── experiments_dropout.tex
│   ├── experiments_augmentation.tex
│   ├── experiments_label_smoothing_early_stopping.tex
│   ├── comparison.tex
│   ├── conclusion.tex
│   └── contributions.tex
├── tables/
│   ├── wd_results.tex       # weight-decay sweep table
│   └── comparison.tex       # cross-technique summary table
└── figures/                 # drop your .pdf / .png plots here
    └── .gitkeep
```

## Section ownership

Each member edits their own `.tex` file; the rest stay untouched unless
the cross-cutting numbers change.

| Section file                                        | Owner                                  |
| --------------------------------------------------- | -------------------------------------- |
| `sections/experiments_baseline.tex`                 | Member 1 (Baseline)                    |
| `sections/experiments_weight_decay.tex`             | Member 2 (Weight Decay) — report lead  |
| `sections/experiments_dropout.tex`                  | Member 3 (Dropout)                     |
| `sections/experiments_augmentation.tex`             | Member 4 (Data Augmentation)           |
| `sections/experiments_label_smoothing_early_stopping.tex` | Member 5 (Label Smoothing + ES) |

Shared sections — coordinate in chat before large rewrites:

| File                            | Lead                                    |
| ------------------------------- | --------------------------------------- |
| `sections/abstract.tex`         | Member 2 (drafts), all review           |
| `sections/introduction.tex`     | Member 2 (drafts), all review           |
| `sections/related_work.tex`     | Member 2 (drafts), all add their refs   |
| `sections/methodology.tex`      | Member 1 (training protocol), each member fills their own subsection |
| `sections/comparison.tex`       | Member 2 (drafts), all contribute numbers |
| `sections/conclusion.tex`       | Member 2 (drafts), all review           |
| `sections/contributions.tex`    | All                                     |
| `references.bib`                | Whoever cites a paper adds the entry    |

## Build

```bash
# one-shot build
make

# or directly
latexmk -pdf main.tex

# live rebuild on save
make watch

# clean intermediates
make clean
```

Requires TeX Live (or MiKTeX) with packages: `geometry`, `microtype`,
`amsmath`, `algorithm`, `algpseudocode`, `siunitx`, `graphicx`,
`booktabs`, `subcaption`, `natbib`, `hyperref`, `cleveref`,
`todonotes`. All of these are in the standard `texlive-latex-extra`
bundle.

## Where to put new artifacts

* **Figures** → `figures/` as PDF (preferred) or 600 DPI PNG. Reference
  with `\includegraphics{wd_curves}` (no path, no extension).
* **Tables** → `tables/<name>.tex` if the table is large enough that
  inlining hurts readability; reference with `\input{tables/<name>}`.

## Conventions (please follow)

* **Cross-references**: use `\cref{...}` not `\ref{...}`.
* **Citations**: `\citep{key}` (parenthetical) and `\citet{key}`
  (textual). Do NOT mix in `\cite{...}` — `natbib` lets you, but it
  produces inconsistent formatting.
* **TODO markers**: use `\todo[inline]{...}` from `todonotes`. Do NOT
  use raw `% TODO:` LaTeX comments. One convention only; visible
  todos disappear automatically when removed.
* **Captions**: figures — caption *below*; tables — caption *above*.
  Captions must be self-contained (state the headline finding).
* **Numbers**: report units and consistent decimal precision
  (e.g. accuracies as `xx.x` percent, gaps as `x.x` percentage points).
* **Voice**: avoid first person except in `contributions.tex`. The
  rest is in the standard scientific third person ("We sweep...",
  "The model achieves...").
* **Conciseness**: AI6103 grades writing on "*Correct and idiomatic
  English. Clarity. Conciseness (as opposed to verbose and low
  information content per word).*" Cut every word that doesn't earn
  its place.

## Citation hygiene

`references.bib` contains only entries we are confident about. Pages
have been omitted where they were not 100% verifiable; venue and year
have been double-checked. **Do not invent references.** If you need a
new citation, look it up on Semantic Scholar or the publisher's site
and copy the canonical BibTeX, then add it to `references.bib`.

## Target length

Body content: 8–12 pages, exclusive of references and the optional
appendix. The skeleton is sized to land in this range when the TODOs
are filled in.
