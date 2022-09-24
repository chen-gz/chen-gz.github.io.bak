---
title: 2 The Concept of Measurability
date: 2022-09-17
---


The class of measurable functions plays a fundamental role in integration theory. It has some basic properties in common with another most important class of functions, namely, the continuous ones. It is helpful to keep these similarities in mind. Our presentation is therefore organized in such a way that the analogies between the concepts **topological space**, open set, and **continuous function**, on the one hand, and **measurable space**, **measurable set**, and **measurable function**, on the other, are strongly emphasized. It seems that the relations between these concepts emerge most clearly when the setting is quite abstract, and this (rather than a desire for mere generality) motivates our approach to the subject.

### 1.2 Definition

(a) A collection $\tau$ of subsets of a set $X$ is said to be a **topology** in $X$ if $\tau$ has the following three properties:

   1. $\varnothing \in \tau$ and $X \in \tau$.

   2. If $V_i \in \tau$ for $i=1, \ldots, n$, then $V_1 \cap V_2 \cap \cdots \cap V_n \in \tau$.

   3.  If $\left\{V_\alpha\right\}$ is an arbitrary collection of members of $\tau$ (finite, countable, or uncountable), then $\bigcup_\alpha V_\alpha \in \tau$.      

(b) If $\tau$ is a topology in $X$, then $X$ is called a **topological space,** and the members of $\tau$ are called the **open sets** in $X$.

(c) If $X$ and $Y$ are topological spaces and if $f$ is a mapping of $X$ into $Y$, then $f$ is said to be **continuous** provided that $f^{-1}(V)$ is an open set in $X$ for every open set $V$ in $Y$.

### 1.3 Definition

(a) A collection $\mathfrak{M}$ of subsets of a set $X$ is said to be a **$\sigma$-algebra** in $X$ if $\mathfrak{M}$ has the following properties:
      (i) $X \in \mathfrak{M}$.
      (ii) If $A \in \mathfrak{M}$, then $A^c \in \mathfrak{M}$, where $A^c$ is the complement of $A$ relative to $X$.
      (iii) If $A=\bigcup_{n=1}^{\infty} A_n$ and if $A_n \in \mathfrak{M}$ for $n=1,2,3, \ldots$, then $A \in \mathfrak{M}$.

(b) If $\mathfrak{M}$ is a $\sigma$-algebra in $X$, then $X$ is called a **measurable space**, and the members of $\mathfrak{M}$ are called the **measurable sets** in $X$.

(c) If $X$ is a *measurable space*, $Y$ is a *topological space*, and $f$ is a mapping of $X$ into $Y$, then $f$ is said to be **measurable** provided that $f^{-1}(V)$ is a measurable set in $X$ for every open set $V$ in $Y$.

It would perhaps be more satisfactory to apply the term "measurable space" to the ordered pair $(X, \mathfrak{M})$, rather than to $X$. After all, $X$ is a set, and $X$ has not been changed in any way by the fact that we now also have a $\sigma$-algebra of its subsets in mind. Similarly, a topological space is an ordered pair $(X, \tau) .$ But if this sort of thing were systematically done in all mathematics, the terminology would become awfully cumbersome. We shall discuss this again at somewhat greater length in Sec. 1.21.

### 1.4 Comments on Definition 1.2

The most familiar topological spaces are the **metric spaces**. We shall assume some familiarity with metric spaces but shall give the basic definitions, for the sake of completeness.

A **metric space** is a set $X$ in which a **distance function** (or metric) $\rho$ is defined, with the following properties:

(a) $0 \leq \rho(x, y)<\infty$ for all $x$ and $y \in X$.
(b) $\rho(x, y)=0$ if and only if $x=y$.
(c) $\rho(x, y)=\rho(y, x)$ for all $x$ and $y \in X$.
(d) $\rho(x, y) \leq \rho(x, z)+\rho(z, y)$ for all $x, y$, and $z \in X$.

Property $(d)$ is called the **triangle inequality.**

If $x \in X$ and $r \geq 0$, the **open ball** with center at $x$ and radius $r$ is the set $\{y \in X: \rho(x, y)<r\}$.

*If $X$ is a metric space and if $\tau$ is the collection of all sets $E \subset X$ which are arbitrary unions of open balls, then $\tau$ is a topology in $X$.* This is not hard to verify; the intersection property depends on the fact that if $x \in B_1 \cap B_2$, where $B_1$ and $B_2$ are open balls, then $x$ is the center of an open ball $B \subset B_1 \cap B_2$. We leave this as an exercise.

