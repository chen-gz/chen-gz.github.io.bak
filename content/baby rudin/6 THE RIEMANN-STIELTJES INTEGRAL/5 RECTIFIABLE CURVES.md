---
title: RECTIFIABLE CURVES
date: 2020-07-30

---

We conclude this chapter with a topic of geometric interest which provides an application of some of the preceding theory. The case $k=2$ (i.e., the case of plane curves) is of considerable importance in the study of analytic functions of a complex variable.

**6.26 Definition** A continuous mapping $\gamma$ of an interval $[a, b]$ into $R^{k}$ is called a curve in $R^{k}$. To emphasize the parameter interval $[a, b]$, we may also say that $\gamma$ is a curve on $[a, b]$.

If $\gamma$ is one-to-one, $\gamma$ is called an arc.

If $\gamma(a)=\gamma(b), \gamma$ is said to be a closed curve.

It should be noted that we define a curve to be a mapping, not a point set. Of course, with each curve $\gamma$ in $R^{k}$ there is associated a subset of $R^{k}$, namely the range of $\gamma$, but different curves may have the same range.

We associate to each partition $P=\left\{x_{0}, \ldots, x_{n}\right\}$ of $[a, b]$ and to each curve $\gamma$ on $[a, b]$ the number

$$
\Lambda(P, \gamma)=\sum_{i=1}^{n}\left|\gamma\left(x_{i}\right)-\gamma\left(x_{i-1}\right)\right| .
$$

The ith term in this sum is the distance (in $\left.R^{k}\right)$ between the points $\gamma\left(x_{i-1}\right)$ and $\gamma\left(x_{i}\right)$. Hence $\Lambda(P, \gamma)$ is the length of a polygonal path with vertices at $\gamma\left(x_{0}\right)$, $\gamma\left(x_{1}\right), \ldots, \gamma\left(x_{n}\right)$, in this order. As our partition becomes finer and finer, this polygon approaches the range of $\gamma$ more and more closely. This makes it seem reasonable to define the length of $\gamma$ as

$$
\Lambda(\gamma)=\sup \Lambda(P, \gamma),
$$

where the supremum is taken over all partitions of $[a, b]$.

If $\Lambda(\gamma)<\infty$, we say that $\gamma$ is rectifiable.

In certain cases, $\Lambda(\gamma)$ is given by a Riemann integral. We shall prove this for continuously differentiable curves, i.e., for curves $\gamma$ whose derivative $\gamma^{\prime}$ is continuous. 

**6.27 Theorem** If $\gamma^{\prime}$ is continuous on $[a, b]$, then $\gamma$ is rectifiable, and
$$
\Lambda(\gamma)=\int_{a}^{b}\left|\gamma^{\prime}(t)\right| d t .
$$

Proof If $a \leq x_{i-1}<x_{i} \leq b$, then

$$
\left|\gamma\left(x_{i}\right)-\gamma\left(x_{i-1}\right)\right|=\left|\int_{x_{t-1}}^{x_{i}} \gamma^{\prime}(t) d t\right| \leq \int_{x_{i-1}}^{x_{i}}\left|\gamma^{\prime}(t)\right| d t .
$$

Hence

$$
\Lambda(P, \gamma) \leq \int_{a}^{b}\left|\gamma^{\prime}(t)\right| d t
$$

for every partition $P$ of $[a, b]$. Consequently,

$$
\Lambda(\gamma) \leq \int_{a}^{b}\left|\gamma^{\prime}(t)\right| d t .
$$

To prove the opposite inequality, let $\varepsilon>0$ be given. Since $\gamma^{\prime}$ is uniformly continuous on $[a, b]$, there exists $\delta>0$ such that

$$
\left|\gamma^{\prime}(s)-\gamma^{\prime}(t)\right|<\varepsilon \quad \text { if }|s-t|<\delta .
$$

Let $P=\left\{x_{0}, \ldots, x_{n}\right\}$ be a partition of $[a, b]$, with $\Delta x_{i}<\delta$ for all $i$. If $x_{i-1} \leq t \leq x_{i}$, it follows that

$$
\left|\gamma^{\prime}(t)\right| \leq\left|\gamma^{\prime}\left(x_{i}\right)\right|+\varepsilon .
$$

Hence

$$
\begin{aligned}
\int_{x_{i-1}}^{x_{i}}\left|\gamma^{\prime}(t)\right| d t & \leq\left|\gamma^{\prime}\left(x_{i}\right)\right| \Delta x_{i}+\varepsilon \Delta x_{i} \\
&=\left|\int_{x_{i-1}}^{x_{i}}\left[\gamma^{\prime}(t)+\gamma^{\prime}\left(x_{i}\right)-\gamma^{\prime}(t)\right] d t\right|+\varepsilon \Delta x_{i} \\
& \leq\left|\int_{x_{i-1}}^{x_{i}} \gamma^{\prime}(t) d t\right|+\left|\int_{x_{i-1}}^{x_{i}}\left[\gamma^{\prime}\left(x_{i}\right)-\gamma^{\prime}(t)\right] d t\right|+\varepsilon \Delta x_{i} \\
& \leq\left|\gamma\left(x_{i}\right)-\gamma\left(x_{i-1}\right)\right|+2 \varepsilon \Delta x_{i} .
\end{aligned}
$$

If we add these inequalities, we obtain

$$
\begin{aligned}
\int_{a}^{b}\left|\gamma^{\prime}(t)\right| d t & \leq \Lambda(P, \gamma)+2 \varepsilon(b-a) \\
& \leq \Lambda(\gamma)+2 \varepsilon(b-a) .
\end{aligned}
$$

Since $\varepsilon$ was arbitrary,

$$
\int_{a}^{b}\left|\gamma^{\prime}(t)\right| d t \leq \Lambda(\gamma)
$$

This completes the proof.