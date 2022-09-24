---
title: 1 Set-Theoretic Notations and Terminology
date: 2022-09-17
---


1.1 Some sets can be described by listing their members. Thus $\left\{x_1, \ldots, x_n\right\}$ is the set whose members are $x_1, \ldots, x_n$; and $\{x\}$ is the set whose only member is $x$. More often, sets are described by properties. We write
$$
\{x: P\}
$$
for the set of all elements $x$ which have the property $P$. The symbol $\varnothing$ denotes the empty set. The words *collection, family, and class* will be used synonymously with *set*.

We write $x \in A$ if $x$ is a member of the set $A$; otherwise $x \notin A$. If $B$ is a subset of $A$, i.e., if $x \in B$ implies $x \in A$, we write $B \subset A$. If $B \subset A$ and $A \subset B$, then $A=B$. If $B \subset A$ and $A \neq B, B$ is a *proper subset* of $A$. Note that $\varnothing \subset A$ for every set $A$.

$A \cup B$ and $A \cap B$ are the union and intersection of $A$ and $B$, respectively. If $\left\{A_\alpha\right\}$ is a collection of sets, where $\alpha$ runs through some index set $I$, we write

$$
\bigcup_{\alpha \in I} A_\alpha \text { and } \bigcap_{\alpha \in I} A_\alpha
$$

for the union and intersection of $\left\{A_\alpha\right\}$ :
$$
\begin{aligned}
&\bigcup_{\alpha \in I} A_\alpha=\left\{x: x \in A_\alpha \text { for at least one } \alpha \in I\right\} \\
&\bigcap_{\alpha \in I} A_\alpha=\left\{x: x \in A_\alpha \text { for every } \alpha \in I\right\} .
\end{aligned}
$$
If $I$ is the set of all positive integers, the customary notations are
$$
\bigcup_{n=1}^{\infty} A_n \text { and } \bigcap_{n=1}^{\infty} A_n
$$
If no two members of $\left\{A_\alpha\right\}$ have an element in common, then $\left\{A_\alpha\right\}$ is a *disjoint collection* of sets:

We write $A-B=\{x: x \in A, x \notin B\}$, and denote the complement of $A$ by $A^c$ whenever it is clear from the context with respect to which larger set the complement is taken.

The *cartesian product* $A_1 \times \cdots \times A_n$ of the sets $A_1, \ldots, A_n$ is the set of all ordered $n$-tuples $\left(a_1, \ldots, a_n\right)$ where $a_i \in A_i$ for $i=1, \ldots, n$.
The *real line* (or real number system) is $R^1$, and
$$
R^k=R^1 \times \cdots \times R^1 \quad(k \text { factors }) .
$$
The **extended real number system** is $R^1$ with two symbols, $\infty$ and $-\infty$, adjoined, and with the obvious ordering. If $-\infty \leq a \leq b \leq \infty$, the **interval** $[a, b]$ and the **segment** $(a, b)$ are defined to be
$$
[a, b]=\{x: a \leq x \leq b\}, \quad(a, b)=\{x: a<x<b\} .
$$
We also write
$$
[a, b)=\{x: a \leq x<b\}, \quad(a, b]=\{x: a<x \leq b\} .
$$
If $E \subset[-\infty, \infty]$ and $E \neq \varnothing$, the least upper bound (supremum) and greatest lower bound (infimum) of $E$ exist in $[-\infty, \infty]$ and are denoted by sup $E$ and $\inf E$.

Sometimes (but only when sup $E \in E$ ) we write $\max E$ for sup $E$.
The symbol
$$
f: X \rightarrow Y
$$
If no two members of $\left\{A_\alpha\right\}$ have an element in common, then $\left\{A_\alpha\right\}$ is a disjoint collection of sets:

We write $A-B=\{x: x \in A, x \notin B\}$, and denote the complement of $A$ by $A^c$ whenever it is clear from the context with respect to which larger set the complement is taken.

The cartesian product $A_1 \times \cdots \times A_n$ of the sets $A_1, \ldots, A_n$ is the set of all ordered $n$-tuples $\left(a_1, \ldots, a_n\right)$ where $a_i \in A_i$ for $i=1, \ldots, n$.
The real line (or real number system) is $R^1$, and
$$
R^k=R^1 \times \cdots \times R^1 \quad(k \text { factors }) .
$$
The extended real number system is $R^1$ with two symbols, $\infty$ and $-\infty$, adjoined, and with the obvious ordering. If $-\infty \leq a \leq b \leq \infty$, the interval $[a, b]$ and the segment $(a, b)$ are defined to be
$$
[a, b]=\{x: a \leq x \leq b\}, \quad(a, b)=\{x: a<x<b\} .
$$
We also write
$$
[a, b)=\{x: a \leq x<b\}, \quad(a, b]=\{x: a<x \leq b\} .
$$
If $E \subset[-\infty, \infty]$ and $E \neq \varnothing$, the least upper bound (supremum) and greatest lower bound (infimum) of $E$ exist in $[-\infty, \infty]$ and are denoted by sup $E$ and $\inf E$.
Sometimes (but only when sup $E \in E$ ) we write $\max E$ for sup $E$.
The symbol
$$
f: X \rightarrow Y
$$
means that $f$ is a **function (or mapping or transformation)** of the set $X$ into the set $Y$; i.e., $f$ assigns to each $x \in X$ an element $f(x) \in Y$. If $A \subset X$ and $B \subset Y$, the **image** of $A$ and the **inverse image** (or pre-image) of $B$ are
$$
\begin{aligned}
f(A) &=\{y: y=f(x) \text { for some } x \in A\}, \\
f^{-1}(B) &=\{x: f(x) \in B\} .
\end{aligned}
$$
Note that $f^{-1}(B)$ may be empty even when $B \neq \varnothing$.

The **domain** of $f$ is $X$. The **range** of $f$ is $f(X)$.

If $f(X)=Y, f$ is said to $\operatorname{map} X$ **onto** $Y$.

We write $f^{-1}(y)$, instead of $f^{-1}(\{y\})$, for every $y \in Y$. If $f^{-1}(y)$ consists of at most one point, for each $y \in Y, f$ is said to be **one-to-one**. If $f$ is one-to-one, then $f^{-1}$ is a function with domain $f(X)$ and range $X$.

If $f: X \rightarrow[-\infty, \infty]$ and $E \subset X$, it is customary to write $\sup _{x \in E} f(x)$ rather than $\sup f(E)$.

If $f: X \rightarrow Y$ and $g: Y \rightarrow Z$, the **composite function** $g \circ f: X \rightarrow Z$ is defined by the formula
$$
(g \circ f)(x)=g(f(x)) \quad(x \in X)
$$
If the range of $f$ lies in the real line (or in the complex plane), then $f$ is said to be a **real function** (or a **complex function**). For a complex function $f$, the statement "$ f \geq 0 $" means that all values $f(x)$ of $f$ are nonnegative real numbers.
