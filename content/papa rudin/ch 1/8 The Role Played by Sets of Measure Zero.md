---
title: 8 The Role Played by Sets of Measure Zero
date: 2022-09-24
---

### 1.35 Definition 

Let $P$ be a property which a point $x$ may or may not have. For instance, $P$ might be the property " $f(x)>0$ " if $f$ is a given function, or it might be " $\left\{f_n(x)\right\}$ converges" if $\left\{f_n\right\}$ is a given sequence of functions.

If $\mu$ is a measure on a $\sigma$-algebra $\mathfrak{M}$ and if $E \in \mathfrak{M}$, the statement "$P$ holds almost everywhere on $E$" (abbreviated to "$P$ holds a.e. on $E$") means that there exists an $N \in \mathfrak{M}$ such that $\mu(N)=0, N \subset E$, and $P$ holds at every point of $E-N$. This concept of a.e. depends of course very strongly on the given measure, and we shall write "a.e. $[\mu]$ " whenever clarity requires that the measure be indicated.

For example, if $f$ and $g$ are measurable functions and if

$$
\begin{equation}
\mu(\{x: f(x) \neq g(x)\})=0,
\label{eq_1_35_1}
\end{equation}
$$

we say that $f=g$ a.e. $[\mu]$ on $X$, and we may write $f \sim g$. This is easily seen to be an equivalence relation. The transitivity $(f \sim g$ and $g \sim h$ implies $f \sim h)$ is a consequence of the fact that the union of two sets of measure 0 has measure 0 .

Note that if $f \sim g$, then, for every $E \in \mathfrak{M}$,

$$
\begin{equation}
\int_E f d \mu=\int_E g d \mu .
\label{eq_1_35_2}
\end{equation}
$$

To see this, let $N$ be the set which appears in $(\ref{eq_1_35_1})$; then $E$ is the union of the disjoint sets $E-N$ and $E \cap N$; on $E-N, f=g$, and $\mu(E \cap N)=0$.

Thus, generally speaking, sets of measure 0 are negligible in integration. It ought to be true that every subset of a negligible set is negligible. But it may happen that some set $N \in \mathfrak{M}$ with $\mu(N)=0$ has a subset $E$ which is not a member of $\mathfrak{M}$. Of course we can define $\mu(E)=0$ in this case. But will this extension of $\mu$ still be a measure, i.e., will it still be defined on a $\sigma$-algebra? It is a pleasant fact that the answer is affirmative:

### 1.36 Theorem

*Let $(X, \mathfrak{M}, \mu)$ be a measure space, let $\mathfrak{M}^*$ be the collection of all $E \subset X$ for which there exist sets $A$ and $B \in \mathfrak{M}$ such that $A \subset E \subset B$ and $\mu(B-A)=0$, and define $\mu(E)=\mu(A)$ in this situation. Then $\mathfrak{M}^*$ is a $\sigma$-algebra, and $\mu$ is a measure on $\mathfrak{M}^*$.*

This extended measure $\mu$ is called **complete**, since all subsets of sets of measure 0 are now measurable; the $\sigma$-algebra $\mathfrak{M}^*$ is called the **$\mu$-completion** of $\mathfrak{M}$. The theorem says that every measure can be completed, so, whenever it is convenient, we may assume that any given measure is complete; this just gives us more measurable sets, hence more measurable functions. Most measures that one meets in the ordinary course of events are already complete, but there are exceptions; one of these will occur in the proof of Fubini's theorem in Chap. 8.

**Proof** We begin by checking that $\mu$ is well defined for every $E \in \mathfrak{M}^*$. Suppose $A \subset E \subset B, A_1 \subset E \subset B_1$, and $\mu(B-A)=\mu\left(B_1-A_1\right)=0$. (The letters $A$ and $B$ will denote members of $\mathfrak{M}$ throughout this proof.) Since

$$
A-A_1 \subset E-A_1 \subset B_1-A_1
$$

we have $\mu\left(A-A_1\right)=0$, hence $\mu(A)=\mu\left(A \cap A_1\right)$. For the same reason, $\mu\left(A_1\right)=\mu\left(A_1 \cap A\right)$. We conclude that indeed $\mu\left(A_1\right)=\mu(A)$.

Next, let us verify that $\mathfrak{M}^*$ has the three defining properties of a $\sigma$ algebra.

