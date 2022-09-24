---
title: 2 CONSTRUCTION OF THE LEBESGUE MEASURE
date: 2022-08-17
---

**11.4 Definition** Let $R^{p}$ denote $p$-dimensional euclidean space. By an interval in $R^{p}$ we mean the set of points $\mathrm{x}=\left(x_{1}, \ldots, x_{p}\right)$ such that
$$
a_{i} \leq x_{i} \leq b_{i} \quad(i=1, \ldots, p)
$$

or the set of points which is characterized by (10) with any or all of the $\leq$ signs replaced by $<$. The possibility that $a_{i}=b_{i}$ for any value of $i$ is not ruled out; in particular, the empty set is included among the intervals. If $A$ is the union of a finite number of intervals, $A$ is said to be an elementary set.

If $I$ is an interval, we define

$$
m(I)=\prod_{i=1}^{p}\left(b_{i}-a_{i}\right)
$$

no matter whether equality is included or excluded in any of the inequalities (10).

If $A=I_{1} \cup \cdots \cup I_{n}$, and if these intervals are pairwise disjoint, we set

$$
m(A)=m\left(I_{1}\right)+\cdots+m\left(I_{n}\right) .
$$

We let $\mathscr{E}$ denote the family of all elementary subsets of $R^{p}$.

At this point, the following properties should be verified:

(12) $\mathscr{E}$ is a ring, but not a $\sigma$-ring.

(13) If $A \in \mathscr{E}$, then $A$ is the union of a finite number of disjoint intervals.

(14) If $A \in \mathscr{E}, m(A)$ is well defined by (11); that is, if two different decompositions of $A$ into disjoint intervals are used, each gives rise to the same value of $m(A)$.

(15) $m$ is additive on $\mathscr{E}$.

Note that if $p=1,2,3$, then $m$ is length, area, and volume, respectively.

**11.5 Definition** A nonnegative additive set function $\phi$ defined on $\mathscr{E}$ is said to be regular if the following is true: To every $A \in \mathscr{E}$ and to every $\varepsilon>0$ there exist sets $F \in \mathscr{E}, G \in \mathscr{E}$ such that $F$ is closed, $G$ is open, $F \subset A \subset G$, and
$$
\phi(G)-\varepsilon \leq \phi(A) \leq \phi(F)+\varepsilon .
$$

**11.6 Examples**

(a) The set function $m$ is regular.

If $A$ is an interval, it is trivial that the requirements of Definition $11.5$ are satisfied. The general case follows from (13).

(b) Take $R^{p}=R^{1}$, and let $\alpha$ be a monotonically increasing function, defined for all real $x$. Put

$$
\begin{aligned}
&\mu([a, b))=\alpha(b-)-\alpha(a-), \\
&\mu([a, b])=\alpha(b+)-\alpha(a-), \\
&\mu((a, b])=\alpha(b+)-\alpha(a+), \\
&\mu((a, b))=\alpha(b-)-\alpha(a+) .
\end{aligned}
$$

Here $[a, b)$ is the set $a \leq x<b$, etc.

Because of the possible discontinuities of $\alpha$, these cases have to be distinguished. If $\mu$ is defined for elementary sets as in (11), $\mu$ is regular on $\mathscr{E}$. The proof is just like that of $(a)$.

Our next objective is to show that every regular set function on $\mathscr{E}$ can be extended to a countably additive set function on a $\sigma$-ring which contains $\mathscr{E}$.

**11.7 Definition** Let $\mu$ be additive, regular, nonnegative, and finite on $\mathscr{E}$. Consider countable coverings of any set $E \subset R^{p}$ by open elementary sets $A_{n}$ :
$$
E \subset \bigcup_{n=1}^{\infty} A_{n} .
$$

Define

$$
\mu^{*}(E)=\inf \sum_{n=1}^{\infty} \mu\left(A_{n}\right),
$$

the inf being taken over all countable coverings of $E$ by open elementary sets. $\mu^{*}(E)$ is called the outer measure of $E$, corresponding to $\mu$.

It is clear that $\mu^{*}(E) \geq 0$ for all $E$ and that

$$
\mu^{*}\left(E_{1}\right) \leq \mu^{*}\left(E_{2}\right)
$$

