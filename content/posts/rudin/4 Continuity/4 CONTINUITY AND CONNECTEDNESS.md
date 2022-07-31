---
title: CONTINUITY AND CONNECTEDNESS
date: 2022-07-23
---

**4.22 Theorem** If $f$ is a continuous mapping of a metric space $X$ into a metric space $Y$, and if $E$ is a connected subset of $X$, then $f(E)$ is connected.

Proof Assume, on the contrary, that $f(E)=A \cup B$, where $A$ and $B$ are nonempty separated subsets of $Y$. Put $G=E \cap f^{-1}(A), H=E \cap f^{-1}(B)$. Then $E=G \cup H$, and neither $G$ nor $H$ is empty.

Since $A \subset \bar{A}$ (the closure of $A$ ), we have $G \subset f^{-1}(\bar{A})$; the latter set is closed, since $f$ is continuous; hence $\bar{G} \subset f^{-1}(\bar{A})$. It follows that $f(\bar{G}) \subset \bar{A}$. Since $f(H)=B$ and $\bar{A} \cap B$ is empty, we conclude that $\bar{G} \cap H$ is empty.
The same argument shows that $G \cap \bar{H}$ is empty. Thus $G$ and $H$ are separated. This is impossible if $E$ is connected.

**4.23 Theorem** Let $f$ be a continuous real function on the interval $[a, b]$. If $f(a)<f(b)$ and if $c$ is a number such that $f(a)<c<f(b)$, then there exists a point $x \in(a, b)$ such that $f(x)=c$.

A similar result holds, of course, if $f(a)>f(b)$. Roughly speaking, the theorem says that a continuous real function assumes all intermediate values on an interval.

Proof By Theorem 2.47, $[a, b]$ is connected; hence Theorem $4.22$ shows that $f([a, b])$ is a connected subset of $R^{1}$, and the assertion follows if we appeal once more to Theorem 2.47.

**4.24 Remark** At first glance, it might seem that Theorem $4.23$ has a converse. That is, one might think that if for any two points $x_{1}<x_{2}$ and for any number $c$ between $f\left(x_{1}\right)$ and $f\left(x_{2}\right)$ there is a point $x$ in $\left(x_{1}, x_{2}\right)$ such that $f(x)=c$, then $f$ must be continuous.
That this is not so may be concluded from Example $4.27(d)$.

