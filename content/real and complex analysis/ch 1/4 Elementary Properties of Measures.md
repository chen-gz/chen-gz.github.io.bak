---
title: 4 Elementary Properties of Measures
date: 2022-09-23
---


### 1.18 Definition

(a) A **positive measure** is a function $\mu$, defined on a $\sigma$-algebra $\mathfrak{M}$, whose range is in $[0, \infty]$ and which is **countably additive**. This means that if $\left\{A_i\right\}$ is a **disjoint** countable collection of members of $\mathfrak{M}$, then

$$
\begin{equation}
\mu\left(\bigcup_{i=1}^{\infty} A_i\right)=\sum_{i=1}^{\infty} \mu\left(A_i\right) .
\end{equation}
$$

To avoid trivialities, we shall also assume that $\mu(A)<\infty$ for at least one $A \in \mathfrak{M}$.

(b) A **measure space** is a measurable space which has a positive measure defined on the $\sigma$-algebra of its measurable sets.

(c) A **complex measure** is a complex-valued countably additive function defined on a $\sigma$-algebra.

Note: What we have called a **positive measure** is frequently just called a **measure**; w add the word "positive" for emphasis. If $\mu(E)=0$ for every $E \in \mathfrak{M}$, then $\mu$ is a positive measure, by our definition. The value $\infty$ is admissible for a positive measure; but when we talk of a complex **measure** $\mu$, it is understood that $\mu(E)$ is a complex number, for every $E \in \mathfrak{M}$. The real **measures** form a subclass of the complex ones, of course.

### 1.19 Theorem

Let $\mu$ be a positive measure on a $\sigma$-algebra $\mathfrak{M}$. Then

(a) $\mu(\varnothing)=0$.
(b) $\mu\left(A_1 \cup \cdots \cup A_n\right)=\mu\left(A_1\right)+\cdots+\mu\left(A_n\right)$ if $A_1, \ldots, A_n$ are pairwise disjoint members of $\mathfrak{M}$.
(c) $A \subset B$ implies $\mu(A) \leq \mu(B)$ if $A \in \mathfrak{M}, B \in \mathfrak{M}$.
(d) $\mu\left(A_n\right) \rightarrow \mu(A)$ as $n \rightarrow \infty$ if $A=\bigcup_{n=1}^{\infty} A_n, A_n \in \mathfrak{M}$, and
$$
A_1 \subset A_2 \subset A_3 \subset \cdots .
$$
(e) $\mu\left(A_n\right) \rightarrow \mu(A)$ as $n \rightarrow \infty$ if $A=\bigcap_{n=1}^{\infty} A_n, A_n \in \mathfrak{M}$,
$$
A_1 \supset A_2 \supset A_3 \supset \cdots \text {, }
$$
and $\mu\left(A_1\right)$ is finite.

As the proof will show, these properties, with the exception of $(c)$, also hold for complex measures; $(b)$ is called finite additivity; $(c)$ is called monotonicity.

**Proof**

(a) Take $A \in \mathfrak{M}$ so that $\mu(A)<\infty$, and take $A_1=A$ and $A_2=A_3=\cdots=$ $\varnothing$ in $1.18(1)$.
(b) Take $A_{n+1}=A_{n+2}=\cdots=\varnothing$ in $1.18(1)$.
(c) Since $B=A \cup(B-A)$ and $A \cap(B-A)=\varnothing$, we see that (b) implies $\mu(B)=\mu(A)+\mu(B-A) \geq \mu(A)$.
(d) Put $B_1=A_1$, and put $B_n=A_n-A_{n-1}$ for $n=2,3,4, \ldots$ Then $B_n \in \mathfrak{M}$, $B_i \cap B_j=\varnothing$ if $i \neq j, A_n=B_1 \cup \cdots \cup B_n$, and $A=\bigcup_{i=1}^{\infty} B_i$. Hence
$$
\mu\left(A_n\right)=\sum_{i=1}^n \mu\left(B_i\right) \quad \text { and } \mu(A)=\sum_{i=1}^{\infty} \mu\left(B_i\right) .
$$
Now $(d)$ follows, by the definition of the sum of an infinite series.
(e) Put $C_n=A_1-A_n$. Then $C_1 \subset C_2 \subset C_3 \subset \cdots$,
$$
\mu\left(C_n\right)=\mu\left(A_1\right)-\mu\left(A_n\right),
$$
$A_1-A=\bigcup C_n$, and so $(d)$ shows that
$$
\mu\left(A_1\right)-\mu(A)=\mu\left(A_1-A\right)=\lim _{n \rightarrow \infty} \mu\left(C_n\right)=\mu\left(A_1\right)-\lim _{n \rightarrow \infty} \mu\left(A_n\right) .
$$
This implies $(e)$. $\blacksquare$

