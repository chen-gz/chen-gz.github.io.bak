---
title: 3 The Fubini Theorem
date: 2023-01-19
---

### 8.8 Theorem 

Let $(X, \mathscr{S}, \mu)$ and $(Y, \mathscr{T}, \lambda)$ be $\sigma$-finite measure spaces, and let $f$ be an $(\mathscr{S} \times \mathscr{T})$-measurable function on $X \times Y$.

(a) If $0 \leq f \leq \infty$, and if
$$
\varphi(x)=\int_Y f_x d \lambda, \quad \psi(y)=\int_X f^y d \mu \quad(x \in X, y \in Y),
$$
then $\varphi$ is $\mathscr{S}$-measurable, $\psi$ is $\mathscr{T}$-measurable, and
$$
\int_X \varphi d \mu=\int_{X \times Y} f d(\mu \times \lambda)=\int_Y \psi d \lambda .
$$
(b) If f is complex and if
$$
\varphi^*(x)=\int_Y|f|_X d \lambda \text { and } \int_X \varphi^* d \mu<\infty,
$$
then $f \in L^1(\mu \times \lambda)$.

(c) If $f \in L^1(\mu \times \lambda)$, then $f_x \in L^1(\lambda)$ for almost all $x \in X, f^y \in L^1(\mu)$ for almost all $y \in Y$; the functions $\varphi$ and $\psi$, defined by (1) a.e., are in $L^1(\mu)$ and $L^1(\lambda)$, respectively, and (2) holds.

Notes: The first and last integrals in (2) can also be written in the more usual form
$$
\int_X d \mu(x) \int_Y f(x, y) d \lambda(y)=\int_Y d \lambda(y) \int_X f(x, y) d \mu(x)
$$
These are the so-called "iterated integrals" of $f$. The middle integral in (2) is often referred to as a double integral.

The combination of $(b)$ and $(c)$ gives the following useful result: If $f$ is $(\mathscr{S} \times \mathscr{T})$-measurable and if
$$
\int_X d \mu(x) \int_Y|f(x, y)| d \lambda(y)<\infty
$$
then the two iterated integrals (4) are finite and equal.

In other words, "the order of integration may be reversed" for $(\mathscr{S} \times \mathscr{T})$ measurable functions $f$ whenever $f \geq 0$ and also whenever one of the iterated integrals of $|f|$ is finite.

Proof We first consider (a). By Theorem 8.5, the definitions of $\varphi$ and $\psi$ make sense. Suppose $Q \in \mathscr{S} \times \mathscr{T}$ and $f=\chi_Q$. By Definition $8.7$, (2) is then exactly the conclusion of Theorem 8.6. Hence $(a)$ holds for all nonnegative simple $(\mathscr{S} \times \mathscr{T})$-measurable functions $s$. In the general case, there is a sequence of such functions $s_n$, such that $0 \leq s_1 \leq s_2 \leq \cdots$ and $s_n(x, y) \rightarrow$ $f(x, y)$ at every point of $X \times Y$. If $\varphi_n$ is associated with $s_n$ in the same way in which $\varphi$ was associated to $f$, we have
$$
\int_X \varphi_n d \mu=\int_{X \times Y} s_n d(\mu \times \lambda) \quad(n=1,2,3, \ldots) .
$$
The monotone convergence theorem, applied on $(Y, \mathscr{T}, \lambda)$, shows that $\varphi_n(x)$ increases to $\varphi(x)$, for every $x \in X$, as $n \rightarrow \infty$. Hence the monotone convergence theorem applies again, to the two integrals in (6), and the first equality (2) is obtained. The second half of (2) follows by interchanging the roles of $x$ and $y$. This completes $(a)$.
If we apply $(a)$ to $|f|$, we see that $(b)$ is true.

Obviously, it is enough to prove $(c)$ for real $L^1(\mu \times \lambda)$; the complex case then follows. If $f$ is real, $(a)$ applies to $f^{+}$and to $f^{-}$. Let $\varphi_1$ and $\varphi_2$ correspond to $f^{+}$and $f^{-}$as $\varphi$ corresponds to $f$ in (1). Since $f \in L^1(\mu \times \lambda)$ and $f^{+} \leq|f|$, and since $(a)$ holds for $f^{+}$, we see that $\varphi_1 \in L^1(\mu)$. Similarly, $\varphi_2 \in$ $L^1(\mu)$. Since
$$
f_x=\left(f^{+}\right)_x-\left(f^{-}\right)_x
$$
we have $f_x \in L^1(\lambda)$ for every $x$ for which $\varphi_1(x)<\infty$ and $\varphi_2(x)<\infty$; since $\varphi_1$ and $\varphi_2$ are in $L^1(\mu)$, this happens for almost all $x$; and at any such $x$, we have $\varphi(x)=\varphi_1(x)-\varphi_2(x)$. Hence $\varphi \in L^1(\mu)$. Now (2) holds with $\varphi_1$ and $f^{+}$and with $\varphi_2$ and $f^{-}$, in place of $\varphi$ and $f$; if we subtract the resulting equations, we obtain one half of $(c)$. The other half is proved in the same manner, with $f^y$ and $\psi$ in place of $f_x$ and $\varphi$.

### 8.9 Counterexamples