For instance, in the real line $R^1$ a set is open if and only if it is a union of open segments $(a, b)$. In the plane $R^2$, the open sets are those which are unions of open circular discs.

Another topological space, which we shall encounter frequently, is the extended real line $[-\infty, \infty]$; its topology is defined by declaring the following sets to be open: $(a, b),[-\infty, a),(a, \infty]$, and any union of segments of this type.
The definition of continuity given in Sec. $1.2(c)$ is a global one. Frequently it is desirable to define continuity locally: A mapping $f$ of $X$ into $Y$ is said to be **continuous at the point $x_0 \in X$** if to every neighborhood $V$ of $f\left(x_0\right)$ there corresponds a neighborhood $W$ of $x_0$ such that $f(W) \subset V$.

(A **neighborhood** of a point $x$ is, by definition, an open set which contains $x$.)

When $X$ and $Y$ are metric spaces, this local definition is of course the same as the usual epsilon-delta definition, and is equivalent to the requirement that $\lim f\left(x_n\right)=f\left(x_0\right)$ in $Y$ whenever $\lim x_n=x_0$ in $X$.

The following easy proposition relates the local and global definitions of continuity in the expected manner:

### 1.5 Proposition 

Let $X$ and $Y$ be topological spaces. A mapping $f$ of $X$ into $Y$ is continuous if and only if $f$ is continuous at every point of $X$.

**Proof** If $f$ is continuous and $x_0 \in X$, then $f^{-1}(V)$ is a neighborhood of $x_0$, for every neighborhood $V$ of $f\left(x_0\right)$. Since $f\left(f^{-1}(V)\right) \subset V$, it follows that $f$ is continuous at $x_0$.

If $f$ is continuous at every point of $X$ and if $V$ is open in $Y$, every point $x \in f^{-1}(V)$ has a neighborhood $W_x$ such that $f\left(W_x\right) \subset V$. Therefore $W_x \subset$ $f^{-1}(V)$. It follows that $f^{-1}(V)$ is the union of the open sets $W_x$, so $f^{-1}(V)$ is itself open. Thus $f$ is continuous. $\blacksquare$

### 1.6 Comments on Definition 1.3

Let $\mathfrak{M}$ be a $\sigma$-algebra in a set $X$. Referring to Properties (i) to (iii) of Definition 1.3(a), we immediately derive the following facts.

(a) Since $\varnothing=X^c$, (i) and (ii) imply that $\varnothing \in \mathfrak{M}$.

(b) Taking $A_{n+1}=A_{n+2}=\cdots=\varnothing$ in (iii), we see that $A_1 \cup A_2 \cup \cdots \cup A_n$ $\in \mathfrak{M}$ if $A_i \in \mathfrak{M}$ for $i=1, \ldots, n$.

(c) Since
$$
\bigcap_{n=1}^{\infty} A_n=\left(\bigcup_{n=1}^{\infty} A_n^c\right)^c
$$
$\mathfrak{M}$ is closed under the formation of countable (and also finite) intersections.

(d) Since $A-B=B^c \cap A$, we have $A-B \in \mathfrak{M}$ if $A \in \mathfrak{M}$ and $B \in \mathfrak{M}$.
The prefix $\sigma$ refers to the fact that (iii) is required to hold for all **countable** unions of members of $\mathfrak{M}$. If (iii) is required for finite unions only, then $\mathfrak{M}$ is called an **algebra** of sets.

### 1.7 Theorem

Let $Y$ and $Z$ be **topological spaces**, and let $g: Y \rightarrow Z$ be **continuous**.

(a) If $X$ is a **topological space**, if $f: X \rightarrow Y$ is **continuous**, and if $h=g \circ f$, then $h: X \rightarrow Z$ is **continuous**.
(b) If $X$ is a **measurable space**, if $f: X \rightarrow Y$ is **measurable**, and if $h=g \circ f$, then $h: X \rightarrow Z$ is **measurable**.

Stated informally, continuous functions of continuous functions are continuous; continuous functions of measurable functions are measurable.

**Proof** If $V$ is open in $Z$, then $g^{-1}(V)$ is open in $Y$, and
$$
h^{-1}(V)=f^{-1}\left(g^{-1}(V)\right)
$$
If $f$ is continuous, it follows that $h^{-1}(V)$ is open, proving $(a)$.
If $f$ is measurable, it follows that $h^{-1}(V)$ is measurable, proving $(b)$. $\blacksquare$

