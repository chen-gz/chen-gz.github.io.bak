---
title: Differentiable Transformations
date: "2023-01-13"
---


### 7.22 Definitions

Suppose $V$ is an open set in $R^k, T$ maps $V$ into $R^k$, and $x \in V$. If there exists a linear operator $A$ on $R^k$ (i.e., a linear mapping of $R^k$ into $R^k$, as in Definition 2.1) such that
$$
\lim _{h \rightarrow 0} \frac{|T(x+h)-T(x)-A h|}{|h|}=0
$$
(where, of course, $h \in R^k$ ), then we say that $T$ is differentiable at $x$, and define
$$
T^{\prime}(x)=A \text {. }
$$
The linear operator $T^{\prime}(x)$ is called the derivative of $T$ at $x$. (One shows easily that there is at most one linear $A$ that satisfies the preceding requirements; thus it is legitimate to talk about the derivative of $T$.) The term differential is also often used for $T^{\prime}(x)$.

The point of (1) is of course that the difference $T(x+h)-T(x)$ is approximated by $T^{\prime}(x) h$, a linear function of $h$.

Since every real number $\alpha$ gives rise to a linear operator on $R^1$ (mapping $h$ to $\alpha h$ ), our definition of $T^{\prime}(x)$ coincides with the usual one when $k=1$.

When $A: R^k \rightarrow R^k$ is linear, Theorem $2.20(e)$ shows that there is a number $\Delta(A)$ such that
$$
m(A(E))=\Delta(A) m(E)
$$
for all measurable sets $E \subset R^k$. Since
$$
A^{\prime}(x)=A \quad\left(x \in R^k\right)
$$
and since every differentiable transformation $T$ can be locally approximated by a constant plus a linear transformation, one may conjecture that
$$
\frac{m(T(E))}{m(E)} \sim \Delta\left(T^{\prime}(x)\right)
$$
for suitable sets $E$ that are close to $x$. This will be proved in Theorem 7.24, and furnishes the motivation for Theorem 7.26.

Recall that $\Delta(A)=|\operatorname{det} A|$ was proved in Sec. 2.23. When $T$ is differentiable at $x$, the determinant of $T^{\prime}(x)$ is called the Jacobian of $T$ at $x$, and is denoted by $J_T(x)$. Thus
$$
\Delta\left(T^{\prime}(x)\right)=\left|J_T(x)\right| .
$$
The following lemma seems geometrically obvious. Its proof depends on the Brouwer fixed point theorem. One can avoid the use of this theorem by imposing

stronger hypotheses on $F$, for example, by assuming that $F$ is an open mapping. But this would lead to unnecessarily strong assumptions in Theorem 7.26.

### 7.23 Lemma 

Let $S=\{x:|x|=1\}$ be the sphere in $R^k$ that is the boundary of the open unit ball $B=B(0,1)$.
If $F: \bar{B} \rightarrow R^k$ is continuous, $0<\epsilon<1$, and
$$
|F(x)-x|<\epsilon
$$
for all $x \in S$, then $F(B) \supset B(0,1-\epsilon)$.

Proof Assume, to reach a contradiction, that some point $a \in B(0,1-\epsilon)$ is not in $F(B)$. By (1), $|F(x)|>1-\epsilon$ if $x \in S$. Thus $a$ is not in $F(S)$, and therefore $a \neq F(x)$, for every $x \in \bar{B}$. This enables us to define a continuous map $G: \bar{B} \rightarrow \bar{B}$ by
$$
G(x)=\frac{a-F(x)}{|a-F(x)|}
$$
If $x \in S$, then $x \cdot x=|x|^2=1$, so that
$$
x \cdot(a-F(x))=x \cdot a+x \cdot(x-F(x))-1<|a|+\epsilon-1<0
$$
This shows that $x \cdot G(x)<0$, hence $x \neq G(x)$.

If $x \in B$, then obviously $x \neq G(x)$, simply because $G(x) \in S$.

Thus $G$ fixes no point of $\bar{B}$, contrary to Brouwer's theorem which states that every continuous map of $\bar{B}$ into $\bar{B}$ has at least one fixed point.

### 7.24 Theorem 