if $E_{1} \subset E_{2}$.

**11.8 Theorem**

(a) For every $A \in \mathscr{E}, \mu^{*}(A)=\mu(A)$.

(b) If $E=\bigcup_{1}^{\infty} E_{n}$, then

$$
\mu^{*}(E) \leq \sum_{n=1}^{\infty} \mu^{*}\left(E_{n}\right) .
$$

Note that $(a)$ asserts that $\mu^{*}$ is an extension of $\mu$ from $\mathscr{E}$ to the family of all subsets of $R^{p}$. The property (19) is called subadditivity.

Proof Choose $A \in \mathscr{E}$ and $\varepsilon>0$.

The regularity of $\mu$ shows that $A$ is contained in an open elementary set $G$ such that $\mu(G) \leq \mu(A)+\varepsilon$. Since $\mu^{*}(A) \leq \mu(G)$ and since $\varepsilon$ was arbitrary, we have

$$
\mu^{*}(A) \leq \mu(A) .
$$

The definition of $\mu^{*}$ shows that there is a sequence $\left\{A_{n}\right\}$ of open elementary sets whose union contains $A$, such that

$$
\sum_{n=1}^{\infty} \mu\left(A_{n}\right) \leq \mu^{*}(A)+\varepsilon .
$$

The regularity of $\mu$ shows that $A$ contains a closed elementary set $F$ such that $\mu(F) \geq \mu(A)-\varepsilon$; and since $F$ is compact, we have

$$
F \subset A_{1} \cup \cdots \cup A_{N}
$$

for some $N$. Hence

$$
\mu(A) \leq \mu(F)+\varepsilon \leq \mu\left(A_{1} \cup \cdots \cup A_{N}\right)+\varepsilon \leq \sum_{1}^{N} \mu\left(A_{n}\right)+\varepsilon \leq \mu^{*}(A)+2 \varepsilon .
$$

In conjunction with $(20)$, this proves $(a)$.

Next, suppose $E=\bigcup E_{n}$, and assume that $\mu^{*}\left(E_{n}\right)<+\infty$ for all $n$. Given $\varepsilon>0$, there are coverings $\left\{A_{n k}\right\}, k=1,2,3, \ldots$, of $E_{n}$ by open elementary sets such that

$$
\sum_{k=1}^{\infty} \mu\left(A_{n k}\right) \leq \mu^{*}\left(E_{n}\right)+2^{-n} \varepsilon .
$$

Then

$$
\mu^{*}(E) \leq \sum_{n=1}^{\infty} \sum_{k=1}^{\infty} \mu\left(A_{n k}\right) \leq \sum_{n=1}^{\infty} \mu^{*}\left(E_{n}\right)+\varepsilon,
$$

and (19) follows. In the excluded case, i.e., if $\mu^{*}\left(E_{n}\right)=+\infty$ for some $n$, (19) is of course trivial.

**11.9 Definition** For any $A \subset R^{p}, B \subset R^{p}$, we define
$$
\begin{aligned}
&S(A, B)=(A-B) \cup(B-A) \\
&d(A, B)=\mu^{*}(S(A, B))
\end{aligned}
$$

We write $A_{n} \rightarrow A$ if

$$
\lim _{n \rightarrow \infty} d\left(A, A_{n}\right)=0 .
$$

If there is a sequence $\left\{A_{n}\right\}$ of elementary sets such that $A_{n} \rightarrow A$, we say that $A$ is finitely $\mu$-measurable and write $A \in \mathfrak{M}_{F}(\mu)$.

If $A$ is the union of a countable collection of finitely $\mu$-measurable sets, we say that $A$ is $\mu$-measurable and write $A \in \mathfrak{M}(\mu)$.

$S(A, B)$ is the so-called "symmetric difference" of $A$ and $B$. We shall see that $d(A, B)$ is essentially a distance function.

The following theorem will enable us to obtain the desired extension of $\mu$.

**11.10 Theorem** $\mathfrak{M}(\mu)$ is a $\sigma$-ring, and $\mu^{*}$ is countably additive on $\mathfrak{M}(\mu)$.

Before we turn to the proof of this theorem, we develop some of the properties of $S(A, B)$ and $d(A, B)$. We have 

