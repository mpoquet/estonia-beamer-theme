---
title: Beamer slides in markdown (via pandoc)
author: Millian Poquet
theme: Estonia
date: 2020-08-06
header-includes:
- |
  ```{=latex}
  \setbeamertemplate{footline}[frame number]

  % Fix pandoc shenanigans
  \setbeamertemplate{section page}{}
  \setbeamertemplate{subsection page}{}
  \AtBeginSection{}
  \AtBeginSubsection{}
  ```
---

### Table of contents
\tableofcontents

# Why ?
## Introduction
### Because
**Acknowledgement**. Slides heavily inspired from rom1v's tutorial[^1].

[^1]: <https://blog.rom1v.com/2014/02/des-slides-beamer-en-markdown>

- Readable source code
- *git*able source code
- Same result as *Beamer*

## Basics
### Lists
- Unlicense
- BSD
- GPL
    - GPLv2
    - GPLv3
- MIT

### Numbered lists
#. Get project
#. Install `pandoc`
#. Install dependencies
    #. `texlive-latex-full`
    #. etc.
#. Install a pdf renderer (`llpp`)

### Step-by-step display
> - First…
> - Then…
> - Finally…

## Code
### Syntax highlighting
Becomes trivial.

#### D
~~~d
import std.stdio;
void main() {
    writeln("Hello world!");
}
~~~

#### LaTeX
~~~latex
\documentclass[12pt]{article}
\begin{document}
Hello World!
\end{document}
~~~

### Numbered code
~~~{.c .numberLines startFrom="5"}
int main(int argc, char *argv[]) {
  printf("Hello world!\n");
  return 0;
}
~~~

## Blocks
### Raw latex and blocks (itemize)
```{=latex}
\begin{block}{block}
  \begin{itemize}
    \item{item 1}
    \begin{itemize}
      \item{subitem 1}
    \end{itemize}
    \item{item 2}
  \end{itemize}
\end{block}

\begin{exampleblock}{exampleblock}
  \begin{itemize}
    \item{item 1}
    \begin{itemize}
      \item{subitem 1}
      \item{subitem 2}
    \end{itemize}
  \end{itemize}
\end{exampleblock}

\begin{alertblock}{alertblock}
  \begin{itemize}
    \item{item 1}
    \item{item 2}
    \begin{itemize}
      \item{subitem 1}
    \end{itemize}
  \end{itemize}
\end{alertblock}
```

### Raw latex and blocks (enumerate)
```{=latex}
\begin{block}{block}
  \begin{enumerate}
    \item{item 1}
    \begin{enumerate}
      \item{subitem 1}
    \end{enumerate}
    \item{item 2}
  \end{enumerate}
\end{block}

\begin{exampleblock}{exampleblock}
  \begin{enumerate}
    \item{item 1}
    \begin{enumerate}
      \item{subitem 1}
      \item{subitem 2}
    \end{enumerate}
  \end{enumerate}
\end{exampleblock}

\begin{alertblock}{alertblock}
  \begin{enumerate}
    \item{item 1}
    \item{item 2}
    \begin{enumerate}
      \item{subitem 1}
    \end{enumerate}
  \end{enumerate}
\end{alertblock}
```

# Another section

### Empty slide