If
(a) $V$ is open in $R^k$
(b) $T: V \rightarrow R^k$ is continuous, and
(c) $T$ is differentiable at some point $x \in V$, then
$$
\lim _{r \rightarrow 0} \frac{m(T(B(x, r)))}{m(B(x, r))}=\Delta\left(T^{\prime}(x)\right) .
$$
Note that $T(B(x, r))$ is Lebesgue measurable; in fact, it is $\sigma$-compact, because $B(x, r)$ is $\sigma$-compact and $T$ is continuous.

Proof Assume, without loss of generality, that $x=0$ and $T(x)=0$. Put $A=T^{\prime}(0)$

The following elementary fact about linear operators on finitedimensional vector spaces will be used: A linear operator $A$ on $R^k$ is one-to-one if and only if the range of $A$ is all of $R^k$. In that case, the inverse $A^{-1}$ of $A$ is also linear.

Accordingly, we split the proof into two cases.

CASE I $A$ is one-to-one. Define
$$
F(x)=A^{-1} T(x) \quad(x \in V) .
$$
Then $F^{\prime}(0)=A^{-1} T^{\prime}(0)=A^{-1} A=I$, the identity operator. We shall prove that
$$
\lim _{r \rightarrow 0} \frac{m(F(B(0, r)))}{m(B(0, r))}=1 .
$$
Since $T(x)=A F(x)$, we have
$$
m(T(B))=m(A(F(B)))=\Delta(A) m(F(B))
$$
for every ball $B$, by $7.22(3)$. Hence (3) will give the desired result.
Choose $\epsilon>0$. Since $F(0)=0$ and $F^{\prime}(0)=I$, there exists a $\delta>0$ such that $0<|x|<\delta$ implies
$$
|F(x)-x|<\epsilon|x| .
$$
We claim that the inclusions
$$
B(0,(1-\epsilon) r) \subset F(B(0, r)) \subset B(0,(1+\epsilon) r)
$$
hold if $0<r<\delta$. The first of these follows from Lemma 7.23, applied to $B(0, r)$ in place of $B(0,1)$, because $|F(x)-x|<\epsilon r$ for all $x$ with $|x|=r$. The second follows directly from (5), since $|F(x)|<(1+\epsilon)|x|$. It is clear that (6) implies
$$
(1-\epsilon)^k \leq \frac{m(F(B(0, r)))}{m(B(0, r))} \leq(1+\epsilon)^k
$$
and this proves (3).

CASE II $A$ is not one-to-one. In this case, $A$ maps $R^k$ into a subspace of lower dimension, i.e., into a set of measure 0. Given $\epsilon>0$, there is therefore an $\eta>0$ such that $m\left(E_\eta\right)<\epsilon$ if $E_\eta$ is the set of all points in $R^k$ whose distance from $A(B(0,1))$ is less than $\eta$. Since $A=T^{\prime}(0)$, there is a $\delta>0$ such that $|x|<\delta$ implies
$$
|T(x)-A x| \leq \eta|x| .
$$
If $r<\delta$, then $T(B(0, r))$ lies therefore in the set $E$ that consists of the points whose distance from $A(B(0, r))$ is less than $\eta r$. Our choice of $\eta$ shows that $m(E)<\epsilon r^k$. Hence
$$
m(T(B(0, r)))<\epsilon r^k \quad(0<r<\delta) .
$$
Since $r^k=m(B(0, r)) / m(B(0,1)),(9)$ implies that
$$
\lim _{r \rightarrow 0} \frac{m(T(B(0, r)))}{m(B(0, r))}=0 .
$$
This proves (1), since $\Delta\left(T^{\prime}(0)\right)=\Delta(A)=0$.

### 7.25 Lemma 

Suppose $E \subset R^k, m(E)=0, T$ maps $E$ into $R^k$, and
$$
\lim \sup \frac{|T(y)-T(x)|}{|y-x|}<\infty
$$
for every $x \in E$, as $y$ tends to $x$ within $E$.

Then $m(T(E))=0$.

