---
title: 3 PARTITIONS OF UNITY
date: 2022-08-15
---

**10.8 Theorem** Suppose $K$ is a compact subset of $R^{n}$, and $\left\{\mathrm{V}_{\alpha}\right\}$ is an open cover of $K$. Then there exist functions $\psi_{1}, \ldots, \psi_{s} \in \mathscr{C}\left(R^{n}\right)$ such that

(a) $0 \leq \psi_{i} \leq 1$ for $1 \leq i \leq s$;
(b) each $\psi_{i}$ has its support in some $V_{\alpha}$, and
(c) $\psi_{1}(\mathbf{x})+\cdots+\psi_{s}(\mathbf{x})=1$ for every $\mathbf{x} \in K$.

Because of $(c),\left\{\psi_{i}\right\}$ is called a partition of unity, and $(b)$ is sometimes expressed by saying that $\left\{\psi_{i}\right\}$ is subordinate to the cover $\left\{V_{\alpha}\right\}$.

**Corollary** If $f \in \mathscr{C}\left(R^{n}\right)$ and the support of $f$ lies in $K$, then

$$
f=\sum_{i=1}^{s} \psi_{i} f .
$$

Each $\psi_{i} f$ has its support in some $V_{\alpha}$.

The point of (25) is that it furnishes a representation of $f$ as a sum of continuous functions $\psi_{i} f$ with "small" supports.

**Proof** Associate with each $\mathbf{x} \in K$ an index $\alpha(\mathbf{x})$ so that $\mathbf{x} \in V_{\alpha(\mathbf{x})}$. Then there are open balls $B(\mathbf{x})$ and $W(\mathbf{x})$, centered at $\mathbf{x}$, with

$$
\overline{B(\mathbf{x})} \subset W(\mathbf{x}) \subset \overline{W(\mathbf{x})} \subset V_{\alpha(\mathbf{x})} .
$$

Since $K$ is compact, there are points $\mathbf{x}_{1}, \ldots, \mathbf{x}_{s}$ in $K$ such that

$$
K \subset B\left(\mathbf{x}_{1}\right) \cup \cdots \cup B\left(\mathbf{x}_{\mathbf{s}}\right) .
$$

By (26), there are functions $\varphi_{1}, \ldots, \varphi_{s} \in \mathscr{C}\left(R^{n}\right)$, such that $\varphi_{i}(\mathbf{x})=1$ on $B\left(\mathbf{x}_{i}\right), \varphi_{i}(\mathbf{x})=0$ outside $W\left(\mathbf{x}_{i}\right)$, and $0 \leq \varphi_{i}(\mathbf{x}) \leq 1$ on $R^{n}$. Define $\psi_{1}=\varphi_{1}$ and

$$
\psi_{i+1}=\left(1-\varphi_{1}\right) \cdots\left(1-\varphi_{i}\right) \varphi_{i+1}
$$

for $i=1, \ldots, s-1$.

Properties $(a)$ and $(b)$ are clear. The relation

$$
\psi_{1}+\cdots+\psi_{i}=1-\left(1-\varphi_{1}\right) \cdots\left(1-\varphi_{i}\right)
$$

is trivial for $i=1$. If (29) holds for some $i<s$, addition of (28) and (29) yields (29) with $i+1$ in place of $i$. It follows that

$$
\sum_{i=1}^{s} \psi_{i}(\mathbf{x})=1-\prod_{i=1}^{s}\left[1-\varphi_{i}(\mathbf{x})\right] \quad\left(\mathbf{x} \in R^{n}\right) \text {. }
$$

If $\mathbf{x} \in K$, then $\mathbf{x} \in B\left(\mathbf{x}_{i}\right)$ for some $i$, hence $\varphi_{i}(\mathbf{x})=1$, and the product in (30) is 0 . This proves $(c)$. 