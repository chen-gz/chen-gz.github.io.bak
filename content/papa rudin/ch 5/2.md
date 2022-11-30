---
title: Consequences of Baire's Theorem
data: 2022-11-18
---

### 5.5 

The manner in which the completeness of Banach spaces is frequently exploited depends on the following theorem about complete metric spaces, which also has many applications in other parts of mathematics. It implies two of the three most important theorems which make Banach spaces useful tools in analysis, the Banach-Steinhaus theorem and the open mapping theorem. The third is the Hahn-Banach extension theorem, in which completeness plays no role.


### 5.6 Baire's Theorem

If $X$ is a complete metric space, the intersection of every countable collection of dense open subsets of $X$ is dense in $X$.

In particular (except in the trivial case $X=\varnothing$ ), the intersection is not empty. This is often the principal significance of the theorem.

Proof Suppose $V_1, V_2, V_3, \ldots$ are dense and open in $X$. Let $W$ be any open set in $X$. We have to show that $\bigcap V_n$ has a point in $W$ if $W \neq \varnothing$.
Let $\rho$ be the metric of $X$; let us write
$$
S(x, r)=\{y \in X: \rho(x, y)<r\}
$$
and let $\bar{S}(x, r)$ be the closure of $S(x, r)$. [Note: There exist situations in which $\bar{S}(x, r)$ does not contain all $y$ with $\rho(x, y) \leq r !]$

Since $V_1$ is dense, $W \cap V_1$ is a nonempty open set, and we can therefore find $x_1$ and $r_1$ such that
$$
\bar{S}\left(x_1, r_1\right) \subset W \cap V_1 \text { and } 0<r_1<1 .
$$
If $n \geq 2$ and $x_{n-1}$ and $r_{n-1}$ are chosen, the denseness of $V_n$ shows that $V_n \cap$ $S\left(x_{n-1}, r_{n-1}\right)$ is not empty, and we can therefore find $x_n$ and $r_n$ such that
$$
\bar{S}\left(x_n, r_n\right) \subset V_n \cap S\left(x_{n-1}, r_{n-1}\right) \text { and } 0<r_n<\frac{1}{n} .
$$

By induction, this process produces a sequence $\left\{x_n\right\}$ in $X$. If $i>n$ and $j>n$, the construction shows that $x_i$ and $x_j$ both lie in $S\left(x_n, r_n\right)$, so that $\rho\left(x_i, x_j\right)<2 r_n<2 / n$, and hence $\left\{x_n\right\}$ is a Cauchy sequence. Since $X$ is complete, there is a point $x \in X$ such that $x=\lim _{n \rightarrow \infty} x_n$.


Since $x_i$ lies in the closed set $\bar{S}\left(x_n, r_n\right)$ if $i>n$, it follows that $x$ lies in each $\bar{S}\left(x_n, r_n\right)$, and (3) shows that $x$ lies in each $V_n$. By (2), $x \in W$. This completes the proof.

**Corollary** In a complete metric space, the intersection of any countable collection of dense $G_\delta$ 's is again a dense $G_\delta$.


This follows from the theorem, since every $G_\delta$ is the intersection of a countable collection of open sets, and since the union of countably many countable sets is countable.

### 5.7

Baire's theorem is sometimes called the category theorem, for the following reason.