### 1.8 Theorem

Let $u$ and $v$ be real measurable functions on a measurable space $X$, let $\Phi$ be a continuous mapping of the plane into a topological space $Y$, and define
$$
h(x)=\Phi(u(x), v(x))
$$
for $x \in X$. Then $h: X \rightarrow Y$ is measurable.

**Proof** Put $f(x)=(u(x), v(x))$. Then $f$ maps $X$ into the plane. Since $h=\Phi \circ f$, Theorem $1.7$ shows that it is enough to prove the measurability of $f$.

If $R$ is any open rectangle in the plane, with sides parallel to the axes, then $R$ is the cartesian product of two segments $I_1$ and $I_2$, and
$$
f^{-1}(R)=u^{-1}\left(I_1\right) \cap v^{-1}\left(I_2\right),
$$
which is measurable, by our assumption on $u$ and $v$. Every open set $V$ in the plane is a countable union of such rectangles $R_i$, and since
$$
f^{-1}(V)=f^{-1}\left(\bigcup_{i=1}^{\infty} R_i\right)=\bigcup_{i=1}^{\infty} f^{-1}\left(R_i\right)
$$
$f^{-1}(V)$ is measurable. $\blacksquare$

### 1.9

Let $X$ be a measurable space. The following propositions are corollaries of Theorems $1.7$ and $1.8$ :
(a) If $f=u+i v$, where $u$ and $v$ are real measurable functions on $X$, then $f$ is a complex measurable function on $X$.

This follows from Theorem 1.8, with $\Phi(z)=z$.

(b) If $f=u+i v$ is a complex measurable function on $X$, then $u, v$, and $|f|$ are real measurable functions on $X$.

This follows from Theorem 1.7, with $g(z)=\operatorname{Re}(z), \operatorname{Im}(z)$, and $|z|$.

(c) If $f$ and $g$ are complex measurable functions on $X$, then so are $f+g$ and $f g$.

For real $f$ and $g$ this follqws from Theorem 1.8, with
$$
\Phi(s, t)=s+t
$$
and $\Phi(s, t)=s t$. The complex case then follows from $(a)$ and $(b)$.

(d) If $E$ is a measurable set in $X$ and if
$$
\chi_E(x)= \begin{cases}1 & \text { if } x \in E \\ 0 & \text { if } x \notin E\end{cases}
$$
then $\chi_E$ is a measurable function.

This is obvious. We call $\chi_E$ the characteristic function of the set $E$. The letter $\chi$ will be reserved for characteristic functions throughout this book.

(e) If $f$ is a complex measurable function on $X$, there is a complex measurable function $\alpha$ on $X$ such that $|\alpha|=1$ and $f=\alpha|f|$.

**Proof** Let $E=\{x: f(x)=0\}$, let $Y$ be the complex plane with the origin removed, define $\varphi(z)=z /|z|$ for $z \in Y$, and put
$$
\alpha(x)=\varphi\left(f(x)+\chi_E(x)\right) \quad(x \in X) .
$$
If $x \in E, \alpha(x)=1$; if $x \notin E, \alpha(x)=f(x) /|f(x)|$. Since $\varphi$ is continuous on $Y$ and since $E$ is measurable (why?), the measurability of $\alpha$ follows from $(c),(d)$, and Theorem 1.7.

We now show that $\sigma$-algebras exist in great profusion.

### 1.10 Theorem

If $\mathscr{F}$ is any collection of subsets of $X$, there exists a smallest $\sigma$-algebra $\mathfrak{M}^*$ in $X$ such that $\mathscr{F} \subset \mathfrak{M}^*$.

This $\mathfrak{M}^*$ is sometimes called the **$\sigma$-algebra generated** by $\mathscr{F}$.

**Proof** Let $\Omega$ be the family of all $\sigma$-algebras $\mathfrak{M}$ in $X$ which contain $\mathscr{F}$. Since the collection of all subsets of $X$ is such a $\sigma$-algebra, $\Omega$ is not empty. Let $\mathfrak{M}^*$ be the intersection of all $\mathfrak{M} \in \Omega$. It is clear that $\mathscr{F} \subset \mathfrak{M}^*$ and that $\mathfrak{M}^*$ lies in every $\sigma$-algebra in $X$ which contains $\mathscr{F}$. To complete the proof, we have to show that $\mathfrak{M}^*$ is itself a $\sigma$-algebra.

