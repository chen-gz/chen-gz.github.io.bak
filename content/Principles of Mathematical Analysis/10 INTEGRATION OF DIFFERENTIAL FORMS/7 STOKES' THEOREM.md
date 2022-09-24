---
title: 7 STOKES' THEOREM
date: 2022-08-16
---

**10.33 Theorem** If $\Psi$ is a $k$-chain of class $\mathscr{C}^{\prime \prime}$ in an open set $V \subset R^{m}$ and if $\omega$ is a $(k-1)$-form of class $\mathscr{C}^{\prime}$ in $V$, then

$$
\int_{\Psi} d \omega=\int_{\partial \Psi} \omega .
$$

The case $k=m=1$ is nothing but the fundamental theorem of calculus (with an additional differentiability assumption). The case $k=m=2$ is Green's theorem, and $k=m=3$ gives the so-called "divergence theorem'" of Gauss. The case $k=2, m=3$ is the one originally discovered by Stokes. (Spivak's book describes some of the historical background.) These special cases will be discussed further at the end of the present chapter.

**Proof** It is enough to prove that

$$
\int_{\Phi} d \omega=\int_{\partial \Phi} \omega
$$

for every oriented $k$-simplex $\Phi$ of class $\mathscr{C}^{\prime \prime}$ in $V$. For if (92) is proved and if $\Psi=\Sigma \Phi_{i}$, then (87) and (89) imply (91).

Fix such a $\Phi$ and put

$$
\sigma=\left[\mathbf{0}, \mathbf{e}_{1}, \ldots, \mathbf{e}_{k}\right] .
$$

Thus $\sigma$ is the oriented affine $k$-simplex with parameter domain $Q^{k}$ which is defined by the identity mapping. Since $\Phi$ is also defined on $Q^{k}$ (see Definition 10.30) and $\Phi \in \mathscr{C}^{\prime \prime}$, there is an open set $E \subset R^{k}$ which contains $Q^{k}$, and there is a $\mathscr{C}^{\prime \prime}$-mapping $T$ of $E$ into $V$ such that $\Phi=T \circ \sigma$. By Theorems $10.25$ and $10.22(c)$, the left side of $(92)$ is equal to

$$
\int_{T \sigma} d \omega=\int_{\sigma}(d \omega)_{T}=\int_{\sigma} d\left(\omega_{T}\right) .
$$

Another application of Theorem $10.25$ shows, by (89), that the right side of $(92)$ is

$$
\int_{\partial(T \sigma)} \omega=\int_{T(\partial \sigma)} \omega=\int_{\partial \sigma} \omega_{T} .
$$

Since $\omega_{T}$ is a $(k-1)$-form in $E$, we see that in order to prove (92) we merely have to show that

$$
\int_{\sigma} d \lambda=\int_{\partial \sigma} \lambda
$$

for the special simplex (93) and for every $(k-1)$-form $\lambda$ of class $\mathscr{C}^{\prime}$ in $E$.

If $k=1$, the definition of an oriented 0 -simplex shows that (94) merely asserts that

$$
\int_{0}^{1} f^{\prime}(u) d u=f(1)-f(0)
$$

for every continuously differentiable function $f$ on $[0,1]$, which is true by the fundamental theorem of calculus.

From now on we assume that $k>1$, fix an integer $r(1 \leq r \leq k)$, and choose $f \in \mathscr{C}^{\prime}(E)$. It is then enough to prove (94) for the case

$$
\lambda=f(\mathbf{x}) d x_{1} \wedge \cdots \wedge d x_{r-1} \wedge d x_{r+1} \wedge \cdots \wedge d x_{k}
$$

since every $(k-1)$-form is a sum of these special ones, for $r=1, \ldots, k$. By (85), the boundary of the simplex (93) is

$$
\partial \sigma=\left[\mathbf{e}_{1}, \ldots, \mathbf{e}_{k}\right]+\sum_{i=1}^{k}(-1)^{i} \tau_{i}
$$

where

$$
\tau_{i}=\left[0, \mathbf{e}_{1}, \ldots, \mathbf{e}_{i-1}, \mathbf{e}_{i+1}, \ldots, \mathbf{e}_{k}\right]
$$