$$
\begin{aligned}
& S(A, B)=S(B, A), \quad S(A, A)=0 \text {. } \\
& S(A, B) \subset S(A, C) \cup S(C, B) . \\
& \left.S\left(A_{1} \cup A_{2}, B_{1} \cup B_{2}\right)\right) \\
& \left.S\left(A_{1} \cap A_{2}, B_{1} \cap B_{2}\right)\right\} \subset S\left(A_{1}, B_{1}\right) \cup S\left(A_{2}, B_{2}\right) \text {. } \\
& \left.S\left(A_{1}-A_{2}, B_{1}-B_{2}\right)\right)
\end{aligned}
$$

(24) is clear, and (25) follows from

$$
(A-B) \subset(A-C) \cup(C-B), \quad(B-A) \subset(C-A) \cup(B-C) .
$$

The first formula of (26) is obtained from

$$
\left(A_{1} \cup A_{2}\right)-\left(B_{1} \cup B_{2}\right) \subset\left(A_{1}-B_{1}\right) \cup\left(A_{2}-B_{2}\right) .
$$

Next, writing $E^{c}$ for the complement of $E$, we have

$$
\begin{aligned}
S\left(A_{1} \cap A_{2}, B_{1} \cap B_{2}\right) &=S\left(A_{1}^{c} \cup A_{2}^{c}, B_{1}^{c} \cup B_{2}^{c}\right) \\
& \subset S\left(A_{1}^{c}, B_{1}^{c}\right) \cup S\left(A_{2}^{c}, B_{2}^{c}\right)=S\left(A_{1}, B_{1}\right) \cup S\left(A_{2}, B_{2}\right) ;
\end{aligned}
$$

and the last formula of (26) is obtained if we note that

$$
A_{1}-A_{2}=A_{1} \cap A_{2}^{c} .
$$

By (23), (19), and (18), these properties of $S(A, B)$ imply

$$
\left.\begin{array}{c}
d(A, B)=d(B, A), \quad d(A, A)=0, \\
d(A, B) \leq d(A, C)+d(C, B), \\
d\left(A_{1} \cup A_{2}, B_{1} \cup B_{2}\right) \\
d\left(A_{1} \cap A_{2}, B_{1} \cap B_{2}\right) \\
d\left(A_{1}-A_{2}, B_{1}-B_{2}\right)
\end{array}\right\} \leq d\left(A_{1}, B_{1}\right)+d\left(A_{2}, B_{2}\right) .
$$

The relations (27) and (28) show that $d(A, B)$ satisfies the requirements of Definition 2.15, except that $d(A, B)=0$ does not imply $A=B$. For instance, if $\mu=m, A$ is countable, and $B$ is empty, we have

$$
d(A, B)=m^{*}(A)=0 ;
$$

to see this, cover the $n$th point of $A$ by an interval $I_{n}$ such that

$$
m\left(I_{n}\right)<2^{-n} \varepsilon .
$$

But if we define two sets $A$ and $B$ to be equivalent, provided

$$
d(A, B)=0,
$$

we divide the subsets of $R^{p}$ into equivalence classes, and $d(A, B)$ makes the set of these equivalence classes into a metric space. $\mathfrak{M}_{F}(\mu)$ is then obtained as the closure of $\mathscr{E}$. This interpretation is not essential for the proof, but it explains the underlying idea. We need one more property of $d(A, B)$, namely,

$$
\left|\mu^{*}(A)-\mu^{*}(B)\right| \leq d(A, B),
$$

if at least one of $\mu^{*}(A), \mu^{*}(B)$ is finite. For suppose $0 \leq \mu^{*}(B) \leq \mu^{*}(A)$. Then (28) shows that

$$
d(A, 0) \leq d(A, B)+d(B, 0)
$$

that is,

$$
\mu^{*}(A) \leq d(A, B)+\mu^{*}(B) .
$$

Since $\mu^{*}(B)$ is finite, it follows that

$$
\mu^{*}(A)-\mu^{*}(B) \leq d(A, B) .
$$