If $A_n \in \mathfrak{M}^*$ for $n=1,2,3, \ldots$, and if $\mathfrak{M} \in \Omega$, then $A_n \in \mathfrak{M}$, so $\bigcup A_n \in \mathfrak{M}$, since $\mathfrak{M}$ is a $\sigma$-algebra. Since $\bigcup A_n \in \mathfrak{M}$ for every $\mathfrak{M} \in \Omega$, we conclude that $\bigcup A_n \in \mathfrak{M}^*$. The other two defining properties of a $\sigma$-algebra are verified in the same manner. $\blacksquare$

### 1.11 Borel Sets

Let $X$ be a topological space. By Theorem 1.10, there exists a smallest $\sigma$-algebra $\mathscr{B}$ in $X$ such that every open set in $X$ belongs to $\mathscr{B}$. The members of $\mathscr{B}$ are called the **Borel sets** of $X$.

In particular, closed sets are Borel sets (being, by definition, the complements of open sets), and so are all countable unions of closed sets and all countable intersections of open sets. These last two are called $F_\sigma$ 's and $G_\delta$ 's, respectively, and play a considerable role. The notation is due to Hausdorff. The letters $F$ and $G$ were used for closed and open sets, respectively, and $\sigma$ refers to union (*Summe*), $\delta$ to intersection (*Durchschnitt*). For example, every half-open interval $[a, b)$ is a $G_\delta$ and an $F_\sigma$ in $R^1$.

Since $\mathscr{B}$ is a $\sigma$-algebra, we may now regard $X$ as a measurable space, with the Borel sets playing the role of the measurable sets; more concisely, we consider the measurable space $(X, \mathscr{B})$. If $f: X \rightarrow Y$ is a continuous mapping of $X$, where $Y$ is any topological space, then it is evident from the definitions that $f^{-1}(V) \in \mathscr{B}$ for every open set $V$ in $Y$. In other words, **every continuous mapping** of $X$ is **Borel measurable**.

Borel measurable mappings are often called **Borel mappings**, or **Borel functions**.



### 1.12 Theorem

Suppose $\mathfrak{M}$ is a $\sigma$-algebra in $X$, and $Y$ is a topological space. Let $f$ map $X$ into $Y$.

(a) If $\Omega$ is the collection of all sets $E \subset Y$ such that $f^{-1}(E) \in \mathfrak{M}$, then $\Omega$ is a $\sigma$-algebra in $Y$.

(b) If is measurable and $E$ is a Borel set in $Y$, then $f^{-1}(E) \in \mathfrak{M}$.

(c) If $Y=[-\infty, \infty]$ and $f^{-1}((\alpha, \infty]) \in \mathfrak{M}$ for every real $\alpha$, then $f$ is measurable.

(d) If $f$ is measurable, if $Z$ is a topological space, if $g: Y \rightarrow Z$ is a Borel mapping, and if $h=g \circ f$, then $h: X \rightarrow Z$ is measurable.

Part $(c)$ is a frequently used criterion for the measurability of real-valued functions. (See also Exercise 3.) Note that $(d)$ generalizes Theorem 1.7(b).

**Proof** (a) follows from the relations
$$
\begin{aligned}
f^{-1}(Y) &=X, \\
f^{-1}(Y-A) &=X-f^{-1}(A), \\
\text { and } \quad f^{-1}\left(A_1 \cup A_2 \cup \cdots\right) &=f^{-1}\left(A_1\right) \cup f^{-1}\left(A_2\right) \cup \cdots .
\end{aligned}
$$
To prove $(b)$, let $\Omega$ be as in $(a)$; the measurability of $f$ implies that $\Omega$ contains all open sets in $Y$, and since $\Omega$ is a $\sigma$-algebra, $\Omega$ contains all Borel sets in $Y$.

To prove $(c)$, let $\Omega$ be the collection of all $E \subset[-\infty, \infty]$ such that $f^{-1}(E) \in \mathfrak{M}$. Choose a real number $\alpha$, and choose $\alpha_n<\alpha$ so that $\alpha_n \rightarrow \alpha$ as $n \rightarrow \infty$. Since $\left(\alpha_n, \infty\right] \in \Omega$ for each $n$, since
$$
[-\infty, \alpha)=\bigcup_{n=1}^{\infty}\left[-\infty, \alpha_n\right]=\bigcup_{n=1}^{\infty}\left(\alpha_n, \infty\right]^c,
$$
and since $(a)$ shows that $\Omega$ is a $\sigma$-algebra, we see that $[-\infty, \alpha) \in \Omega$. The same is then true of
$$
(\alpha, \beta)=[-\infty, \beta) \cap(\alpha, \infty] .
$$
Since every open set in $[-\infty, \infty]$ is a countable union of segments of the above types, $\Omega$ contains every open set. Thus $f$ is measurable.