(i) $X \in \mathfrak{M}^*$, because $X \in \mathfrak{M}^{\text {and }} \mathfrak{M} \subset \mathfrak{M}^*$.
(ii) If $A \subset E \subset B$ then $B^c \subset E^c \subset A^c$. Thus $E \in \mathfrak{M}^*$ implies $E^c \in \mathfrak{M}^*$, because $A^c-B^c=A^c \cap B=B-A$
(iii) If $A_i \subset E_i \subset B_i, E=\bigcup E_i, A=\bigcup A_i, B=\bigcup B_i$, then $A \subset E \subset B$ and

$$
B-A=\bigcup_1^{\infty}\left(B_i-A\right) \subset \bigcup_1^{\infty}\left(B_i-A_i\right)
$$

Since countable unions of sets of measure zero have measure zero, it follows that $E \in \mathfrak{M}^*$ if $E_i \in \mathfrak{M}^*$ for $i=1,2,3, \ldots$

Finally, if the sets $E_i$ are disjoint in step (iii), the same is true of the sets $A_i$, and we conclude that

$$
\mu(E)=\mu(A)=\sum_1^{\infty} \mu\left(A_i\right)=\sum_1^{\infty} \mu\left(E_i\right)
$$

This proves that $\mu$ is countably additive on $\mathfrak{M}^*$. $\blacksquare$


### 1.37

The fact that functions which are equal a.e. are indistinguishable as far as integration is concerned suggests that our definition of measurable function might profitably be enlarged. Let us call a function $f$ defined on a set $E \in \mathfrak{M}$ measurable on $X$ if $\mu\left(E^c\right)=0$ and if $f^{-1}(V) \cap E$ is measurable for every open set $V$. If we define $f(x)=0$ for $x \in E^c$, we obtain a measurable function on $X$, in the old sense. If our measure happens to be complete, we can define $f$ on $E^c$ in a perfectly arbitrary manner, and we still get a measurable function. The integral of $f$ over any set $A \in \mathfrak{M}$ is independent of the definition of $f$ on $E^c$; therefore this definition need not even be specified at all.

There are many situations where this occurs naturally. For instance, a function $f$ on the real line may be differentiable only almost everywhere (with respect to Lebesgue measure), but under certain conditions it is still true that $f$ is the integral of its derivative; this will be discussed in Chap. 7. Or a sequence $\left\{f_n\right\}$ of measurable functions on $X$ may converge only almost everywhere; with our new definition of measurability, the limit is still a measurable function on $X$, and we do not have to cut down to the set on which convergence actually occurs.

To illustrate, let us state a corollary of Lebesgue's dominated convergence theorem in a form in which exceptional sets of measure zero are admitted:

### $1.38$ Theorem 

Suppose $\left\{f_n\right\}$ is a sequence of complex measurable functions defined a.e. on $X$ such that

$$
\begin{equation}
\sum_{n=1}^{\infty} \int_X\left|f_n\right| d \mu<\infty
\label{eq_1_38_1}
\end{equation}
$$

Then the series

$$
\begin{equation}
f(x)=\sum_{n=1}^{\infty} f_n(x)
\label{eq_1_38_2}
\end{equation}
$$

converges for almost all $x, f \in L^1(\mu)$, and

$$
\begin{equation}
\int_X f d \mu=\sum_{n=1}^{\infty} \int_X f_n d \mu
\label{eq_1_38_3}
\end{equation}
$$

**Proof** Let $S_n$ be the set on which $f_n$ is defined, so that $\mu\left(S_n^c\right)=0$. Put $\varphi(x)=$ $\sum\left|f_n(x)\right|$, for $x \in S=\bigcap S_n$. Then $\mu\left(S^c\right)=0$. By (1) and Theorem 1.27,

$$
\begin{equation}
\int_s \varphi d \mu<\infty .
\label{eq_1_38_4}
\end{equation}
$$

If $E=\{x \in S: \varphi(x)<\infty\}$, it follows from $(\ref{eq_1_38_4})$ that $\mu\left(E^c\right)=0$. The series $(\ref{eq_1_38_2})$ converges absolutely for every $x \in E$, and if $f(x)$ is defined by $(\ref{eq_1_38_2})$ for $x \in E$, then $|f(x)| \leq \varphi(x)$ on $E$, so that $f \in L^1(\mu)$ on $E$, by $(\ref{eq_1_38_4})$. If $g_n=f_1+\cdots+f_n$, then $\left|g_n\right| \leq \varphi, g_n(x) \rightarrow f(x)$ for all $x \in E$, and Theorem $1.34$ gives $(\ref{eq_1_38_3})$ with $E$ in place of $X$. This is equivalent to $(\ref{eq_1_38_3})$, since $\mu\left(E^c\right)=0$. $\blacksquare$
