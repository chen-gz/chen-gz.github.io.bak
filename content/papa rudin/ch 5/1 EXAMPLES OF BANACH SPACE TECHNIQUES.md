---
title:  EXAMPLES OF BANACH SPACE TECHNIQUES
date: 2022-12-06
---


Banach Spaces

### 5.1 

In the preceding chapter we saw how certain analytic facts about trigonometric series can be made to emerge from essentially goemetric considerations about general Hilbert spaces, involving the notions of convexity, subspaces, orthogonality, and completeness. There are many problems in analysis that can be attacked with greater ease when they are placed within a suitably chosen abstract framework. The theory of Hilbert spaces is not always suitable since orthogonality is something rather special. The class of all Banach spaces affords greater variety. In this chapter we shall develop some of the basic properties of Banach spaces and illustrate them by applications to concrete problems.

### 5.2 Definition 

A complex vector space $X$ is said to be a **normed linear space** if to each $x \in X$ there is associated a nonnegative real number $\|x\|$, called the **norm** of $x$, such that

(a) $\|x+y\| \leq\|x\|+\|y\|$ for all $x$ and $y \in X$,
(b) $\|a x\|=|\alpha|\|x\|$ if $x \in X$ and $\alpha$ is a scalar,
(c) $\|x\|=0$ implies $x=0$.
By $(a)$, the triangle inequality

$$
\|x-y\| \leq\|x-z\|+\|z-y\| \quad(x, y, z \in X)
$$

holds. Combined with $(b)$ (take $\alpha=0, \alpha=-1$ ) and $(c)$ this shows that every normed linear space may be regarded as a metric space, the distance between $x$ and $y$ being $\|x-y\|$.

A Banach space is a normed linear space which is **complete** in the metric defined by its norm.

For instance, every Hilbert space is a Banach space, so is every $L^p(\mu)$ normed by $\|f\|_p$ (provided we identify functions which are equal a.e.) if $1 \leq p \leq \infty$, and so is $C_0(X)$ with the supremum norm. The simplest Banach space is of course the complex field itself, normed by $\|x\|=|x|$.

One can equally well discuss real Banach spaces; the definition is exactly the same, except that all scalars are assumed to be real.

### 5.3 Definition 

Consider a linear transformation $\Lambda$ from a normed linear space $X$ into a normed linear space $Y$, and define its norm by

$$
\|\Lambda\|=\sup \{\|\Lambda x\|: x \in X,\|x\| \leq 1\} .
$$

If $\|\Lambda\|<\infty$, then $\Lambda$ is called a **bounded linear transformation**.

In (1), $\|x\|$ is the norm of $x$ in $X,\|\Lambda x\|$ is the norm of $\Lambda x$ in $Y$; it will frequently happen that several norms occur together, and the context will make it clear which is which.

Observe that we could restrict ourselves to unit vectors $x$ in (1), i.e., to $x$ with $\|x\|=1$, without changing the supremum, since

$$
\|\Lambda(\alpha x)\|=\|\alpha \Lambda x\|=|\alpha|\|\Lambda x\| .
$$

Observe also that $\|\Lambda\|$ is the smallest number such that the inequality

$$
\|\Lambda x\| \leq\|\Lambda\|\|x\|
$$

holds for every $x \in X$.
The following geometric picture is helpful: $\Lambda$ maps the **closed unit ball** in $X$, i.e., the set

$$
\{x \in X:\|x\| \leq 1\},
$$

into the closed ball in $Y$ with center at 0 and radius $\|\Lambda\|$.
An important special case is obtained by taking the complex field for $Y$; in that case we talk about **bounded linear functionals**.

### 5.4 Theorem

For a linear transformation $\Lambda$ of a normed linear space $X$ into $a$ normed linear space $Y$, each of the following three conditions implies the other two:

(a) $\Lambda$ is bounded.
(b) $\Lambda$ is continuous.
(c) $\Lambda$ is continuous at one point of $X$.

Proof Since $\left\|\Lambda\left(x_1-x_2\right)\right\| \leq\|\Lambda\|\left\|x_1-x_2\right\|$, it is clear that $(a)$ implies $(b)$, and $(b)$ implies $(c)$ trivially. Suppose $\Lambda$ is continuous at $x_0$. To each $\epsilon>0$ one can then find a $\delta>0$ so that $\left\|x-x_0\right\|<\delta$ implies $\left\|\Lambda x-\Lambda x_0\right\|<\epsilon$. In other words, $\|x\|<\delta$ implies

$$
\left\|\Lambda\left(x_0+x\right)-\Lambda x_0\right\|<\epsilon .
$$

But then the linearity of $\Lambda$ shows that $\|\Lambda x\|<\epsilon$. Hence $\|\Lambda\| \leq \epsilon / \delta$, and $(c)$ implies $(a)$.