Proof Fix positive integers $n$ and $p$, let $F=F_{n, p}$ be the set of all $x \in E$ such that
$$
|T(y)-T(x)| \leq n|y-x|
$$
for all $y \in B(x, 1 / p) \cap E$, and choose $\epsilon>0$. Since $m(F)=0, F$ can be covered by balls $B_i=B\left(x_i, r_i\right)$, where $x_i \in F, r_i<1 / p$, in such a way that $\sum m\left(B_i\right)<\epsilon$. (To do this, cover $F$ by an open set $W$ of small measure, decompose $W$ into disjoint boxes of small diameter, as in Sec. 2.19, and cover each of those that intersect $F$ by a ball whose center lies in the box and in $F$.)

If $x \in F \cap B_i$ then $\left|x_i-x\right|<r_i<1 / p$ and $x_i \in F$. Hence
$$
\left|T\left(x_i\right)-T(x)\right| \leq n\left|x_i-x\right|<n r_i
$$
so that $T\left(F \cap B_i\right) \subset B\left(T\left(x_i\right), n r_i\right)$. Therefore
$$
T(F) \subset \bigcup_i B\left(T\left(x_i\right), n r_i\right) .
$$
The measure of this union is at most
$$
\sum_i m \left( B\left(T\left(x_i\right), n r_i\right) \right) =n^k \sum_i m\left(B_i\right)<n^k \epsilon.
$$
Since Lebesgue measure is complete and $\epsilon$ was arbitrary, it follows that $T(F)$ is measurable and $m(T(F))=0$.

To complete the proof, note that $E$ is the union of the countable collec$\operatorname{tion}\left\{F_{n, p}\right\}$

Here is a special case of the lemma:

If $V$ is open in $R^k$ and $T: V \rightarrow R^k$ is differentiable at every point of $V$, then $T$ maps sets of measure 0 to sets of measure 0 .

We now come to the change-of-variables theorem.

### 7.26 Theorem 

Suppose that

(i) $X \subset V \subset R^k, V$ is open, $T: V \rightarrow R^k$ is continuous;
(ii) $X$ is Lebesgue measurable, $T$ is one-to-one on $X$, and $T$ is differentiable at every point of $X$;
(iii) $m(T(V-X))=0$.
Then, setting $Y=T(X)$,
$$
\int_Y f d m=\int_X(f \circ T)\left|J_T\right| d m
$$
for every measurable f: $R^k \rightarrow[0, \infty]$.

The case $X=V$ is perhaps the most interesting one. As regards condition (iii), it holds, for instance, when $m(V-X)=0$ and $T$ satisfies the hypotheses of Lemma $7.25$ on $V-X$.

The proof has some elements in common with that of the implication $(b) \rightarrow(c)$ in Theorem $7.18$.

It will be important in this proof to distinguish between Borel sets and Lebesgue measurable sets. The $\sigma$-algebra consisting of the Lebesgue measurable subsets of $R^k$ will be denoted by $\mathfrak{M}$.

Proof We break the proof into the following three steps:
(I) If $E \in \mathfrak{M}$ and $E \subset V$, then $T(E) \in \mathfrak{M}$.
(II) For every $E \in \mathfrak{M}$,
$$
m(T(E \cap X))=\int_X \chi_E\left|J_T\right| d m .
$$
(III) For every $A \in \mathfrak{M}$,
$$
\int_Y \chi_A d m=\int_X\left(\chi_A \circ T\right)\left|J_T\right| d m .
$$
If $E_0 \in \mathfrak{M}, E_0 \subset V$, and $m\left(E_0\right)=0$, then $m\left(T\left(E_0-X\right)\right)=0$ by (iii), and $m\left(T\left(E_0 \cap X\right)\right)=0$ by Lemma $7.25$. Thus $m\left(T\left(E_0\right)\right)=0$.

If $E_1 \subset V$ is an $F_\sigma$, then $E_1$ is $\sigma$-compact, hence $T\left(E_1\right)$ is $\sigma$-compact, because $T$ is continuous. Thus $T\left(E_1\right) \in \mathfrak{M}$.

