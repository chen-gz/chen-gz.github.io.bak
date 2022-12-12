---
title: The Hahn-Banach Theorem
date: 2022-11-19
---

### 5.16 Theorem


If $M$ is a subspace of a normed linear space $X$ and if $f$ is a bounded linear functional on $M$, then $f$ can be extended to a bounded linear functional $F$ on $X$ so that $\|F\|=\|f\|$.

Note that $M$ need not be closed.

Before we turn to the proof, some comments seem called for. First, to say (in the most general situation) that a function $F$ is an extension of $f$ means that the domain of $F$ includes that of $f$ and that $F(x)=f(x)$ for all $x$ in the domain of $f$. Second, the norms $\|F\|$ and $\|f\|$ are computed relative to the domains of $F$ and $f$; explicitly,

$$
\|f\|=\sup \{|f(x)|: x \in M,\|x\| \leq 1\}, \quad\|F\|=\sup \{|F(x)|: x \in X,\|x\| \leq 1\},
$$

The third comment concerns the field of scalars. So far everything has been stated for complex scalars, but the complex field could have been replaced by the real field without any changes in statements or proofs. The Hahn-Banach theorem is also true in both cases; nevertheless, it appears to be essentially a "real" theorem. The fact that the complex case was not yet proved when Banach wrote his classical book "Opérations linéaires" may be the main reason that real scalars are the only ones considered in his work.

It will be helpful to introduce some temporary terminology. Recall that $V$ is a complex (real) vector space if $x+y \in V$ for $x$ and $y \in V$, and if $a x \in V$ for all complex (real) numbers $\alpha$. It follows trivially that every complex vector space is also a real vector space. A complex function $\varphi$ on a complex vector space $V$ is a complex-linear functional if

$$
\varphi(x+y)=\varphi(x)+\varphi(y) \quad \text { and } \quad \varphi(\alpha x)=\alpha \varphi(x)
$$

for all $x$ and $y \in V$ and all complex $\alpha$. A real-valued function $\varphi$ on a complex (real) vector space $V$ is a real-linear functional if (1) holds for all real $\alpha$.

If $u$ is the real part of a complex-linear functional $f$, i.e., if $u(x)$ is the real part of the complex number $f(x)$ for all $x \in V$, it is easily seen that $u$ is a real-linear functional. The following relations hold between $f$ and $u$ :

### 5.17 Proposition Let $V$ be a complex vector space.

(a) If $u$ is the real part of a complex-linear functional $f$ on $V$, then
$$
f(x)=u(x)-i u(i x) \quad(x \in V) .
$$
(b) If $u$ is a real-linear functional on $V$ and if $f$ is defined by (1), then $f$ is $a$ complex-linear functional on $V$.
(c) If $V$ is a normed linear space and $f$ and $u$ are related as in (1), then $\|f\|=\|u\|$.

Proof If $\alpha$ and $\beta$ are real numbers and $z=\alpha+i \beta$, the real part of $i z$ is $-\beta$. This gives the identity
$$
z=\operatorname{Re} z-i \operatorname{Re}(i z)
$$
for all complex numbers $z$. Since
$$
\operatorname{Re}(i f(x))=\operatorname{Re} f(i x)=u(i x) \text {, }
$$
(1) follows from (2) with $z=f(x)$.

Under the hypotheses $(b)$, it is clear that $f(x+y)=f(x)+f(y)$ and that $f(\alpha x)=\alpha f(x)$ for all real $\alpha$. But we also have

$$
f(i x)=u(i x)-i u(-x)=u(i x)+i u(x)=i f(x),
$$

which proves that $f$ is complex-linear.
Since $|u(x)| \leq|f(x)|$, we have $\|u\| \leq\|f\|$. On the other hand, to every $x \in V$ there corresponds a complex number $\alpha,|\alpha|=1$, so that $\alpha f(x)=|f(x)|$. Then

$$
|f(x)|=f(\alpha x)=u(\alpha x) \leq\|u\| \cdot\|\alpha x\|=\|u\| \cdot\|x\|,
$$