### 1.20 Examples

The construction of interesting measure spaces requires some labor, as we shall see. However, a few simple-minded examples can be given immediately:

(a) For any $E \subset X$, where $X$ is any set, define $\mu(E)=\infty$ if $E$ is an infinite set, and let $\mu(E)$ be the number of points in $E$ if $E$ is finite. This $\mu$ is called the **counting measure** on $X$.

(b) Fix $x_0 \in X$, define $\mu(E)=1$ if $x_0 \in E$ and $\mu(E)=0$ if $x_0 \notin E$, for any $E \subset X$. This $\mu$ may be called the **unit mass** concentrated at $x_0$.

(c) Let $\mu$ be the counting measure on the set $\{1,2,3, \ldots\}$, let $A_n=\{n, n+1$, $n+2, \ldots\}$. Then $\bigcap A_n=\varnothing$ but $\mu\left(A_n\right)=\infty$ for $n=1,2,3, \ldots$ This shows that the hypothesis

$$
\begin{equation}
\mu\left(A_1\right)<\infty
\end{equation}
$$

is not superfluous in Theorem $1.19(e)$.

### 1.21 A Comment on Terminology

One frequently sees measure spaces referred to as "ordered triples" $(X, \mathfrak{M}, \mu)$ where $X$ is a set, $\mathfrak{M}$ is a $\sigma$-algebra in $X$, and $\mu$ is a measure defined on $\mathfrak{M}$. Similarly, measurable spaces are "ordered pairs." $(X, \mathfrak{M})$.

This is logically all right, and often convenient, though somewhat redundant. For instance, in $(X, \mathfrak{M})$ the set $X$ is merely the largest member of $\mathfrak{M}$, so if we know $\mathfrak{M}$ we also know $X$. Similarly, every measure has a $\sigma$-algebra for its domain, by definition, so if we know a measure $\mu$ we also know the $\sigma$-algebra $\mathfrak{M}$ on which $\mu$ is defined and we know the set $X$ in which $\mathfrak{M}$ is a $\sigma$-algebra.

It is therefore perfectly legitimate to use expressions like "Let $\mu$ be a measure "or, if we wish to emphasize the $\sigma$-algebra or the set in question, to say "Let $\mu$ be a measure on $\mathfrak{M}$ " or "Let $\mu$ be a measure on $X$."

What is logically rather meaningless but customary (and we shall often follow mathematical custom rather than logic) is to say "Let $X$ be a measure space"; the emphasis should not be on the set, but on the measure. Of course, when this wording is used, it is tacitly understood that there is a measure defined on some $\sigma$-algebra in $X$ and that it is this measure which is really under discussion.

Similarly, a topological space is an ordered pair $(X, \tau)$, where $\tau$ is a topology in the set $X$, and the significant data are contained in $\tau$, not in $X$, but "the topological space $X$ " is what one talks about.

This sort of tacit convention is used throughout mathematics. Most mathematical systems are sets with some class of distinguished subsets or some binary operations or some relations (which are required to have certain properties), and one can list these and then describe the system as an ordered pair, triple, etc., depending on what is needed. For instance, the real line may be described as a quadruple $\left(R^1,+, \cdot,<\right)$, where $+, \cdot$, and $<$ satisfy the axioms of a complete archimedean ordered field. But it is a safe bet that very few mathematicians think of the real field as an ordered quadruple.