Since every $E \in \mathfrak{M}$ is the union of an $F_\sigma$ and a set of measure 0 (Theorem 2.20), (I) is proved.
To prove (II), let $n$ be a positive integer, and put
$$
V_n=\{x \in V:|T(x)|<n\}, \quad X_n=X \cap V_n .
$$
Because of (I), we can define
$$
\mu_n(E)=m\left(T\left(E \cap X_n\right)\right) \quad(E \in \mathfrak{M}) .
$$
Since $T$ is one-to-one on $X_n$, the countable additivity of $m$ shows that $\mu_n$ is a measure on $\mathfrak{M}$. Also, $\mu_n$ is bounded (this was the reason for replacing $X$ temporarily by $X_n$ ), and $\mu_n \ll m$, by another application of Lemma 7.25.

Theorem $7.8$ tells us therefore that $\left(D \mu_n\right)(x)$ exists a.e. $[m]$, that $D \mu_n \in L^1(m)$, and that
$$
\mu_n(E)=\int_E\left(D \mu_n\right) d m \quad(E \in \mathfrak{M}) .
$$
We claim next that
$$
\left(D \mu_n\right)(x)=\left|J_T(x)\right| \quad\left(x \in X_n\right)
$$
To see this, fix $x \in X_n$, and note that $B(x, r) \subset V_n$ for all sufficiently small $r>0$, because $V_n$ is open. Since $V_n-X_n \subset V-X$, hypothesis (iii) enables us to replace $X_n$ by $V_n$ in (3) without changing $\mu_n(E)$. Hence, for small $r>0$,
$$
\mu_n(B(x, r))=m(T(B(x, r))) .
$$
If we divide both sides of $(6)$ by $m(B(x, r))$ and refer to Theorem $7.24$ and formula 7.22(6), we obtain (5).

Since (3) implies that $\mu_n(E)=\mu_n\left(E \cap X_n\right)$, it follows from (3), (4), and (5) that
$$
m\left(T\left(E \cap X_n\right)\right)=\int_{X_n} \chi_E\left|J_T\right| d m \quad(E \in \mathfrak{M}) .
$$
If we apply the monotone convergence theorem to (7), letting $n \rightarrow \infty$, we obtain (II).

We begin the proof of (III) by letting $A$ be a Borel set in $R^k$. Put
$$
E=T^{-1}(A)=\{x \in V: T(x) \in A\}
$$
Then $\chi_E=\chi_A \circ T$. Since $\chi_A$ is a Borel function and $T$ is continuous, $\chi_E$ is a Borel function (Theorem 1.12), hence $E \in \mathfrak{M}$. Also
$$
T(E \cap X)=A \cap Y
$$
which implies, by (II), that
$$
\int_Y \chi_A d m=m(T(E \cap X))=\int_X\left(\chi_A \circ T\right)\left|J_T\right| d m .
$$
Finally, if $N \in \mathfrak{M}$ and $m(N)=0$, there is a Borel set $A \supset N$ with $m(A)=0$. For this $A,(10)$ shows that $\left(\chi_A \circ T\right)\left|J_T\right|=0$ a.e. $[m]$. Since $0 \leq$ $\chi_N \leq \chi_A$, it follows that both integrals in (10) are 0 if $A$ is replaced by $N$. Since every Lebesgue measurable set is the disjoint union of a Borel set and a set of measure 0 , (10) holds for every $A \in \mathfrak{M}$. This proves (III).

Once we have (III), it is clear that (1) holds for every nonnegative Lebesgue measurable simple function $f$. Another application of the monotone convergence theorem completes the proof.

Note that we did not prove that $f \circ T$ is Lebesgue measurable for all Lebesgue measurable $f$. It need not be; see Exercise 8. What the proof does establish is the Lebesgue measurability of the product $(f \circ T)\left|J_T\right|$.
Here is a special case of the theorem:

Suppose $\varphi:[a, b] \rightarrow[\alpha, \beta]$ is $\mathrm{AC}$, monotonic, $\varphi(a)=\alpha, \varphi(b)=\beta$, and $f \geq 0$ is Lebesgue measurable. Then
$$
\int_\alpha^\beta f(t) d t=\int_a^b f(\varphi(x)) \varphi^{\prime}(x) d x .
$$
To derive this from Theorem 7.26, put $V=(a, b), T=\varphi$, let $\Omega$ be the union of the maximal segments on which $\varphi$ is constant (if there are any) and let $X$ be the set of all $x \in V-\Omega$ where $\varphi^{\prime}(x)$ exists (and is finite).