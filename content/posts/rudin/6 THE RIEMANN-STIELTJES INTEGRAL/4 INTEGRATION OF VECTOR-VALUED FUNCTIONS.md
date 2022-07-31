---
title: INTEGRATION OF VECTOR-VALUED FUNCTIONS
date: 2020-07-30

---



**6.23 Definition** Let $f_{1}, \ldots, f_{k}$ be real functions on $[a, b]$, and let $f=\left(f_{1}, \ldots, f_{k}\right)$ be the corresponding mapping of $[a, b]$ into $R^{k}$. If $\alpha$ increases monotonically on $[a, b]$, to say that $f \in \mathscr{R}(\alpha)$ means that $f_{j} \in \mathscr{R}(\alpha)$ for $j=1, \ldots, k$. If this is the case, we define
$$
\int_{a}^{b} \mathrm{f} d \alpha=\left(\int_{a}^{b} f_{1} d \alpha, \ldots, \int_{a}^{b} f_{k} d \alpha\right) .
$$

In other words, $\int f d \alpha$ is the point in $R^{k}$ whose $j$ th coordinate is $\int f_{J} d \alpha$.

It is clear that parts $(a),(c)$, and $(e)$ of Theorem $6.12$ are valid for these vector-valued integrals; we simply apply the earlier results to each coordinate. The same is true of Theorems $6.17,6.20$, and 6.21. To illustrate, we state the analogue of Theorem $6.21$.

**6.24 Theorem** If $\mathbf{f}$ and $\mathbf{F}$ map $[a, b]$ into $R^{k}$, if $\mathrm{f} \in \mathscr{R}$ on $[a, b]$, and if $\mathbf{F}^{\prime}=\mathbf{f}$, then
$$
\int_{a}^{b} \mathrm{f}(t) d t=\mathbf{F}(b)-\mathbf{F}(a) .
$$

The analogue of Theorem 6.13(b) offers some new features, however, at least in its proof.

**6.25 Theorem** If $\mathrm{f}$ maps $[a, b]$ into $R^{k}$ and if $\mathrm{f} \in \mathscr{R}(\alpha)$ for some monotonically increasing function $\alpha$ on $[a, b]$, then $|\mathbf{f}| \in \mathscr{R}(\alpha)$, and
$$
\left|\int_{a}^{b} \mathbf{f} d \alpha\right| \leq \int_{a}^{b}|\mathbf{f}| d \alpha .
$$

Proof If $f_{1}, \ldots, f_{k}$ are the components of $f$, then

$$
|\mathbf{f}|=\left(f_{1}^{2}+\cdots+f_{k}^{2}\right)^{1 / 2} .
$$

By Theorem 6.11, each of the functions $f_{i}^{2}$ belongs to $\mathscr{R}(\alpha)$; hence so does their sum. Since $x^{2}$ is a continuous function of $x$, Theorem $4.17$ shows that the square-root function is continuous on $[0, M]$, for every real $M$. If we apply Theorem $6.11$ once more, (41) shows that $|f| \in \mathscr{R}(\alpha)$.

To prove (40), put $\mathbf{y}=\left(y_{1}, \ldots, y_{k}\right)$, where $y_{j}=\int f_{j} d \alpha$. Then we have $y=\int f d \alpha$, and

$$
|\mathbf{y}|^{2}=\sum y_{i}^{2}=\sum y_{j} \int f_{j} d \alpha=\int\left(\sum y_{j} f_{j}\right) d \alpha .
$$

By the Schwarz inequality,

$$
\sum y_{j} f_{j}(t) \leq|\mathbf{y}||\mathbf{f}(t)| \quad(a \leq t \leq b) ;
$$

hence Theorem $6.12(b)$ implies

$$
|\mathbf{y}|^{2} \leq|\mathbf{y}| \int|\mathbf{f}| d \alpha .
$$

If $\mathbf{y}=\mathbf{0},(40)$ is trivial. If $\mathbf{y} \neq \mathbf{0}$, division of (43) by $|\mathbf{y}|$ gives (40).