The following three examples will show that the various hypotheses in Theorems $8.6$ and $8.8$ cannot be dispensed with.

(a) Let $X=Y=[0,1], \mu=\lambda=$ Lebesgue measure on $[0,1]$. Choose $\left\{\delta_n\right\}$ so that $0=\delta_1<\delta_2<\delta_3<\cdots, \delta_n \rightarrow 1$, and let $g_n$ be a real continuous function with support in $\left(\delta_n, \delta_{n+1}\right)$, such that $\int_0^1 g_n(t) d t=1$, for $n=1,2,3, \ldots$. Define
$$
f(x, y)=\sum_{n=1}^{\infty}\left[g_n(x)-g_{n+1}(x)\right] g_n(y) .
$$
Note that at each point $(x, y)$ at most one term in this sum is different from 0 . Thus no convergence problem arises in the definition of $f$. An easy computation shows that
$$
\int_0^1 d x \int_0^1 f(x, y) d y=1 \neq 0=\int_0^1 d y \int_0^1 f(x, y) d x,
$$
so that the conclusion of the Fubini theorem fails, although both iterated integrals exist. Note that $f$ is continuous in this example, except at the point $(1,1)$, but that
$$
\int_0^1 d x \int_0^1|f(x, y)| d y=\infty .
$$
[stackexchange](https://math.stackexchange.com/questions/1255335/an-example-in-which-the-fubini-theorem-is-inapplicable)

(b) Let $X=Y=[0,1], \mu=$ Lebesgue measure on $[0,1], \lambda=$ counting measure on $Y$, and put $f(x, y)=1$ if $x=y, f(x, y)=0$ if $x \neq y$. Then
$$
\int_X f(x, y) d \mu(x)=0, \quad \int_Y f(x, y) d \lambda(y)=1
$$
for all $x$ and $y$ in $[0,1]$, so that
$$
\int_Y d \lambda(y) \int_X f(x, y) d \mu(x)=0 \neq 1=\int_X d \mu(x) \int_Y f(x, y) d \lambda(y) .
$$
This time the failure is due to the fact that $\lambda$ is not $\sigma$-finite.

Observe that our function $f$ is $(\mathscr{S} \times \mathscr{T})$-measurable, if $\mathscr{S}$ is the class of all Lebesgue measurable sets in $[0,1]$ and $\mathscr{T}$ consists of all subsets of $[0,1]$.

To see this, note that $f=\chi_D$, where $D$ is the diagonal of the unit square. Given $n$, put
$$
I_j=\left[\frac{j-1}{n}, \frac{j}{n}\right]
$$
and put
$$
Q_n=\left(I_1 \times I_1\right) \cup\left(I_2 \times I_2\right) \cup \cdots \cup\left(I_n \times I_n\right) \text {. }
$$
Then $Q_n$ is a finite union of measurable rectangles, and $D=\bigcap Q_n$.

(c) In examples $(a)$ and $(b)$, the failure of the Fubini theorem was due to the fact that either the function or the space was "too big." We now turn to the role played by the requirement that $f$ be measurable with respect to the $\sigma$-algebra $\mathscr{S} \times \mathscr{T}$.

To pose the question more precisely, suppose $\mu(X)=\lambda(Y)=1,0 \leq f \leq 1$ (so that "bigness" is certainly avoided); assume $f_x$ is $\mathscr{T}$-measurable and $f^y$ is $\mathscr{S}$-measurable, for all $x$ and $y$; and assume $\varphi$ is $\mathscr{S}$-measurable and $\psi$ is $\mathscr{T}$-measurable, where $\varphi$ and $\psi$ are defined as in 8.8(1). Then $0 \leq \varphi \leq 1$, $0 \leq \psi \leq 1$, and both iterated integrals are finite. (Note that no reference to product measures is needed to define iterated integrals.) Does it follow that the two iterated integrals of $f$ are equal?

The (perhaps surprising) answer is no.

In the following example (due to Sierpinski), we take
$$
(X, \mathscr{S}, \mu)=(Y, \mathscr{T}, \lambda)=[0,1]
$$
with Lebesgue measure. The construction depends on the continuum hypothesis. It is a consequence of this hypothesis that there is a one-to-one mapping $j$ of the unit interval $[0,1]$ onto a well-ordered set $W$ such that $j(x)$ has at most countably many predecessors in $W$, for each $x \in[0,1]$. Taking this for granted, let $Q$ be the set of all $(x, y)$ in the unit square such that $j(x)$ precedes $j(y)$ in $W$. For each $x \in[0,1], Q_x$ contains all but countably many points of $[0,1]$; for each $y \in[0,1], Q^y$ contains at most countably many points of $[0,1]$. If $f=\chi_Q$, it follows that $f_x$ and $f^y$ are Borel measurable and that
$$
\varphi(x)=\int_0^1 f(x, y) d y=1, \quad \psi(y)=\int_0^1 f(x, y) d x=0
$$
for all $x$ and $y$. Hence
$$
\int_0^1 d x \int_0^1 f(x, y) d y=1 \neq 0=\int_0^1 d y \int_0^1 f(x, y) d x
$$
[stackexchange](https://math.stackexchange.com/questions/829041/exchange-order-of-almost-all-quantifiers)

