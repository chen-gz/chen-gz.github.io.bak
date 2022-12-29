---
title: "Consequences of the Radon-Nikodym Theorem"
date: "2022-12-20"
editor_options: 
  markdown: 
    wrap: 80
---

### 6.12 Theorem 

Let $\mu$ be a complex measure on a $\sigma$-algebra $\mathfrak{M}$ in $X$. Then there is a measurable function $h$ such that $|h(x)|=1$ for all $x \in X$ and such that
$$
d \mu=h d|\mu| .
$$

By analogy with the representation of a complex number as the product of ts absolute value and a number of absolute value 1, Eq. (1) is sometimes referred o as the polar representation (or polar decomposition) of $\mu$.

Proof It is trivial that $\mu \ll|\mu|$, and therefore the Radon-Nikodym theorem guarantees the existence of some $h \in L^1(|\mu|)$ which satisfies (1).

Let $A_r=\{x:|h(x)|<r\}$, where $r$ is some positive number, and let $\left\{E_j\right\}$ be a partition of $A_r$. Then

$$
\sum_j\left|\mu\left(E_j\right)\right|=\sum_j\left|\int_{E_j} h d\right| \mu|| \leq \sum_j r|\mu|\left(E_j\right)=r|\mu|\left(A_r\right),
$$

so that $|\mu|\left(A_r\right) \leq r|\mu|\left(A_r\right)$. If $r<1$, this forces $|\mu|\left(A_r\right)=0$. Thus $|h| \geq 1$ a.e. On the other hand, if $|\mu|(E)>0$, (1) shows that

$$
\left|\frac{1}{|\mu|(E)} \int_E h d\right| \mu||=\frac{|\mu(E)|}{|\mu|(E)} \leq 1
$$

We now apply Theorem $1.40$ (with the closed unit disc in place of $S$ ) and conclude that $|h| \leq 1$ a.e.

Let $B=\{x \in X:|h(x)| \neq 1\}$. We have shown that $|\mu|(B)=0$, and if we redefine $h$ on $B$ so that $h(x)=1$ on $B$, we obtain a function with the desired properties.

### 6.13 Theorem
Suppose $\mu$ is a positive measure on $\mathfrak{M}, g \in L^1(\mu)$, and

$$
\lambda(E)=\int_E g d \mu \quad(E \in \mathfrak{M}) .
$$

Then

$$
|\lambda|(E)=\int_E|g| d \mu \quad(E \in \mathfrak{M})
$$

Proof By Theorem 6.12, there is a function $h$, of absolute value 1, such that $d \lambda=h d|\lambda|$. By hypothesis, $d \lambda=g d \mu$. Hence

$$
h d|\lambda|=g d \mu .
$$

This gives $d|\lambda|=\bar{h} g d \mu$. (Compare with Theorem 1.29.)
Since $|\lambda| \geq 0$ and $\mu \geq 0$, it follows that $\bar{h} g \geq 0$ a.e. $[\mu]$, so that $\bar{h} g=|g|$ a.e. $[\mu]$.

### 6.14 The Hahn Decomposition Theorem 

Let $\mu$ be a real measure on a $\sigma$ algebra $\mathfrak{M}$ in a set $X$. Then there exist sets $A$ and $B \in \mathfrak{M}$ such that