which proves that $\|f\| \leq\|u\|$.

### 5.18 Proof of Theorem $5.16$

We first assume that $X$ is a real normed linear space and, consequently, that $f$ is a real-linear bounded functional on $M$. If $\|f\|=0$, the desired extension is $F=0$. Omitting this case, there is no loss of generality in assuming that $\|f\|=1$.

Choose $x_0 \in X, x_0 \notin M$, and let $M_1$ be the vector space spanned by $M$ and $x_0$. Then $M_1$ consists of all vectors of the form $x+\lambda x_0$, where $x \in M$ and $\lambda$ is a real scalar. If we define $f_1\left(x+\lambda x_0\right)=f(x)+\lambda \alpha$, where $\alpha$ is any fixed real number, it is trivial to verify that an extension of $f$ to a linear functional on $M_1$ is obtained. The problem is to choose $\alpha$ so that the extended functional still has norm 1 . This will be the case provided that

$$
|f(x)+\lambda \alpha| \leq\left\|x+\lambda x_0\right\| \quad(x \in M, \lambda \text { real }) .
$$

Replace $x$ by $-\lambda x$ and divide both sides of (1) by $|\lambda|$. The requirement is then that

$$
|f(x)-\alpha| \leq\left\|x-x_0\right\| \quad(x \in M)
$$
i.e., that $A_x \leq \alpha \leq B_x$ for all $x \in M$, where
$$
A_x=f(x)-\left\|x-x_0\right\| \quad \text { and } \quad B_x=f(x)+\left\|x-x_0\right\| \text {. }
$$
There exists such an $\alpha$ if and only if all the intervals $\left[A_x, B_x\right]$ have a common point, i.e., if and only if
$$
A_x \leq B_y
$$
for all $x$ and $y \in M$. But
$$
f(x)-f(y)=f(x-y) \leq\|x-y\| \leq\left\|x-x_0\right\|+\left\|y-x_0\right\|
$$
and so (4) follows from (3).

We have now proved that there exists a norm-preserving extension $f_1$ of $f$ on $M_1$.

Let $\mathscr{P}$ be the collection of all ordered pairs $\left(M^{\prime}, f^{\prime}\right)$, where $M^{\prime}$ is a subspace of $X$ which contains $M$ and where $f^{\prime}$ is a real-linear extension of $f$ to $M^{\prime}$, with $\left\|f^{\prime}\right\|=1$. Partially order $\mathscr{P}$ by declaring $\left(M^{\prime}, f^{\prime}\right) \leq\left(M^{\prime \prime}, f^{\prime \prime}\right)$ to mean that $M^{\prime} \subset M^{\prime \prime}$ and $f^{\prime \prime}(x)=f^{\prime}(x)$ for all $x \in M^{\prime}$. The axioms of a partial order

are clearly satisfied, $\mathscr{P}$ is not empty since it contains $(M, f)$, and so the Hausdorff maximality theorem asserts the existence of a maximal totally ordered subcollection $\Omega$ of $\mathscr{P}$.

Let $\Phi$ be the collection of all $M^{\prime}$ such that $\left(M^{\prime}, f^{\prime}\right) \in \Omega$. Then $\Phi$ is totally ordered, by set inclusion, and therefore the union $\tilde{M}$ of all members of $\Phi$ is a subspace of $X$. (Note that in general the union of two subspaces is not a subspace. An example is two planes through the origin in $R^3$.) If $x \in \tilde{M}$, then $x \in M^{\prime}$ for some $M^{\prime} \in \Phi$; define $F(x)=f^{\prime}(x)$, where $f^{\prime}$ is the function which occurs in the pair $\left(M^{\prime}, f^{\prime}\right) \in \Omega$. Our definition of the partial order in $\Omega$ shows that it is immaterial which $M^{\prime} \in \Phi$ we choose to define $F(x)$, as long as $M^{\prime}$ contains $x$.