for $i=1, \ldots, k$. Put

$$
\tau_{0}=\left[\mathbf{e}_{r}, \mathbf{e}_{1}, \ldots, \mathbf{e}_{r-1}, \mathbf{e}_{r+1}, \ldots, \mathbf{e}_{k}\right] .
$$

Note that $\tau_{0}$ is obtained from $\left[\mathbf{e}_{1}, \ldots, \mathbf{e}_{k}\right]$ by $r-1$ successive interchanges of $\mathbf{e}_{r}$ and its left neighbors. Thus

$$
\partial \sigma=(-1)^{r-1} \tau_{0}+\sum_{i=1}^{k}(-1)^{i} \tau_{i} .
$$

Each $\tau_{i}$ has $Q^{k-1}$ as parameter domain.

If $\mathbf{x}=\tau_{0}(\mathbf{u})$ and $\mathbf{u} \in Q^{k-1}$, then

$$
x_{j}= \begin{cases}u_{j} & (1 \leq j<r) \\ 1-\left(u_{1}+\cdots+u_{k-1}\right) & (j=r) \\ u_{j-1} & (r<j \leq k)\end{cases}
$$

If $1 \leq i \leq k, \mathbf{u} \in Q^{k-1}$, and $\mathbf{x}=\tau_{i}(\mathbf{u})$, then

$$
x_{j}= \begin{cases}u_{j} & (1 \leq j<i) \\ 0 & (j=i), \\ u_{j-1} & (i<j \leq k)\end{cases}
$$

For $0 \leq i \leq k$, let $J_{i}$ be the Jacobian of the mapping

$$
\left(u_{1}, \ldots, u_{k-1}\right) \rightarrow\left(x_{1}, \ldots, x_{r-1}, x_{r+1}, \ldots, x_{k}\right)
$$

induced by $\tau_{i}$. When $i=0$ and when $i=r,(98)$ and (99) show that (100) is the identity mapping. Thus $J_{0}=1, J_{r}=1$. For other $i$, the fact that $x_{i}=0$ in (99) shows that $J_{i}$ has a row of zeros, hence $J_{i}=0$. Thus

$$
\int_{\tau_{i}} \lambda=0 \quad(i \neq 0, i \neq r),
$$

by (35) and (96). Consequently, (97) gives

$$
\begin{aligned}
\int_{\partial \sigma} \lambda &=(-1)^{r-1} \int_{\tau_{0}} \lambda+(-1)^{r} \int_{\tau_{r}} \lambda \\
&=(-1)^{r-1} \int_{0}\left[f\left(\tau_{0}(\mathbf{u})\right)-f\left(\tau_{r}(\mathbf{u})\right)\right] d \mathbf{u} .
\end{aligned}
$$

On the other hand,

$$
\begin{aligned}
d \lambda &=\left(D_{r} f\right)(\mathbf{x}) d x_{r} \wedge d x_{1} \wedge \cdots \wedge d x_{r-1} \wedge d x_{r+1} \wedge \cdots \wedge d x_{k} \\
&=(-1)^{r-1}\left(D_{r} f\right)(\mathbf{x}) d x_{1} \wedge \cdots \wedge d x_{k}
\end{aligned}
$$

so that

$$
\int_{0} d \lambda=(-1)^{r-1} \int_{Q^{k}}\left(D_{r} f\right)(\mathbf{x}) d \mathbf{x} .
$$

We evaluate (103) by first integrating with respect to $x_{r}$, over the interval

$$
\left[0,1-\left(x_{1}+\cdots+x_{r-1}+x_{r+1}+\cdots+x_{k}\right)\right] \text {, }
$$

put $\left(x_{1}, \ldots, x_{r-1}, x_{r+1}, \ldots, x_{k}\right)=\left(u_{1}, \ldots, u_{k-1}\right)$, and see with the aid of (98) that the integral over $Q^{k}$ in (103) is equal to the integral over $Q^{k-1}$ in (102). Thus (94) holds, and the proof is complete.