Call a set $E \subset X$ nowhere dense if its closure $\bar{E}$ contains no nonempty open subset of $X$. Any countable union of nowhere dense sets is called a set of the first category; all other subsets of $X$ are of the second category (Baire's terminology). Theorem $5.6$ is equivalent to the statement that no complete metric space is of the first category. To see this, just take complements in the stateent of Theorem 5.6.

### 5.8 The Banach-Steinhaus Theorem

Suppose $X$ is a Banach space, $Y$ is a normed linear space, and $\left\{\Lambda_\alpha\right\}$ is a collection of bounded linear transformations of $X$ into $Y$, where $\alpha$ ranges over some index set $A$. Then either there exists an $M<\infty$ such that

$$
\left\|\Lambda_\alpha\right\| \leq M
$$

for every $\alpha \in A$, or

$$
\sup _{\alpha \in A}\left\|\Lambda_\alpha x\right\|=\infty
$$

for all $x$ belonging to some dense $G_\delta$ in $X$.

In geometric terminology, the alternatives are as follows: Either there is a ball $B$ in $Y$ (with radius $M$ and center at 0 ) such that every $\Lambda_\alpha$ maps the unit ball of $X$ into $B$, or there exist $x \in X$ (in fact, a whole dense $G_\delta$ of them) such that no ball in $Y$ contains $\Lambda_\alpha x$ for all $\alpha$.

The theorem is sometimes referred to as the uniform boundedness principle.

Proof Put

$$
\varphi(x)=\sup _{\alpha \in A}\left\|\Lambda_\alpha x\right\| \quad(x \in X)
$$

and let

$$
V_n=\{x: \varphi(x)>n\} \quad(n=1,2,3, \ldots) .
$$

Since each $\Lambda_\alpha$ is continuous and since the norm of $Y$ is a continuous function on $Y$ (an immediate consequence of the triangle inequality, as in the proof of Theorem 4.6), each function $x \rightarrow\left\|\Lambda_\alpha x\right\|$ is continuous on $X$. Hence $\varphi$ is lower semicontinuous, and each $V_n$ is open.

If one of these sets, say $V_N$, fails to be dense in $X$, then there exist an $x_0 \in X$ and an $r>0$ such that $\|x\| \leq r$ implies $x_0+x \notin V_N$; this means that $\varphi\left(x_0+x\right) \leq N$, or

$$
\left\|\Lambda_\alpha\left(x_0+x\right)\right\| \leq N
$$

for all $\alpha \in A$ and all $x$ with $\|x\| \leq r$. Since $x=\left(x_0+x\right)-x_0$, we then have

$$
\left\|\Lambda_\alpha x\right\| \leq\left\|\Lambda_\alpha\left(x_0+x\right)\right\|+\left\|\Lambda_\alpha x_0\right\| \leq 2 N,
$$

and it follows that (1) holds with $M=2 N / r$.

The other possibility is that every $V_n$ is dense in $X$. In that case, $\bigcap V_n$ is a dense $G_\delta$ in $X$, by Baire's theorem; and since $\varphi(x)=\infty$ for every $x \in \bigcap V_n$, the proof is complete.

### 5.9 The Open Mapping Theorem

Let $U$ and $V$ be the open unit balls of the $B a n a c h$ spaces $X$ and $Y$. To every bounded linear transformation $\Lambda$ of $X$ onto $Y$ there corresponds a $\delta>0$ so that

$$
\Lambda(U) \supset \delta V .
$$

Note the word "onto" in the hypothesis. The symbol $\delta V$ stands for the set $y: y \in V\}$, i.e., the set of all $y \in Y$ with $\|y\|<\delta$.

It follows from (1) and the linearity of $\Lambda$ that the image of every open ball in with center at $x_0$, say, contains an open ball in $Y$ with center at $\Lambda x_0$. Hence e image of every open set is open. This explains the name of the theorem. Here is another way of stating (1): To every $y$ with $\|y\|<\delta$ there corresponds $x$ with $\|x\|<1$ so that $\Lambda x=y$.

Proof Given $y \in Y$, there exists an $x \in X$ such that $\Lambda x=y$; if $\|x\|<k$, it follows that $y \in \Lambda(k U)$. Hence $Y$ is the union of the sets $\Lambda(k U)$, for $k=1,2,3, \ldots$. Since $Y$ is complete, the Baire theorem implies that there is a nonempty open set $W$ in the closure of some $\Lambda(k U)$. This means that every point of $W$ is the limit of a sequence $\left\{\Lambda x_i\right\}$, where $x_i \in k U$; from now on, $k$ and $W$ are fixed.