It is now easy to check that $F$ is a linear functional on $\tilde{M}$, with $\|F\|=1$. If $\tilde{M}$ were a proper subspace $X$, the first part of the proof would give us a further extension of $F$, and this would contradict the maximality of $\Omega$. Thus $\tilde{M}=X$, and the proof is complete for the case of real scalars.

If now $f$ is a complex-linear functional on the subspace $M$ of the complex normed linear space $X$, let $u$ be the real part of $f$, use the real Hahn-Banach theorem to extend $u$ to a real-linear functional $U$ on $X$, with $\|U\|=\|u\|$, and define

$$
F(x)=U(x)-i U(i x) \quad(x \in X) .
$$

By Proposition 5.17, $F$ is a complex-linear extension of $f$, and

$$
\|F\|=\|U\|=\|u\|=\|f\| .
$$

This completes the proof.
Let us mention two important consequences of the Hahn-Banach theorem:

### 5.19 Theorem

Let $M$ be a linear subspace of a normed linear space $X$, and let $x_0 \in X$. Then $x_0$ is in the closure $\bar{M}$ of $M$ if and only if there is no bounded linear functional $f$ on $X$ such that $f(x)=0$ for all $x \in M$ but $f\left(x_0\right) \neq 0$.

Proof If $x_0 \in \bar{M}, f$ is a bounded linear functional on $X$, and $f(x)=0$ for all $x \in M$, the continuity of $f$ shows that we also have $f\left(x_0\right)=0$.

Conversely, suppose $x_0 \notin \bar{M}$. Then there exists a $\delta>0$ such that $\left\|x-x_0\right\|>\delta$ for all $x \in M$. Let $M^{\prime}$ be the subspace generated by $M$ and $x_0$, and define $f\left(x+\lambda x_0\right)=\lambda$ if $x \in M$ and $\lambda$ is a scalar. Since

$$
\delta|\lambda| \leq|\lambda|\left\|x_0+\lambda^{-1} x\right\|=\left\|\lambda x_0+x\right\|,
$$

we see that $f$ is a linear functional on $M^{\prime}$ whose norm is at most $\delta^{-1}$. Also $f(x)=0$ on $M, f\left(x_0\right)=1$. The Hahn-Banach theorem allows us to extend this $f$ from $M^{\prime}$ to $X$.

### 5.20 Theorem

If $X$ is a normed linear space and if $x_0 \in X, x_0 \neq 0$, there is a bounded linear functional $f$ on $X$, of norm 1 , so that $f\left(x_0\right)=\left\|x_0\right\|$.

Proof Let $M=\left\{\lambda x_0\right\}$, and define $f\left(\lambda x_0\right)=\lambda\left\|x_0\right\|$. Then $f$ is a linear functional of norm 1 on $M$, and the Hahn-Banach theorem can again be applied. I//I

### 5.21 Remarks

If $X$ is a normed linear space, let $X^*$ be the collection of all bounded linear functionals on $X$. If addition and scalar multiplication of linear functionals are defined in the obvious manner, it is easy to see that $X^*$ is again a normed linear space. In fact, $X^*$ is a Banach space; this follows from the fact that the field of scalars is a complete metric space. We leave the verification of these properties of $X^*$ as an exercise.

One of the consequences of Theorem $5.20$ is that $X^*$ is not the trivial vector space (i.e., $X^*$ consists of more than 0 ) if $X$ is not trivial. In fact, $X^*$ separates points on $X$. This means that if $x_1 \neq x_2$ in $X$ there exists an $f \in X^*$ such that $f\left(x_1\right) \neq f\left(x_2\right)$. To prove this, merely take $x_0=x_2-x_1$ in Theorem $5.20$.
Another consequence is that, for $x \in X$,

$$
\|x\|=\sup \left\{|f(x)|: f \in X^*,\|f\|=1\right\} .
$$

Hence, for fixed $x \in X$, the mapping $f \rightarrow f(x)$ is a bounded linear functional on $X^*$, of norm $\|x\|$.

This interplay between $X$ and $X^*$ (the so-called "dual space" of $X$ ) forms the basis of a large portion of that part of mathematics which is known as functional analysis.
