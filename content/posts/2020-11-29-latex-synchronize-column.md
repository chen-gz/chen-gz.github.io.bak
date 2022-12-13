---
title: Latex synchronize column
categories: [Misc]
author: zong
date: 2020-11-29
tags: [Latex, Double Column]
---

the way to make two column synchoronze. 

chinese test

```latex
\documentclass{article}
\usepackage[UTF8]{ctex}
\begin{document}
你好，这是一个测试文档。
\end{document}
```

two column synchoronize template

```latex
\documentclass{article}
\usepackage[a4paper,top=1cm,bottom=2.1cm,left=2.1cm,right=1.8cm,%
            includehead,includefoot]{geometry}
% \usepackage[UTF8]{ctex}
\usepackage{parallel}
\begin{document}
\begin{Parallel}
    \ParallelLText{
    % 左侧文字1
    test
    }
    \ParallelRText{
    % 右侧文字1
    test2
    }
    \ParallelPar
    \ParallelLText{
    % 左侧文字2
    }
    \ParallelRText{
    % 右侧文字2
    }
    \ParallelPar
\end{Parallel}
\end{document} 
```
