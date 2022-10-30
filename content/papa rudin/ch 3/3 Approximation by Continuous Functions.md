---
title: 3 Approximation by Continuous Functions
date:  2022-10-28
---

So far we have considered $L^p(\mu)$ on any measure space. Now let $X$ be a locally compact Hausdorff space, and let $\mu$ be a measure on a $\sigma$-algebra $\mathfrak{M}$ in $X$, with the properties stated in Theorem 2.14. For example, $X$ might be $R^k$, and $\mu$ might be Lebesgue measure on $R^k$.

Under these circumstances, we have the following analogue of Theorem 3.13:

### 3.14 Theorem

For $1 \leq p<\infty, C_c(X)$ is dense in $L^p(\mu)$.

Proof Define $S$ as in Theorem 3.13. If $s \in S$ and $\epsilon>0$, there exists a $g \epsilon$ $C_c(X)$ such that $g(x)=s(x)$ except on a set of measure $<\epsilon$, and $|g| \leq\|s\|_{\infty}$ (Lusin's theorem). Hence

$$
\|g-s\|_p \leq 2 \epsilon^{1 / p}\|s\|_{\infty} .
$$

Since $S$ is dense in $L^p(\mu)$, this completes the proof.

### 3.15 Remarks

Let us discuss the relations between the spaces $L^p\left(R^k\right)$ (the $L^p-$ spaces in which the underlying measure is Lebesgue measure on $R^k$ ) and the space $C_c\left(R^k\right)$ in some detail. We consider a fixed dimension $k$.

For every $p \in[1, \infty]$ we have a metric on $C_c\left(R^k\right)$; the distance between $f$ and $g$ is $\|f-g\|_p$. Note that this is a genuine metric, and that we do not have to pass to equivalence classes. The point is that if two continuous functions on $R^k$ are not identical, then they differ on some nonempty open set $V$, and $m(V)>0$, since $V$ contains a $k$-cell. Thus if two members of $C_c\left(R^k\right)$ are equal a.e., they are equal. It is also of interest to note that in $C_c\left(R^k\right)$ the essential supremum is the same as the actual supremum: for $f \in C_c\left(R^k\right)$

$$
\|f\|_{\infty}=\sup _{x \in R^k}|f(x)| .
$$

If $1 \leq p<\infty$, Theorem $3.14$ says that $C_c\left(R^k\right)$ is dense in $L^p\left(R^k\right)$, and Theorem $3.11$ shows that $L^p\left(R^k\right)$ is complete. Thus $L^p\left(R^k\right)$ is the completion of the metric space which is obtained by endowing $C_c\left(R^k\right)$ with the $L^p$-metric.

The cases $p=1$ and $p=2$ are the ones of greatest interest. Let us state once more, in different words, what the preceding result says if $p=1$ and $k=1$; the statement shows that the Lebesgue integral is indeed the "right" generalization of the Riemann integral:

If the distance between two continuous functions $f$ and $g$, with compact supports in $R^1$, is defined to be

$$
\int_{-\infty}^{\infty}|f(t)-g(t)| d t
$$

the completion of the resulting metric space consists precisely of the Lebesgue integrable functions on $R^1$, provided we identify any two that are equal almost everywhere.

If $1 \leq p<\infty$, Theorem $3.14$ says that $C_c\left(R^k\right)$ is dense in $L^p\left(R^k\right)$, and Theorem $3.11$ shows that $L^p\left(R^k\right)$ is complete. Thus $L^p\left(R^k\right)$ is the completion of the metric space which is obtained by endowing $C_c\left(R^k\right)$ with the $L^p$-metric.

The cases $p=1$ and $p=2$ are the ones of greatest interest. Let us state once more, in different words, what the preceding result says if $p=1$ and $k=1$; the statement shows that the Lebesgue integral is indeed the "right" generalization of the Riemann integral:

If the distance between two continuous functions $f$ and $g$, with compact supports in $R^1$, is defined to be

$$
\int_{-\infty}^{\infty}|f(t)-g(t)| d t
$$

the completion of the resulting metric space consists precisely of the Lebesgue integrable functions on $R^1$, provided we identify any two that are equal almost everywhere.


### 3.16 Definition 

A complex function $f$ on a locally compact Hausdorff space $X$ is said to vanish at infinity if to every $\epsilon>0$ there exists a compact set $K \subset X$ such that $|f(x)|<\epsilon$ for all $x$ not in $K$.

The class of all continuous $f$ on $X$ which vanish at infinity is called $C_0(X)$

It is clear that $C_c(X) \subset C_0(X)$, and that the two classes coincide if $X$ is compact. In that case we write $C(X)$ for either of them.



### 3.17 Theorem 

If $X$ is a locally compact Hausdorff space, then $C_0(X)$ is the completion of $C_c(X)$, relative to the metric defined by the supremum norm

$$
\|f\|=\sup _{x \in X}|f(x)| .
$$

Proof An elementary verification shows that $C_0(X)$ satisfies the axioms of a metric space if the distance between $f$ and $g$ is taken to be $\|f-g\|$. We have to show that $(a) C_c(X)$ is dense in $C_0(X)$ and $(b) C_0(X)$ is a complete metric space.

Given $f \in C_0(X)$ and $\epsilon>0$, there is a compact set $K$ so that $|f(x)|<\epsilon$ outside $K$. Urysohn's lemma gives us a function $g \in C_c(X)$ such that $0 \leq g \leq 1$ and $g(x)=1$ on $K$. Put $h=f g$. Then $h \in C_c(X)$ and $\|f-h\|<\epsilon$. This proves $(a)$

To prove $(b)$, let $\left\{f_n\right\}$ be a Cauchy sequence in $C_0(X)$, i.e., assume that $\left\{f_n\right\}$ converges uniformly. Then its pointwise limit function $f$ is continuous. Given $\epsilon>0$, there exists an $n$ so that $\left\|f_n-f\right\|<\epsilon / 2$ and there is a compact set $K$ so that $\left|f_n(x)\right|<\epsilon / 2$ outside $K$. Hence $|f(x)|<\epsilon$ outside $K$, and we have proved that $f$ vanishes at infinity. Thus $C_0(X)$ is complete.

