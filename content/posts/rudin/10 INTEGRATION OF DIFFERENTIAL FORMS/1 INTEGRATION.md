---
title: 1 INTEGRATION
date: 2022-08-15
---

**10.1 Definition** Suppose $I^{k}$ is a $k$-cell in $R^{k}$, consisting of all

$$
\mathbf{x}=\left(x_{1}, \ldots, x_{k}\right)
$$

such that

$$
a_{i} \leq x_{i} \leq b_{i} \quad(i=1, \ldots, k),
$$

$I^{j}$ is the $j$-cell in $R^{j}$ defined by the first $j$ inequalities (1), and $f$ is a real continuous function on $I^{k}$.

Put $f=f_{k}$, and define $f_{k-1}$ on $I^{k-1}$ by

$$
f_{k-1}\left(x_{1}, \ldots, x_{k-1}\right)=\int_{a_{k}}^{b_{k}} f_{k}\left(x_{1}, \ldots, x_{k-1}, x_{k}\right) d x_{k} .
$$

The uniform continuity of $f_{k}$ on $I^{k}$ shows that $f_{k-1}$ is continuous on $I^{k-1}$. Hence we can repeat this process and obtain functions $f_{j}$, continuous on $I^{j}$, such that $f_{j-1}$ is the integral of $f_{j}$, with respect to $x_{j}$, over $\left[a_{j}, b_{j}\right]$. After $k$ steps we arrive at a *number* $f_{0}$, which we call the *integral of $f$ over $I^{k}$;* we write it in the form

$$
\int_{I^{k}} f(\mathbf{x}) d \mathbf{x} \quad \text { or } \quad \int_{I^{k}} f .
$$

A priori, this definition of the integral depends on the order in which the $k$ integrations are carried out. However, this dependence is only apparent. To prove this, let us introduce the temporary notation $L(f)$ for the integral (2) and $L^{\prime}(f)$ for the result obtained by carrying out the $k$ integrations in some other order.

**10.2 Theorem** For every $f \in \mathscr{C}\left(I^{k}\right), L(f)=L^{\prime}(f)$.

**Proof** If $h(\mathbf{x})=h_{1}\left(x_{1}\right) \cdots h_{k}\left(x_{k}\right)$, where $h_{j} \in \mathscr{C}\left(\left[a_{j}, b_{j}\right]\right)$, then

$$
L(h)=\prod_{i=1}^{k} \int_{a_{i}}^{b_{i}} h_{i}\left(x_{i}\right) d x_{i}=L^{\prime}(h) .
$$

If $\mathscr{A}$ is the set of all finite sums of such functions $h$, it follows that $L(g)=$ $L^{\prime}(g)$ for all $g \in \mathscr{A}$. Also, $\mathscr{A}$ is an algebra of functions on $I^{k}$ to which the Stone-Weierstrass theorem applies.

Put $V=\prod_{1}^{k}\left(b_{i}-a_{i}\right)$. If $f \in \mathscr{C}\left(I^{k}\right)$ and $\varepsilon>0$, there exists $g \in \mathscr{A}$ such that $\|f-g\|<\varepsilon / V$, where $\|f\|$ is defined as $\max |f(\mathbf{x})|\left(\mathbf{x} \in I^{k}\right)$. Then $|L(f-g)|<\varepsilon,\left|L^{\prime}(f-g)\right|<\varepsilon$, and since

$$
L(f)-L^{\prime}(f)=L(f-g)+L^{\prime}(g-f),
$$

we conclude that $\left|L(f)-L^{\prime}(f)\right|<2 \varepsilon$.

In this connection, Exercise 2 is relevant.


**10.3 Definition** The support of a (real or complex) function $f$ on $R^{k}$ is the closure of the set of all points $\mathbf{x} \in R^{k}$ at which $f(\mathbf{x}) \neq 0$. If $f$ is a continuous function with compact support, let $I^{k}$ be any $k$-cell which contains the support of $f$, and define

$$
\int_{\boldsymbol{R}^{\boldsymbol{k}}} f=\int_{I^{k}} f .
$$

