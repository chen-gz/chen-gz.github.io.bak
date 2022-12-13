---
title: Latex usage
author: Zong
date: 2020-11-23
categories: [Misc]
tags: [Latex]
---


change image caption to center

https://tex.stackexchange.com/questions/95207/how-to-center-a-specific-caption

```tex
\captionsetup{justification=centering}
```

Fix image position issue

https://tex.stackexchange.com/questions/494694/how-can-i-get-my-table-or-figure-to-stay-where-they-are-instead-of-going-to-the

```tex
\documentclass[a4paper,man,floatsintext,natbib]{apa6}
```

how to insert image

```latex
\begin{figure}[!h]
\centering % 图片居中
\includegraphics[width = 15cm]{result1.png}
\caption{Adversarial images}
\label{Fig3}
\end{figure}
```