To prove $(d)$, let $V \subset Z$ be open. Then $g^{-1}(V)$ is a Borel set of $Y$, and since
$$
h^{-1}(V)=f^{-1}\left(g^{-1}(V)\right)
$$
(b) shows that $h^{-1}(V) \in \mathfrak{M}$. $\blacksquare$

### 1.13 Definition

Let $\left\{a_n\right\}$ be a sequence in $[-\infty, \infty]$, and put
$$
\begin{equation}
b_k=\sup \left\{a_k, a_{k+1}, a_{k+2}, \ldots\right\} \quad(k=1,2,3, \ldots)
\end{equation}
$$
and
$$
\beta=\inf \left\{b_1, b_2, b_3, \ldots\right\} .
$$
We call $\beta$ the upper limit of $\left\{a_n\right\}$, and write
$$
\beta=\limsup _{n \rightarrow \infty} a_n .
$$
The following properties are easily verified: First, $b_1 \geq b_2 \geq b_3 \geq \cdots$, so that $b_k \rightarrow \beta$ as $k \rightarrow \infty$; secondly, there is a subsequence $\left\{a_{n_i}\right\}$ of $\left\{a_n\right\}$ such that $a_{n_i} \rightarrow \beta$ as $i \rightarrow \infty$, and $\beta$ is the largest number with this property.

The lower limit is defined analogously: simply interchange sup and inf in (1) and (2). Note that
$$
\liminf _{n \rightarrow \infty} a_n=-\limsup _{n \rightarrow \infty}\left(-a_n\right)
$$
If $\left\{a_n\right\}$ converges, then evidently
$$
\limsup _{n \rightarrow \infty} a_n=\liminf _{n \rightarrow \infty} a_n=\lim _{n \rightarrow \infty} a_n .
$$
Suppose $\left\{f_n\right\}$ is a sequence of extended-real functions on a set $X$. Then $\sup f_n$ and $\lim \sup f_n$ are the functions defined on $X$ by
$$
\begin{gathered}
\left(\sup _n f_n\right)(x)=\sup _n\left(f_n(x)\right), \\
\left(\limsup _{n \rightarrow \infty} f_n\right)(x)=\limsup _{n \rightarrow \infty}\left(f_n(x)\right) .
\end{gathered}
$$
If
$$
f(x)=\lim _{n \rightarrow \infty} f_n(x),
$$
the limit being assumed to exist at every $x \in X$, then we call $f$ the pointwise limit of the sequence $\left\{f_n\right\}$.

### 1.14 Theorem

If $f_n: X \rightarrow[-\infty, \infty]$ is measurable, for $n=1,2,3, \ldots$, and $g=\sup _{n \geq 1} f_n, \quad h=\lim _{n \rightarrow \infty} \sup _n$,
then $g$ and $h$ are measurable.
Proof $g^{-1}((\alpha, \infty])=\bigcup_{n=1}^{\infty} f_n^{-1}((\alpha, \infty])$. Hence Theorem 1.12(c) implies that $g$ is measurable. The same result holds of course with inf in place of sup, and since
$$
h=\inf _{k \geq 1}\left\{\sup _{i \geq k} f_i\right\},
$$
it follows that $h$ is measurable. $\blacksquare$

**Corollaries**
(a) The limit of every pointwise convergent sequence of complex measurable functions is measurable.

(b) If $f$ and $g$ are measurable (with range in $[-\infty, \infty]$ ), then so are $\max \{f, g\}$ and $\min \{f, g\}$. In particular, this is true of the functions
$$
f^{+}=\max \{f, 0\} \quad \text { and } f^{-}=-\min \{f, 0\} .
$$

### 1.15 

The above functions $f^{+}$and $f^{-}$are called the **positive and negative** parts of $f$. We have $|f|=f^{+}+f^{-}$and $f=f^{+}-f^{-}$, a standard representation of $f$ as a difference of two nonnegative functions, with a certain minimality property:

**Proposition** If $f=g-h, g \geq 0$, and $h \geq 0$, then $f^{+} \leq g$ and $f^{-} \leq h$.

**Proof** $f \leq g$ and $0 \leq g$ clearly implies $\max \{f, 0\} \leq g$.