The integral so defined is evidently independent of the choice of $I^{k}$, provided only that $I^{k}$ contains the support of $f$.

It is now tempting to extend the definition of the integral over $R^{k}$ to functions which are limits (in some sense) of continuous functions with compact support. We do not want to discuss the conditions under which this can be done; the proper setting for this question is the Lebesgue integral. We shall merely describe one very simple example which will be used in the proof of Stokes' theorem.

**10.4 Example** Let $Q^{k}$ be the $k$-simplex which consists of all points $\mathbf{x}=$ $\left(x_{1}, \ldots, x_{k}\right)$ in $R^{k}$ for which $x_{1}+\cdots+x_{k} \leq 1$ and $x_{i} \geq 0$ foi $i=1, \ldots, k$. If $k=3$, for example, $Q^{k}$ is a tetrahedron, with vertices at $\mathbf{0}, \mathbf{e}_{1}, \mathbf{e}_{2}, \mathbf{e}_{3}$. If $f \in \mathscr{C}\left(Q^{k}\right)$, extend $f$ to a function on $I^{k}$ by setting $f(\mathbf{x})=0$ off $Q^{k}$, and define

$$
\int_{\mathbf{Q}^{k}} f=\int_{I^{k}} f .
$$

Here $I^{k}$ is the "unit cube" defined by

$$
0 \leq x_{i} \leq 1 \quad(1 \leq i \leq k) .
$$

Since $f$ may be discontinuous on $I^{k}$, the existence of the integral on the right of (4) needs proof. We also wish to show that this integral is independent of the order in which the $k$ single integrations are carried out.

To do this, suppose $0<\delta<1$, put

$$
\varphi(t)= \begin{cases}1 & (t \leq 1-\delta) \\ \frac{1-t)}{\delta} & (1-\delta<t \leq 1) \\ 0 & (1<t),\end{cases}
$$

and define

$$
F(\mathbf{x})=\varphi\left(x_{1}+\cdots+x_{k}\right) f(\mathbf{x}) \quad\left(\mathbf{x} \in I^{k}\right)
$$

Then $F \in \mathscr{C}\left(I^{k}\right)$.

Put $\mathbf{y}=\left(x_{1}, \ldots, x_{k-1}\right), \mathbf{x}=\left(\mathbf{y}, x_{k}\right)$. For each $\mathbf{y} \in I^{k-1}$, the set of all $x_{k}$ such that $F\left(\mathbf{y}, x_{k}\right) \neq f\left(\mathbf{y} ; x_{k}\right)$ is either empty or is a segment whose length does not exceed $\delta$. Since $0 \leq \varphi \leq 1$, it follows that

$$
\left|F_{k-1}(\mathbf{y})-f_{k-1}(\mathbf{y})\right| \leq \delta\|f\| \quad\left(\mathbf{y} \in I^{k-1}\right),
$$

where $\|f\|$ has the same meaning as in the proof of Theorem 10.2, and $F_{k-1}$, $f_{k-1}$ are as in Definition $10.1$.

As $\delta \rightarrow 0$, (7) exhibits $f_{k-1}$ as a uniform limit of a sequence of continuous functions. Thus $f_{k-1} \in \mathscr{C}\left(I^{k-1}\right)$, and the further integrations present no problem.

This proves the existence of the integral (4). Moreover, (7) shows that

$$
\left|\int_{I^{k}} F(\mathbf{x}) d \mathbf{x}-\int_{I^{k}} f(\mathbf{x}) d \mathbf{x}\right| \leq \delta\|f\| .
$$

Note that (8) is true, regardless of the order in which the $k$ single integrations are carried out. Since $F \in \mathscr{C}\left(I^{k}\right), \int F$ is unaffected by any change in this order. Hence (8) shows that the same is true of $\int f$.

This completes the proof.

Our next goal is the change of variables formula stated in Theorem $10.9 .$ To facilitate its proof, we first discuss so-called primitive mappings, and partitions of unity. Primitive mappings will enable us to get a clearer picture of the local action of a $\mathscr{C}^{\prime}$-mapping with invertible derivative, and partitions of unity are a very useful device that makes it possible to use local information in a global setting.