Choose $y_0 \in W$, and choose $\eta>0$ so that $y_0+y \in W$ if $\|y\|<\eta$. For any such $y$ there are sequences $\left\{x_i^{\prime}\right\},\left\{x_i^{\prime \prime}\right\}$ in $k U$ such that
$$
\Lambda x_i^{\prime} \rightarrow y_0, \quad \Lambda x_i^{\prime \prime} \rightarrow y_0+y \quad(i \rightarrow \infty) .
$$
Setting $x_i=x_i^{\prime \prime}-x_i^{\prime}$, we have $\left\|x_i\right\|<2 k$ and $\Lambda x_i \rightarrow y$. Since this holds for every $y$ with $\|y\|<\eta$, the linearity of $\Lambda$ shows that the following is true, if $\delta=\eta / 2 k$
To each $y \in Y$ and to each $\epsilon>0$ there corresponds an $x \in X$ such that
$$
\|x\| \leq \delta^{-1}\|y\| \quad \text { and }\|y-\Lambda x\|<\epsilon \text {. }
$$
This is almost the desired conclusion, as stated just before the start of the proof, except that there we had $\epsilon=0$.

Fix $y \in \delta V$, and fix $\epsilon>0$. By (3) there exists an $x_1$ with $\left\|x_1\right\|<1$ and
$$
\left\|y-\Lambda x_1\right\|<\frac{1}{2} \delta \epsilon .
$$
Suppose $x_1, \ldots, x_n$ are chosen so that
$$
\left\|y-\Lambda x_1-\cdots-\Lambda x_n\right\|<2^{-n} \delta \epsilon .
$$
Use (3), with $y$ replaced by the vector on the left side of (5), to obtain an $x_{n+1}$ so that (5) holds with $n+1$ in place of $n$, and
$$
\left\|x_{n+1}\right\|<2^{-n} \epsilon \quad(n=1,2,3, \ldots) .
$$
If we set $s_n=x_1+\cdots+x_n$, (6) shows that $\left\{s_n\right\}$ is a Cauchy sequence in $X$. Since $X$ is complete, there exists an $x \in X$ so that $s_n \rightarrow x$. The inequality $\left\|x_1\right\|<1$, together with (6), shows that $\|x\|<1+\epsilon$. Since $\Lambda$ is continuous, $\Lambda s_n \rightarrow \Lambda x$. By (5), $\Lambda s_n \rightarrow y$. Hence $\Lambda x=y$.

We have now proved that
$$
\Lambda((1+\epsilon) U) \supset \delta V
$$
or
$$
\Lambda(U) \supset(1+\epsilon)^{-1} \delta V,
$$
for every $\epsilon>0$. The union of the sets on the right of (8), taken over all $\epsilon>0$, is $\delta V$. This proves (1).



### 5.10 Theorem 

If $X$ and $Y$ are Banach spaces and if $\Lambda$ is a bounded linear transformation of $X$ onto $Y$ which is also one-to-one, then there is a $\delta>0$ such that

$$
\|\Lambda x\| \geq \delta\|x\| \quad(x \in X) .
$$

In other words, $\Lambda^{-1}$ is a bounded linear transformation of $Y$ onto $X$.

Proof If $\delta$ is chosen as in the statement of Theorem 5.9, the conclusion of that theorem, combined with the fact that $\Lambda$ is now one-to-one, shows that $\|\Lambda x\|<\delta$ implies $\|x\|<1$. Hence $\|x\| \geq 1$ implies $\|\Lambda x\| \geq \delta$, and (1) is proved.

The transformation $\Lambda^{-1}$ is defined on $Y$ by the requirement that $\Lambda^{-1} y=x$ if $y=\Lambda x$. A trivial verification shows that $\Lambda^{-1}$ is linear, and (1) implies that $\left\|\Lambda^{-1}\right\| \leq 1 / \delta$.