**Proof of Theorem 11.10** Suppose $A \in \mathfrak{M}_{F}(\mu), B \in \mathfrak{M}_{F}(\mu)$. Choose $\left\{A_{n}\right\}$, $\left\{B_{n}\right\}$ such that $A_{n} \in \mathscr{E} . B_{n} \in \mathscr{E}, A_{n} \rightarrow A, B_{n} \rightarrow B$. Then (29) and (30) show that
$$
\begin{gathered}
A_{n} \cup B_{n} \rightarrow A \cup B, \\
A_{n} \cap B_{n} \rightarrow A \cap B, \\
A_{n}-B_{n} \rightarrow A-B, \\
\mu^{*}\left(A_{n}\right) \rightarrow \mu^{*}(A),
\end{gathered}
$$

and $\mu^{*}(A)<+\infty$ since $d\left(A_{n}, A\right) \rightarrow 0$. By (31) and (33), $\mathfrak{M}_{F}(\mu)$ is a ring. By (7),

$$
\mu\left(A_{n}\right)+\mu\left(B_{n}\right)=\mu\left(A_{n} \cup B_{n}\right)+\mu\left(A_{n} \cap B_{n}\right) .
$$

Letting $n \rightarrow \infty$, we obtain, by (34) and Theorem $11.8(a)$,

$$
\mu^{*}(A)+\mu^{*}(B)=\mu^{*}(A \cup B)+\mu^{*}(A \cap B) .
$$

If $A \cap B=0$, then $\mu^{*}(A \cap B)=0$.

It follows that $\mu^{*}$ is additive on $\mathfrak{M}_{F}(\mu)$.

Now let $A \in \mathfrak{M}(\mu)$. Then $A$ can be represented as the union of a countable collection of disjoint sets of $\mathfrak{M}_{F}(\mu)$. For if $A=\bigcup A_{n}^{\prime}$ with $A_{n}^{\prime} \in \mathfrak{M}_{F}(\mu)$, write $A_{1}=A_{1}^{\prime}$, and

$$
A_{n}=\left(A_{1}^{\prime} \cup \cdots \cup A_{n}^{\prime}\right)-\left(A_{n}^{\prime} \cup \cdots \cup A_{n-1}^{\prime}\right) \quad(n=2,3,4, \ldots) \text {. }
$$

Then

$$
A=\bigcup_{n=1}^{\infty} A_{n}
$$

is the required representation. By (19)

$$
\mu^{*}(A) \leq \sum_{n=1}^{\infty} \mu^{*}\left(A_{n}\right) .
$$

On the other hand, $A \supset A_{1} \cup \cdots \cup A_{n}$; and by the additivity of $\mu^{*}$ on $\mathfrak{M}_{F}(\mu)$ we obtain

$$
\mu^{*}(A) \geq \mu^{*}\left(A_{1} \cup \cdots \cup A_{n}\right)=\mu^{*}\left(A_{1}\right)+\cdots+\mu^{*}\left(A_{n}\right) .
$$

Equations (36) and (37) imply

$$
\mu^{*}(A)=\sum_{n=1}^{\infty} \mu^{*}\left(A_{n}\right) .
$$

Suppose $\mu^{*}(A)$ is finite. Put $B_{n}=A_{1} \cup \cdots \cup A_{n}$. Then (38) shows that

$$
d\left(A, B_{n}\right)=\mu^{*}\left(\bigcup_{i=n+1}^{\infty} A_{i}\right)=\sum_{i=n+1}^{\infty} \mu^{*}\left(A_{i}\right) \rightarrow 0
$$

as $n \rightarrow \infty$. Hence $B_{n} \rightarrow A$; and since $B_{n} \in \mathfrak{M}_{F}(\mu)$, it is easily seen that $A \in \mathfrak{M}_{F}(\mu)$.

We have thus shown that $A \in \mathfrak{M}_{F}(\mu)$ if $A \in \mathfrak{M}(\mu)$ and $\mu^{*}(A)<+\infty$. It is now clear that $\mu^{*}$ is countably additive on $\mathfrak{M}(\mu)$. For if

$$
A=\bigcup A_{n},
$$

where $\left\{A_{n}\right\}$ is a sequence of disjoint sets of $\mathfrak{M}(\mu)$, we have shown that (38) holds if $\mu^{*}\left(A_{n}\right)<+\infty$ for every $n$, and in the other case (38) is trivial.

