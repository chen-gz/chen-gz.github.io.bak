---
title: 4 UNIFORM CONVERGENCE AND INTEGRATION
date: 2022-07-31
---


**7.16 Theorem** *Let $\alpha$ be monotonically increasing on [a, b]. Suppose $f_{n} \in \mathscr{R}(\alpha)$ on $[a, b]$, for $n=1,2,3, \ldots$, and suppose $f_{n} \rightarrow f$ uniformly on $[a, b]$. Then $f \in \mathscr{R}(\alpha)$ on $[a, b]$, and
$$
\int_{a}^{b} f d \alpha=\lim _{n \rightarrow \infty} \int_{a}^{b} f_{n} d \alpha .
$$*

(The existence of the limit is part of the conclusion.)

**Proof* It suffices to prove this for real $f_{n}$. Put

$$
\varepsilon_{n}=\sup \left|f_{n}(x)-f(x)\right|,
$$
the supremum being taken over $a \leq x \leq b$. Then

$$
f_{n}-\varepsilon_{n} \leq f \leq f_{n}+\varepsilon_{n},
$$

so that the upper and lower integrals of $f$ (see Definition 6.2) satisfy

$$
\int_{a}^{b}\left(f_{n}-\varepsilon_{n}\right) d \alpha \leq \int_{-} f d \alpha \leq \bar{\int} f d \alpha \leq \int_{a}^{b}\left(f_{n}+\varepsilon_{n}\right) d \alpha .
$$

Hence

$$
0 \leq \bar{\int} f d \alpha-\int_{-} f d \alpha \leq 2 \varepsilon_{n}[\alpha(b)-\alpha(a)]
$$

Since $\varepsilon_{n} \rightarrow 0$ as $n \rightarrow \infty$ (Theorem 7.9), the upper and lower integrals of $f$ are equal.

Thus $f \in \mathscr{R}(\alpha)$. Another application of (25) now yields

$$
\left|\int_{a}^{b} f d \alpha-\int_{a}^{b} f_{n} d \alpha\right| \leq \varepsilon_{n}[\alpha(b)-\alpha(a)] .
$$

This implies (23).$\blacksquare$

**Corollary** *If $f_{n} \in \mathscr{R}(\alpha)$ on $[a, b]$ and if
$$
f(x)=\sum_{n=1}^{\infty} f_{n}(x) \quad(a \leq x \leq b),
$$
the series converging uniformly on $[a, b]$, then
$$
\int_{a}^{b} f d \alpha=\sum_{n=1}^{\infty} \int_{a}^{b} f_{n} d \alpha .
$$*

In other words, the series may be integrated term by term.
