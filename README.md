# bankingcv

## A banking-style curriculum vitae class for LaTeX

The `bankingcv` package provides a document class for typesetting applications (curricula vitae and cover letters) using the banking style. It is a simplified fork of `moderncv`, keeping only the banking style.

According to the LaTeX Project Public License (LPPL), this modified version has been renamed from `moderncv` to `bankingcv` to distinguish it from the original package.

## Getting started

### Installation
Clone this repository and place the files in your LaTeX search path, or compile directly from the directory containing the files:
```
latexmk -pdf ./template.tex
```

### Usage
To get started on your own CV, use and modify the template file `template.tex`.

In your document preamble, use:
```latex
\documentclass[11pt,a4paper,sans]{bankingcv}
\bankingcvcolor{blue}   % color options: 'black', 'blue' (default), 'burgundy', 'green', 'grey', 'orange', 'purple', 'red'
```

The package now uses letters-only contact/social markers (`bankingcviconsletters.sty`) to keep dependencies minimal.

### Typst
A Typst translation is available as:

- `bankingcv.typ`: reusable Typst functions mirroring the main `bankingcv` CV and letter primitives
- `template.typ`: a Typst sample document translated from `template.tex`

Compile with:
```
typst compile ./template.typ
```

## Licence

`bankingcv` is licensed under the [LPPL-1.3c](https://spdx.org/licenses/LPPL-1.3c.html).

## Origin

Original package: `moderncv` by Xavier Danaux <xdanaux@gmail.com>
<br/>
Original repository: https://github.com/moderncv/moderncv

This repository is a simplified fork of `moderncv` that keeps only the banking style. Renamed per LPPL requirements.