Finally, we have to show that $\mathfrak{M}(\mu)$ is a $\sigma$-ring. If $A_{n} \in \mathfrak{M}(\mu), n=1$, $2,3, \ldots$, it is clear that $\bigcup A_{n} \in \mathfrak{M}(\mu)$ (Theorem 2.12). Suppose $A \in \mathfrak{M}(\mu)$, $B \in \mathfrak{D}(\mu)$, and

$$
A=\bigcup_{n=1}^{\infty} A_{n}, \quad B=\bigcup_{n=1}^{\infty} B_{n},
$$

where $A_{n}, B_{n} \in \mathfrak{M}_{F}(\mu)$. Then the identity

$$
A_{n} \cap B=\bigcup_{i=1}^{\infty}\left(A_{n} \cap B_{i}\right)
$$

shows that $A_{n} \cap B \in \mathfrak{M}(\mu)$; and since

$$
\mu^{*}\left(A_{n} \cap B\right) \leq \mu^{*}\left(A_{n}\right)<+\infty,
$$

$A_{n} \cap B \in \mathfrak{M}_{F}(\mu)$. Hence $A_{n}-B \in \mathfrak{M}_{F}(\mu)$, and $A-B \in \mathfrak{M}(\mu)$ since $A-B=\bigcup_{n=1}^{\infty}\left(A_{n}-B\right)$.

We now replace $\mu^{*}(A)$ by $\mu(A)$ if $A \in \mathfrak{M}(\mu)$. Thus $\mu$, originally only defined on $\mathscr{E}$, is extended to a countably additive set function on the $\sigma$-ring $\mathfrak{M}(\mu)$. This extended set function is called a measure. The special case $\mu=m$ is called the Lebesgue measure on $R^{p}$. 

**11.11 Remarks**

(a) If $A$ is open, then $A \in \mathfrak{M}(\mu)$. For every open set in $R^{p}$ is the union of a countable collection of open intervals. To see this, it is sufficient to construct a countable base whose members are open intervals.

By taking complements, it follows that every closed set is in $\mathfrak{M}(\mu)$.

(b) If $A \in \mathfrak{M}(\mu)$ and $\varepsilon>0$, there exist sets $F$ and $G$ such that

$$
F \subset A \subset G
$$

$F$ is closed, $G$ is open, and

$$
\mu(G-A)<\varepsilon, \quad \mu(A-F)<\varepsilon .
$$

The first inequality holds since $\mu^{*}$ was defined by means of coverings by open elementary sets. The second inequality then follows by taking complements.

(c) We say that $E$ is a Borel set if $E$ can be obtained by a countable number of operations, starting from open sets, each operation consisting in taking unions, intersections, or complements. The collection $\mathscr{B}$ of all Borel sets in $R^{p}$ is a $\sigma$-ring; in fact, it is the smallest $\sigma$-ring which contains all open sets. By Remark $(a), E \in \mathfrak{M}(\mu)$ if $E \in \mathscr{B}$.

(d) If $A \in \mathfrak{M}(\mu)$, there exist Borel sets $F$ and $G$ such that $F \subset A \subset G$, and

$$
\mu(G-A)=\mu(A-F)=0 .
$$

This follows from $(b)$ if we take $\varepsilon=1 / n$ and let $n \rightarrow \infty$.

Since $A=F \cup(A-F)$, we see that every $A \in \mathfrak{M}(\mu)$ is the union of a Borel set and a set of measure zero.

The Borel sets are $\mu$-measurable for every $\mu$. But the sets of measure zero [that is, the sets $E$ for which $\mu^{*}(E)=0$ ] may be different for different $\mu$ 's.

(e) For every $\mu$, the sets of measure zero form a $\sigma$-ring.

(f) In case of the Lebesgue measure, every countable set has measure zero. But there are uncountable (in fact, perfect) sets of measure zero. The Cantor set may be taken as an example: Using the notation of Sec. $2.44$, it is easily seen that

$$
m\left(E_{n}\right)=\left(\frac{2}{3}\right)^{n} \quad(n=1,2,3, \ldots)
$$

and since $P=\bigcap E_{n}, P \subset E_{n}$ for every $n$, so that $m(P)=0$. 


