---
title: 2 CONSTRUCTION OF THE LEBESGUE MEASURE
date: 2022-08-17
---

11.4 Definition Let $R^{p}$ denote $p$-dimensional euclidean space. By an interval in $R^{p}$ we mean the set of points $\mathrm{x}=\left(x_{1}, \ldots, x_{p}\right)$ such that

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

11.5 Definition A nonnegative additive set function $\phi$ defined on $\mathscr{E}$ is said to be regular if the following is true: To every $A \in \mathscr{E}$ and to every $\varepsilon>0$ there exist sets $F \in \mathscr{E}, G \in \mathscr{E}$ such that $F$ is closed, $G$ is open, $F \subset A \subset G$, and

$$
\phi(G)-\varepsilon \leq \phi(A) \leq \phi(F)+\varepsilon .
$$

\subsection{Examples}

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

Here $[a, b)$ is the set $a \leq x<b$, etc. Because of the possible discontinuities of $\alpha$, these cases have to be distinguished. If $\mu$ is defined for elementary sets as in (11), $\mu$ is regular on $\mathscr{E}$. The proof is just like that of $(a)$.

Our next objective is to show that every regular set function on $\mathscr{E}$ can be extended to a countably additive set function on a $\sigma$-ring which contains $\mathscr{E}$.

11.7 Definition Let $\mu$ be additive, regular, nonnegative, and finite on $\mathscr{E}$. Consider countable coverings of any set $E \subset R^{p}$ by open elementary sets $A_{n}$ :

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

\section{$11.8$ Theorem}

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

11.9 Definition For any $A \subset R^{p}, B \subset R^{p}$, we define

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

11.10 Theorem $\mathfrak{M}(\mu)$ is a $\sigma$-ring, and $\mu^{*}$ is countably additive on $\mathfrak{M}(\mu)$.

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

Prooi of Theorem 11.10 Suppose $A \in \mathfrak{M}_{F}(\mu), B \in \mathfrak{M}_{F}(\mu)$. Choose $\left\{A_{n}\right\}$, $\left\{B_{n}\right\}$ such that $A_{n} \in \mathscr{E} . B_{n} \in \mathscr{E}, A_{n} \rightarrow A, B_{n} \rightarrow B$. Then (29) and (30) show that

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

\subsection{Remarks}

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

\section{PRINCIPLES OF MATHEMATICAL ANALYSIS}

\section{MEASURE SPACES}

11.12 Definition Suppose $X$ is a set, not necessarily a subset of a euclidean space, or indeed of any metric space. $X$ is said to be a measure space if there exists a $\sigma$-ring $\mathfrak{M}$ of subsets of $X$ (which are called measurable sets) and a nonnegative countably additive set function $\mu$ (which is called a measure), defined on $\mathfrak{M}$.

If, in addition, $X \in \mathfrak{M}$, then $X$ is said to be a measurable space.

For instance, we can take $X=R^{p}, \mathfrak{M}$ the collection of all Lebesguemeasurable subsets of $R^{p}$, and $\mu$ Lebesgue measure.

Or, let $X$ be the set of all positive integers, $M i$ the collection of all subsets of $X$, and $\mu(E)$ the number of elements of $E$.

Another example is provided by probability theory, where events may be considered as sets, and the probability of the occurrence of events is an additive (or countably additive) set function.

In the following sections we shall always deal with measurable spaces. It should be emphasized that the integration theory which we shall soon discuss would not become simpler in any respect if we sacrificed the generality we have now attained and restricted ourselves to Lebesgue measure, say, on an interval of the real line. In fact, the essential features of the theory are brought out with much greater clarity in the more general situation, where it is seen that everything depends only on the countable additivity of $\mu$ on a $\sigma$-ring.

It will be convenient to introduce the notation

$$
\{x \mid P\}
$$

for the set of all elements $x$ which have the property $P$.

\section{MEASURABLE FUNCTIONS}

11.13 Definition Let $f$ be a function defined on the measurable space $X$, with values in the extended real number system. The function $f$ is said to be measurable if the set

$$
\{x \mid f(x)>a\}
$$

is measurable for every real $a$.

11.14 Example If $X=R^{p}$ and $\mathfrak{M}=\mathfrak{M}(\mu)$ as defined in Definition 11.9, every continuous $f$ is measurable, since then (42) is an open set. 11.15 Theorem Each of the following four conditions implies the other three:

$$
\begin{aligned}
&\{x \mid f(x)>a\} \text { is measurable for every real } a . \\
&\{x \mid f(x) \geq a\} \text { is measurable for every real } a . \\
&\{x \mid f(x)<a\} \text { is measurable for every real a. } \\
&\{x \mid f(x) \leq a\} \text { is measurable for every real } a .
\end{aligned}
$$

Proof The relations

$$
\begin{aligned}
&\{x \mid f(x) \geq a\}=\bigcap_{n=1}^{\infty}\left\{x \mid f(x)>a-\frac{1}{n}\right\} \\
&\{x \mid f(x)<a\}=X-\{x \mid f(x) \geq a\} \\
&\{x \mid f(x) \leq a\}=\bigcap_{n=1}^{\infty}\left\{x \mid f(x)<a+\frac{1}{n}\right\} \\
&\{x \mid f(x)>a\}=X-\{x \mid f(x) \leq a\}
\end{aligned}
$$

show successively that (43) implies (44), (44) implies (45), (45) implies (46), and (46) implies (43).

Hence any of these conditions may be used instead of (42) to define measurability.

\subsection{Theorem Iff is measurable, then $|f|$ is measurable.}

\section{Proof}

$$
\{x|| f(x) \mid<a\}=\{x \mid f(x)<a\} \cap\{x \mid f(x)>-a\} .
$$

11.17 Theorem Let $\left\{f_{n}\right\}$ be a sequence of measurable functions. For $x \in X$, put

$$
\begin{aligned}
&g(x)=\sup _{n}(x) \quad(n=1,2,3, \ldots), \\
&h(x)=\limsup _{n \rightarrow \infty} f_{n}(x) .
\end{aligned}
$$

Then $g$ and $h$ are measurable.

The same is of course true of the inf and lim inf.

\section{Proof}

$$
\begin{aligned}
\{x \mid g(x)>a\} &=\bigcup_{n=1}^{\infty}\left\{x \mid f_{n}(x)>a\right\}, \\
h(x) &=\inf g_{m}(x),
\end{aligned}
$$

where $g_{m}(x)=\sup f_{n}(x)(n \geq m)$. 

\section{Corollaries}

(a) Iff and $g$ are measurable, then $\max (f, g)$ and $\min (f, g)$ are measurable. If

$$
f^{+}=\max (f, 0), \quad f^{-}=-\min (f, 0),
$$

it follows, in particular, that $f^{+}$and $f^{-}$are measurable.

(b) The limit of a convergent sequence of measurable functions is measurable.

11.18 Theorem Let $f$ and $g$ be measurable real-valued functions defined on $X$, let $F$ be real and continuous on $R^{2}$, and put

$$
h(x)=F(f(x), g(x)) \quad(x \in X) .
$$

Then $h$ is measurable.

In particular, $f+g$ and $f g$ are measurable.

Proof Let

$$
G_{a}=\{(u, v) \mid F(u, v)>a\} .
$$

Then $G_{a}$ is an open subset of $R^{2}$, and we can write

$$
G_{a}=\bigcup_{n=1}^{\infty} I_{n},
$$

where $\left\{I_{n}\right\}$ is a sequence of open intervals:

$$
I_{n}=\left\{(u, v) \mid a_{n}<u<b_{n}, c_{n}<v<d_{n}\right\} .
$$

Since

$$
\left\{x \mid a_{n}<f(x)<b_{n}\right\}=\left\{x \mid f(x)>a_{n}\right\} \cap\left\{x \mid f(x)<b_{n}\right\}
$$

is measurable, it follows that the set

$$
\left\{x \mid(f(x), g(x)) \in I_{n}\right\}=\left\{x \mid a_{n}<f(x)<b_{n}\right\} \cap\left\{x \mid c_{n}<g(x)<d_{n}\right\}
$$

is measurable. Hence the same is true of

$$
\begin{aligned}
\{x \mid h(x)>a\} &=\left\{x \mid(f(x), g(x)) \in G_{a}\right\} \\
&=\bigcup_{n=1}^{\infty}\left\{x \mid(f(x), g(x)) \in I_{n}\right\} .
\end{aligned}
$$

Summing up, we may say that all ordinary operations of analysis, including limit operations, when applied to measurable functions, lead to measurable functions; in other words, all functions that are ordinarily met with are measurable.

That this is, however, only a rough statement is shown by the following example (based on Lebesgue measure, on the real line): If $h(x)=f(g(x))$, where $f$ is measurable and $g$ is continuous, then $h$ is not necessarily measurable. (For the details, we refer to McShane, page 241.)

The reader may have noticed that measure has not been mentioned in our discussion of measurable functions. In fact, the class of measurable functions on $X$ depends only on the $\sigma$-ring $\mathfrak{M}$ (using the notation of Definition 11.12). For instance, we may speak of Borel-measurable functions on $R^{p}$, that is, of function $f$ for which

$$
\{x \mid f(x)>a\}
$$

is always a Borel set, without reference to any particular measure.

\section{SIMPLE FUNCTIONS}

11.19 Definition Let $s$ be a real-valued function defined on $X$. If the range of $s$ is finite, we say that $s$ is a simple function.

Let $E \subset X$, and put

$$
K_{E}(x)= \begin{cases}1 & (x \in E), \\ 0 & (x \notin E) .\end{cases}
$$

$K_{E}$ is called the characteristic function of $E$.

Suppose the range of $s$ consists of the distinct numbers $c_{1}, \ldots, c_{n}$. Let

$$
E_{i}=\left\{x \mid s(x)=c_{i}\right\} \quad(i=1, \ldots, n) .
$$

Then

$$
s=\sum_{n=1}^{n} c_{i} K_{E_{i}},
$$

that is, every simple function is a finite linear combination of characteristic functions. It is clear that $s$ is measurable if and only if the sets $E_{1}, \ldots, E_{n}$ are measurable.

It is of interest that every function can be approximated by simple functions:

11.20 Theorem Let $f$ be a real function on $X$. There exists a sequence $\left\{s_{n}\right\}$ of simple functions such that $s_{n}(x) \rightarrow f(x)$ as $n \rightarrow \infty$, for every $x \in X$. If $f$ is measurable, $\left\{s_{n}\right\}$ may be chosen to be a sequence of measurable functions. If $f \geq 0,\left\{s_{n}\right\}$ may be chosen to be a monotonically increasing sequence.

Proof If $f \geq 0$, define

$$
E_{n i}=\left\{x \mid \frac{i-1}{2^{n}} \leq f(x)<\frac{i}{2^{n}}\right\}, \quad F_{n}=\{x \mid f(x) \geq n\}
$$

for $n=1,2,3, \ldots, i=1,2, \ldots, n 2^{n}$. Put

$$
s_{n}=\sum_{i=1}^{n 2^{n}} \frac{i-1}{2^{n}} K_{E_{n i}}+n K_{F_{n}} .
$$

In the general case, let $f=f^{+}-f^{-}$, and apply the preceding construction to $f^{+}$and to $f^{-}$.

It may be noted that the sequence $\left\{s_{n}\right\}$ given by (50) converges uniformly to $f$ if $f$ is bounded.

\section{INTEGRATION}

We shall define integration on a measurable space $X$, in which $\mathfrak{M}$ is the $\sigma$-ring of measurable sets, and $\mu$ is the measure. The reader who wishes to visualize a more concrete situation may think of $X$ as the real line, or an interval, and of $\mu$ as the Lebesgue measure $m$.

\subsection{Definition Suppose}

$$
s(x)=\sum_{i=1}^{n} c_{i} K_{E_{i}}(x) \quad\left(x \in X, c_{i}>0\right)
$$

is measurable, and suppose $E \in \mathfrak{M}$. We define

$$
I_{E}(s)=\sum_{i=1}^{n} c_{i} \mu\left(E \cap E_{i}\right) .
$$

If $f$ is measurable and nonnegative, we define

$$
\int_{E} f d \mu=\sup I_{E}(s),
$$

where the sup is taken over all measurable simple functions $s$ such that $0 \leq s \leq f$.

The left member of (53) is called the Lebesgue integral of $f$, with respect to the measure $\mu$, over the set $E$. It should be noted that the integral may have the value $+\infty$

It is easily verified that

$$
\int_{E} s d \mu=I_{E}(s)
$$

for every nonnegative simple measurable function $s$.

11.22 Definition Let $f$ be measurable, and consider the two integrals

$$
\int_{E} f^{+} d \mu, \quad \int_{E} f^{-} d \mu,
$$

where $f^{+}$and $f^{-}$are defined as in (47). If at least one of the integrals (55) is finite, we define

$$
\int_{\boldsymbol{E}} f d \mu=\int_{\boldsymbol{E}} f^{+} d \mu-\int_{\boldsymbol{E}} f^{-} d \mu .
$$

If both integrals in (55) are finite, then (56) is finite, and we say that $f$ is integrable (or summable) on $E$ in the Lebesgue sense, with respect to $\mu$; we write $f \in \mathscr{L}(\mu)$ on $E$. If $\mu=m$, the usual notation is: $f \in \mathscr{L}$ on $E$.

This terminology may be a little confusing: If (56) is $+\infty$ or $-\infty$, then the integral of $f$ over $E$ is defined, although $f$ is not integrable in the above sense of the word; $f$ is integrable on $E$ only if its integral over $E$ is finite.

We shall be mainly interested in integrable functions, although in some cases it is desirable to deal with the more general situation.

11.23 Remarks The following properties are evident:

(a) If $f$ is measurable and bounded on $E$, and if $\mu(E)<+\infty$, then $f \in \mathscr{L}(\mu)$ on $E$

(b) If $a \leq f(x) \leq b$ for $x \in E$, and $\mu(E)<+\infty$, then

$$
a \mu(E) \leq \int_{E} f d \mu \leq b \mu(E)
$$

(c) If $f$ and $g \in \mathscr{L}(\mu)$ on $E$, and if $f(x) \leq g(x)$ for $x \in E$, then

$$
\int_{E} f d \mu \leq \int_{E} g d \mu .
$$

(d) If $f \in \mathscr{L}(\mu)$ on $E$, then $c f \in \mathscr{L}(\mu)$ on $E$, for every finite constant $c$, and

$$
\int_{E} c f d \mu=c \int_{E} f d \mu .
$$

(e) If $\mu(E)=0$, and $f$ is measurable, then

$$
\int_{E} f d \mu=0 .
$$

(f) If $f \in \mathscr{L}(\mu)$ on $E, A \in \mathfrak{P}$, and $A \subset E$, then $f \in \mathscr{L}(\mu)$ on $A$.

\subsection{Theorem}

(a) Suppose $f$ is measurable and nonnegative on $X$. For $A \in \mathfrak{M}$, define

$$
\phi(A)=\int_{A} f d \mu .
$$

Then $\phi$ is countably additive on $\mathfrak{M}$.

(b) The same conclusion holds if $f \in \mathscr{L}(\mu)$ on $X$.

Proof It is clear that $(b)$ follows from $(a)$ if we write $f=f^{+}-f^{-}$and apply (a) to $f^{+}$and to $f^{-}$.

To prove $(a)$, we have to show that

$$
\phi(A)=\sum_{n=1}^{\infty} \phi\left(A_{n}\right)
$$

if $A_{n} \in \mathfrak{M}(n=1,2,3, \ldots), A_{i} \cap A_{j}=0$ for $i \neq j$, and $A=\bigcup_{1}^{\infty} A_{n}$.

If $f$ is a characteristic function, then the countable additivity of $\phi$ is precisely the same as the countable additivity of $\mu$, since

$$
\int_{A} K_{E} d \mu=\mu(A \cap E) .
$$
holds.

If $f$ is simple, then $f$ is of the form (51), and the conclusion again

In the general case, we have, for every measurable simple function $s$ such that $0 \leq s \leq f$

$$
\int_{A} s d \mu=\sum_{n=1}^{\infty} \int_{A_{n}} s d \mu \leq \sum_{n=1}^{\infty} \phi\left(A_{n}\right)
$$

Therefore, by (53),

$$
\phi(A) \leq \sum_{n=1}^{\infty} \phi\left(A_{n}\right)
$$

Now if $\phi\left(A_{n}\right)=+\infty$ for some $n$, (58) is trivial, since $\phi(A) \geq \phi\left(A_{n}\right)$. Suppose $\phi\left(A_{n}\right)<+\infty$ for every $n$.

Given $\varepsilon>0$, we can choose a measurable function $s$ such that $0 \leq s \leq f$, and such that

$$
\int_{A_{1}} s d \mu \geq \int_{A_{1}} f d \mu-\varepsilon, \quad \int_{A_{2}} s d \mu \geq \int_{A_{2}} f d \mu-\varepsilon .
$$

Hence

$$
\phi\left(A_{1} \cup A_{2}\right) \geq \int_{A_{1} \cup A_{2}} s d \mu=\int_{A_{1}} s d \mu+\int_{A_{2}} s d \mu \geq \phi\left(A_{1}\right)+\phi\left(A_{2}\right)-2 \varepsilon,
$$

so that

$$
\phi\left(A_{1} \cup A_{2}\right) \geq \phi\left(A_{1}\right)+\phi\left(A_{2}\right)
$$

It follows that we have, for every $n$,

$$
\phi\left(A_{1} \cup \cdots \cup A_{n}\right) \geq \phi\left(A_{1}\right)+\cdots+\phi\left(A_{n}\right) \text {. }
$$

Since $A \supset A_{1} \cup \cdots \cup A_{n}$, (61) implies

$$
\phi(A) \geq \sum_{n=1}^{\infty} \phi\left(A_{n}\right)
$$

and (58) follows from (59) and (62).

Corollary If $A \in \mathfrak{M}, B \in \mathfrak{M}, B \subset A$, and $\mu(A-B)=0$, then

$$
\int_{\boldsymbol{A}} f d \mu=\int_{\boldsymbol{B}} f d \mu .
$$

Since $A=B \cup(A-B)$, this follows from Remark 11.23(e).

11.25 Remarks The preceding corollary shows that sets of ineasure zero are negligible in integration.

Let us write $f \sim g$ on $E$ if the set

$$
\{x \mid f(x) \neq g(x)\} \cap E
$$

has measure zero.

Then $f \sim f ; f \sim g$ implies $g \sim f ;$ and $f \sim g, g \sim h$ implies $f \sim h$. That is, the relation $\sim$ is an equivalence relation.

If $f \sim g$ on $E$, we clearly have

$$
\int_{A} f d \mu=\int_{A} g d \mu
$$

provided the integrals exist, for every measurable subset $A$ of $E$.

If a property $P$ holds for every $x \in E-A$, and if $\mu(A)=0$, it is customary to say that $P$ holds for almost all $x \in E$, or that $P$ holds almost everywhere on $E$. (This concept of "almost everywhere" depends of course on the particular measure under consideration. In the literature, unless something is said to the contrary, it usually refers to Lebesgue measure.)

If $f \in \mathscr{L}(\mu)$ on $E$, it is clear that $f(x)$ must be finite almost everywhere on $E$. In most cases we therefore do not lose any generality if we assume the given functions to be finite-valued from the outset.

11.26 Theorem Iff $\in \mathscr{L}(\mu)$ on $E$, then $|f| \in \mathscr{L}(\mu)$ on $E$, and

$$
\left|\int_{E} f d \mu\right| \leq \int_{E}|f| d \mu .
$$

Proof Write $E=A \cup B$, where $f(x) \geq 0$ on $A$ and $f(x)<0$ on $B$. By Theorem 11.24,

$$
\int_{E}|f| d \mu=\int_{A}|f| d \mu+\int_{B}|f| d \mu=\int_{A} f^{+} d \mu+\int_{B} f^{-} d \mu<+\infty
$$

so that $|f| \in \mathscr{L}(\mu)$. Since $f \leq|f|$ and $-f \leq|f|$, we see that

$$
\int_{E} f d \mu \leq \int_{E}|f| d \mu, \quad-\int_{E} f d \mu \leq \int_{E}|f| d \mu,
$$

and $(63)$ follows.

Since the integrability of $f$ implies that of $|f|$, the Lebesgue integral is often called an absolutely convergent integral. It is of course possible to define nonabsolutely convergent integrals, and in the treatment of some problems it is essential to do so. But these integrals lack some of the most useful properties of the Lebesgue integral and play a somewhat less important role in analysis.

11.27 Theorem Suppose $f$ is measurable on $E,|f| \leq g$, and $g \in \mathscr{L}(\mu)$ on $E$. Then $f \in \mathscr{L}(\mu)$ on $E$.

Proof We have $f^{+} \leq g$ and $f^{-} \leq g$.

11.28 Lebesgue's monotone convergence theorem Suppose $E \in \mathfrak{M}$. Let $\left\{f_{n}\right\}$ be a sequence of measurable functions such that

$$
0 \leq f_{1}(x) \leq f_{2}(x) \leq \cdots \quad(x \in E) .
$$

Let $f$ be defined by

$$
f_{n}(x) \rightarrow f(x) \quad(x \in E)
$$

as $n \rightarrow \infty$. Then

$$
\int_{E} f_{n} d \mu \rightarrow \int_{E} f d \mu \quad(n \rightarrow \infty) .
$$

Proof By (64) it is clear that, as $n \rightarrow \infty$,

$$
\int_{E} f_{n} d \mu \rightarrow \alpha
$$

for some $\alpha$; and since $\int f_{n} \leq \int f$, we have

$$
\alpha \leq \int_{E} f d \mu .
$$

Choose $c$ such that $0<c<1$, and let $s$ be a simple measurable function such that $0 \leq s \leq f$. Put

$$
E_{n}=\left\{x \mid f_{n}(x) \geq c s(x)\right\} \quad(n=1,2,3, \ldots) \text {. }
$$

By (64), $E_{1} \subset E_{2} \subset E_{3} \subset \cdots ;$ and by (65),

$$
E=\bigcup_{n=1}^{\infty} E_{n} \text {. }
$$

For every $n$,

$$
\int_{E} f_{n} d \mu \geq \int_{E_{n}} f_{n} d \mu \geq c \int_{E_{n}} s d \mu .
$$

We let $n \rightarrow \infty$ in (70). Since the integral is a countably additive set function (Theorem 11.24), (69) shows that we may apply Theorem $11.3$ to the last integral in (70), and we obtain

$$
\alpha \geq c \int_{E} s d \mu
$$

Letting $c \rightarrow 1$, we see that

$$
\alpha \geq \int_{E} s d \mu
$$

and (53) implies

$$
\alpha \geq \int_{E} f d \mu .
$$

The theorem follows from (67), (68), and (72).

11.29 Theorem Suppose $f=f_{1}+f_{2}$, where $f_{i} \in \mathscr{L}(\mu)$ on $E(i=1,2)$. Then $f \in \mathscr{L}(\mu)$ on $E$, and

$$
\int_{E} f d \mu=\int_{E} f_{1} d \mu+\int_{E} f_{2} d \mu .
$$

Proof First, suppose $f_{1} \geq 0, f_{2} \geq 0$. If $f_{1}$ and $f_{2}$ are simple, (73) follows trivially from (52) and (54). Otherwise, choose monotonically increasing sequences $\left\{s_{n}^{\prime}\right\},\left\{s_{n}^{\prime \prime}\right\}$ of nonnegative measurable simple functions which converge to $f_{1}, f_{2}$. Theorem $11.20$ shows that this is possible. Put $s_{n}=s_{n}^{\prime}+s_{n}^{\prime \prime}$. Then

$$
\int_{E} s_{n} d \mu=\int_{E} s_{n}^{\prime} d \mu+\int_{E} s_{n}^{\prime \prime} d \mu,
$$

and (73) follows if we let $n \rightarrow \infty$ and appeal to Theorem 11.28. Next, suppose $f_{1} \geq 0, f_{2} \leq 0$. Put

$$
A=\{x \mid f(x) \geq 0\}, \quad B=\{x \mid f(x)<0\} .
$$

Then $f, f_{1}$, and $-f_{2}$ are nonnegative on $A$. Hence

$$
\int_{A} f_{1} d \mu=\int_{A} f d \mu+\int_{A}\left(-f_{2}\right) d \mu=\int_{A} f d \mu-\int_{A} f_{2} d \mu .
$$

Similarly, $-f, f_{1}$, and $-f_{2}$ are nonnegative on $B$, so that

$$
\int_{B}\left(-f_{2}\right) d \mu=\int_{B} f_{1} d \mu+\int_{B}(-f) d \mu,
$$

or

$$
\int_{B} f_{1} d \mu=\int_{B} f d \mu-\int_{B} f_{2} d \mu,
$$

and (73) follows if we add (74) and (75).

In the general case, $E$ can be decomposed into four sets $E_{i}$ on each of which $f_{1}(x)$ and $f_{2}(x)$ are of constant sign. The two cases we have proved so far imply

$$
\int_{E_{i}} f d \mu=\int_{E_{i}} f_{1} d \mu+\int_{E_{i}} f_{2} d \mu \quad(i=1,2,3,4),
$$

and (73) follows by adding these four equations.

We are now in a position to reformulate Theorem $11.28$ for series.

11.30 Theorem Suppose $E \in \mathfrak{M}$. If $\left\{f_{n}\right\}$ is a sequence of nonnegative measurable functions and

$$
f(x)=\sum_{n=1}^{\infty} f_{n}(x) \quad(x \in E),
$$

then

$$
\int_{E} f d \mu=\sum_{n=1}^{\infty} \int_{E} f_{n} d \mu .
$$

Proof The partial sums of (76) form a monotonically increasing sequence.

11.31 Fatou's theorem Suppose $E \in \mathfrak{M}$. If $\left\{f_{n}\right\}$ is a sequence of nonnegative measurable functions and

$$
f(x)=\liminf _{n \rightarrow \infty} f_{n}(x) \quad(x \in E),
$$

then

$$
\int_{E} f d \mu \leq \liminf _{n \rightarrow \infty} \int_{E} f_{n} d \mu
$$

Strict inequality may hold in (77). An example is given in Exercise $5 .$

Proof For $n=1,2,3, \ldots$ and $x \in E$, put

$$
g_{n}(x)=\inf f_{i}(x) \quad(i \geq n) .
$$

Then $g_{n}$ is measurable on $E$, and

$$
\begin{aligned}
0 & \leq g_{1}(x) \leq g_{2}(x) \leq \cdots, \\
g_{n}(x) & \leq f_{n}(x), \\
g_{n}(x) & \rightarrow f(x) \quad(n \rightarrow \infty) .
\end{aligned}
$$

By (78), (80), and Theorem $11.28$,

$$
\int_{E} g_{n} d \mu \rightarrow \int_{E} f d \mu,
$$

so that (77) follows from (79) and (81).

11.32 Lebesgue's dominated convergence theorem Suppose $E \in \mathfrak{M}$. Let $\left\{f_{n}\right\}$ be a sequence of measurable functions such that

$$
f_{n}(x) \rightarrow f(x) \quad(x \in E)
$$

as $n \rightarrow \infty$. If there exists a function $g \in \mathscr{L}(\mu)$ on $E$, such that

$$
\left|f_{n}(x)\right| \leq g(x) \quad(n=1,2,3, \ldots, x \in E),
$$

then

$$
\lim _{n \rightarrow \infty} \int_{E} f_{n} d \mu=\int_{E} f d \mu .
$$

Because of $(83),\left\{f_{n}\right\}$ is said to be dominated by $g$, and we talk about dominated convergence. By Remark $11.25$, the conclusion is the same if (82) holds almost everywhere on $E$.

Proof First, (83) and Theorem $11.27$ imply that $f_{n} \in \mathscr{L}(\mu)$ and $f \in \mathscr{L}(\mu)$ on $E$.

Since $f_{n}+g \geq 0$, Fatou's theorem shows that

$$
\int_{E}(f+g) d \mu \leq \liminf _{n \rightarrow \infty} \int_{E}\left(f_{n}+g\right) d \mu,
$$

or

$$
\int_{E} f d \mu \leq \liminf _{n \rightarrow \infty} \int_{E} f_{n} d \mu .
$$

Since $g-f_{n} \geq 0$, we see similarly that

$$
\int_{E}(g-f) d \mu \leq \liminf _{n \rightarrow \infty} \int_{E}\left(g-f_{n}\right) d \mu,
$$

so that

$$
-\int_{E} f d \mu \leq \liminf _{n \rightarrow \infty}\left[-\int_{E} f_{n} d \mu\right],
$$

which is the same as

$$
\int_{E} f d \mu \geq \lim \sup _{n \rightarrow \infty} \int_{E} f d \mu .
$$

The existence of the limit in (84) and the equality asserted by (84) now follow from (85) and (86).

Corollary If $\mu(E)<+\infty,\left\{f_{n}\right\}$ is uniformly bounded on $E$, and $f_{n}(x) \rightarrow f(x)$ on $E$, then (84) holds.

A uniformly bounded convergent sequence is often said to be boundedly convergent.

\section{COMPARISON WITH THE RIEMANN INTEGRAL}

Our next theorem will show that every function which is Riemann-integrable on an interval is also Lebesgue-integrable, and that Riemann-integrable functions are subject to rather stringent continuity conditions. Quite apart from the fact that the Lebesgue theory therefore enables us to integrate a much larger class of functions, its greatest advantage lies perhaps in the ease with which many limit operations can be handled; from this point of view, Lebesgue's convergence theorems may well be regarded as the core of the Lebesgue theory.

One of the difficulties which is encountered in the Riemann theory is that limits of Riemann-integrable functions (or even continuous functions) may fail to be Riemann-integrable. This difficulty is now almost eliminated, since limits of measurable functions are always measurable.

Let the measure space $X$ be the interval $[a, b]$ of the real line, with $\mu=m$ (the Lebesgue measure), and $\mathfrak{M}$ the family of Lebesgue-measurable subsets of $[a, b]$. Instead of

$$
\int_{X} f d m
$$

it is customary to use the familiar notation

$$
\int_{a}^{b} f d x
$$

for the Lebesgue integral of $f$ over $[a, b]$. To distinguish Riemann integrals from Lebesgue integrals, we shall now denote the former by

$$
\mathscr{R} \int_{a}^{b} f d x
$$

\section{$11.33$ Theorem}

(a) If $f \in \mathscr{R}$ on $[a, b]$, then $f \in \mathscr{L}$ on $[a, b]$, and

$$
\int_{a}^{b} f d x=\mathscr{R} \int_{a}^{b} f d x .
$$

(b) Suppose $f$ is bounded on $[a, b]$. Then $f \in \mathscr{R}$ on $[a, b]$ if and only if $f$ is continuous almost everywhere on $[a, b]$.

Proof Suppose $f$ is bounded. By Definition $6.1$ and Theorem $6.4$ there is a sequence $\left\{P_{k}\right\}$ of partitions of $[a, b]$, such that $P_{k+1}$ is a refinement of $P_{k}$, such that the distance between adjacent points of $P_{k}$ is less than $1 / k$, and such that

$$
\lim _{k \rightarrow \infty} L\left(P_{k}, f\right)=\mathscr{R} \underline{\int} f d x, \quad \lim _{k \rightarrow \infty} U\left(P_{k}, f\right)=\mathscr{R} \bar{\int} f d x .
$$

(In this proof, all integrals are taken over $[a, b]$.)

If $P_{k}=\left\{x_{0}, x_{1}, \ldots, x_{n}\right\}$, with $x_{0}=a, x_{n}=b$, define

$$
U_{k}(a)=L_{k}(a)=f(a) ;
$$

put $U_{k}(x)=M_{i}$ and $L_{k}(x)=m_{i}$ for $x_{i-1}<x \leq x_{i}, 1 \leq i \leq n$, using the notation introduced in Definition 6.1. Then

$$
L\left(P_{k}, f\right)=\int L_{k} d x, \quad U\left(P_{k}, f\right)=\int U_{k} d x,
$$

and

$$
L_{1}(x) \leq L_{2}(x) \leq \cdots \leq f(x) \leq \cdots \leq U_{2}(x) \leq U_{1}(x)
$$

for all $x \in[a, b]$, since $P_{k+1}$ refines $P_{k}$. By (90), there exist

$$
L(x)=\lim _{k \rightarrow \infty} L_{k}(x), \quad U(x)=\lim _{k \rightarrow \infty} U_{k}(x) .
$$

Observe that $L$ and $U$ are bounded measurable functions on $[a, b]$, that

$$
L(x) \leq f(x) \leq U(x) \quad(a \leq x \leq b)
$$

and that

$$
\int L d x=\mathscr{R} \int f d x, \quad \int U d x=\mathscr{R} \int f d x
$$

by $(88),(90)$, and the monotone convergence theorem.

So far, nothing has been assumed about $f$ except that $f$ is a bounded real function on $[a, b]$.

To complete the proof, note that $f \in \mathscr{R}$ if and only if its upper and lower Riemann integrals are equal, hence if and only if

$$
\int L d x=\int U d x
$$

since $L \leq U$, (94) happens if and only if $L(x)=U(x)$ for almost all $x \in[a, b]$ (Exercise 1).

In that case, (92) implies that

$$
L(x)=f(x)=U(x)
$$

almost everywhere on $[a, b]$, so that $f$ is measurable, and (87) follows from (93) and (95).

Furthermore, if $x$ belongs to no $P_{k}$, it is quite easy to see that $U(x)=$ $L(x)$ if and only if $f$ is continuous at $x$. Since the union of the sets $P_{k}$ is countable, its measure is 0 , and we conclude that $f$ is continuous almost everywhere on $[a, b]$ if and only if $L(x)=U(x)$ almost everywhere, hence (as we saw above) if and only if $f \in \mathscr{R}$.

This completes the proof.

The familiar connection between integration and differentiation is to a large degree carried over into the Lebesgue theory. If $f \in \mathscr{L}$ on $[a, b]$, and

$$
F(x)=\int_{a}^{x} f d t \quad(a \leq x \leq b)
$$

then $F^{\prime}(x)=f(x)$ almost everywhere on $[a, b]$.

Conversely, if $F$ is differentiable at every point of $[a, b]$ ("almost everywhere" is not good enough here!) and if $F^{\prime} \in \mathscr{L}$ on $[a, b]$, then

$$
F(x)-F(a)=\int_{a}^{x} F^{\prime}(t) \quad(a \leq x \leq b)
$$

For the proofs of these two theorems, we refer the reader to any of the works on integration cited in the Bibliography. 

\section{INTEGRATION OF COMPLEX FUNCTIONS}

Suppose $f$ is a complex-valued function defined on a measure space $X$, and $f=u+i v$, where $u$ and $v$ are real. We say that $f$ is measurable if and only if both $u$ and $v$ are measurable.

It is easy to verify that sums and products of complex measurable functions are again measurable. Since

$$
|f|=\left(u^{2}+v^{2}\right)^{1 / 2}
$$

Theorem $11.18$ shows that $|f|$ is measurable for every complex measurable $f$.

Suppose $\mu$ is a measure on $X, E$ is a measurable subset of $X$, and $f$ is a complex function on $X$. We say that $f \in \mathscr{L}(\mu)$ on $E$ provided that $f$ is measurable and

$$
\int_{E}|f| d \mu<+\infty
$$

and we define

$$
\int_{E} f d \mu=\int_{E} u d \mu+i \int_{E} v d \mu
$$

if (97) holds. Since $|u| \leq|f|,|v| \leq|f|$, and $|f| \leq|u|+|v|$, it is clear that (97) holds if and only if $u \in \mathscr{L}(\mu)$ and $v \in \mathscr{L}(\mu)$ on $E$.

Theorems $11.23(a),(d),(e),(f), 11.24(b), 11.26,11.27,11.29$, and $11.32$ can now be extended to Lebesgue integrals of complex functions. The proofs are quite straightforward. That of Theorem $11.26$ is the only one that offers anything of interest:

If $f \in \mathscr{L}(\mu)$ on $E$, there is a complex number $c,|c|=1$, such that

$$
c \int_{E} f d \mu \geq 0 .
$$

Put $g=c f=u+i v, u$ and $v$ real. Then

$$
\left|\int_{E} f d \mu\right|=c \int_{E} f d \mu=\int_{E} g d \mu=\int_{E} u d \mu \leq \int_{E}|f| d \mu .
$$

The third of the above equalities holds since the preceding ones show that $\int g d \mu$ is real.

\section{FUNCTIONS OF CLASS $\mathscr{L}^{2}$}

As an application of the Lebesgue theory, we shall now extend the Parseval theorem (which we proved only for Riemann-integrable functions in Chap. 8) and prove the Riesz-Fischer theorem for orthonormal sets of functions. 11.34 Definition Let $X$ be a measurable space. We say that a complex function $f \in \mathscr{L}^{2}(\mu)$ on $X$ if $f$ is measurable and if

$$
\int_{X}|f|^{2} d \mu<+\infty .
$$

If $\mu$ is Lebesgue measure, we say $f \in \mathscr{L}^{2}$. For $f \in \mathscr{L}^{2}(\mu)$ (we shall omit the phrase "on $X$ " from now on) we define

$$
\|f\|=\left\{\int_{X}|f|^{2} d \mu\right\}^{1 / 2}
$$

and call $\|f\|$ the $\mathscr{L}^{2}(\mu)$ norm of $f$.

11.35 Theorem Suppose $f \in \mathscr{L}^{2}(\mu)$ and $g \in \mathscr{L}^{2}(\mu)$. Then $f g \in \mathscr{L}(\mu)$, and

$$
\int_{x}|f g| d \mu \leq\|f\|\|g\| .
$$

This is the Schwarz inequality, which we have already encountered for series and for Riemann integrals. It follows from the inequality

$$
0 \leq \int_{\boldsymbol{X}}(|f|+\lambda|g|)^{2} d \mu=\|f\|^{2}+2 \lambda \int_{\boldsymbol{X}}|f g| d \mu+\lambda^{2}\|g\|^{2}
$$

which holds for every real $\lambda$.

11.36 Theorem Iff $\in \mathscr{L}^{2}(\mu)$ and $g \in \mathscr{L}^{2}(\mu)$, then $f+g \in \mathscr{L}^{2}(\mu)$, and

$$
\|f+g\| \leq\|f\|+\|g\| .
$$

Proof The Schwarz inequality shows that

$$
\begin{aligned}
\|f+g\|^{2} &=\int|f|^{2}+\int f \bar{g}+\int f g+\int|g|^{2} \\
& \leq\|f\|^{2}+2\|f\|\|g\|+\|g\|^{2} \\
&=(\|f\|+\|g\|)^{2} .
\end{aligned}
$$

11.37 Remark If we define the distance between two functions $f$ and $g$ in $\mathscr{L}^{2}(\mu)$ to be $\|f-g\|$, we see that the conditions of Definition $2.15$ are satisfied, except for the fact that $\|f-g\|=0$ does not imply that $f(x)=g(x)$ for all $x$, but only for almost all $x$. Thus, if we identify functions which differ only on a set of measure zero, $\mathscr{L}^{2}(\mu)$ is a metric space.

We now consider $\mathscr{L}^{2}$ on an interval of the real line, with respect to Lebesgue measure.

11.38 Theorem The continuous functions form a dense subset of $\mathscr{L}^{2}$ on $[a, b]$. More explicitly, this means that for any $f \in \mathscr{L}^{2}$ on $[a, b]$, and any $\varepsilon>0$, there is a function $g$, continuous on $[a, b]$, such that

$$
\|f-g\|=\left\{\int_{a}^{b}|f-g|^{2} d x\right\}^{1 / 2}<\varepsilon .
$$

Proof We shall say that $f$ is approximated in $\mathscr{L}^{2}$ by a sequence $\left\{g_{n}\right\}$ if $\left\|f-g_{n}\right\| \rightarrow 0$ as $n \rightarrow \infty$.

Let $A$ be a closed subset of $[a, b]$, and $K_{A}$ its characteristic function. Put

$$
t(x)=\inf |x-y| \quad(y \in A)
$$

and

$$
g_{n}(x)=\frac{1}{1+n t(x)} \quad(n=1,2,3, \ldots)
$$

Then $g_{n}$ is continuous on $[a, b], g_{n}(x)=1$ on $A$, and $g_{n}(x) \rightarrow 0$ on $B$, where $B=[a, b]-A$. Hence

$$
\left\|g_{n}-K_{A}\right\|=\left\{\int_{B} g_{n}^{2} d x\right\}^{1 / 2} \rightarrow 0
$$

by Theorem 11.32. Thus characteristic functions of closed sets can be approximated in $\mathscr{L}^{2}$ by continuous functions.

By (39) the same is true for the characteristic function of any measurable set, and hence also for simple measurable functions.

If $f \geq 0$ and $f \in \mathscr{L}^{2}$, let $\left\{s_{n}\right\}$ be a monotonically increasing sequence of simple nonnegative measurable functions such that $s_{n}(x) \rightarrow f(x)$. Since $\left|f-s_{n}\right|^{2} \leq f^{2}$, Theorem $11.32$ shows that $\left\|f-s_{n}\right\| \rightarrow 0$.

The general case follows.

11.39 Definition We say that a sequence of complex functions $\left\{\phi_{n}\right\}$ is an orthonormal set of functions on a measurable space $X$ if

$$
\int_{X} \phi_{n} \Phi_{m} d \mu= \begin{cases}0 & (n \neq m), \\ 1 & (n=m) .\end{cases}
$$

In particular, we must have $\phi_{n} \in \mathscr{L}^{2}(\mu)$. If $f \in \mathscr{L}^{2}(\mu)$ and if

$$
c_{n}=\int_{X} f \Phi_{n} d \mu \quad(n=1,2,3, \ldots)
$$

we write

$$
f \sim \sum_{n=1}^{\infty} c_{n} \phi_{n}
$$

as in Definition $8.10 .$ The definition of a trigonometric Fourier series is extended in the same way to $\mathscr{L}^{2}$ (or even to $\mathscr{L}$ ) on $[-\pi, \pi]$. Theorems $8.11$ and $8.12$ (the Bessel inequality) hold for any $f \in \mathscr{L}^{2}(\mu)$. The proofs are the same, word for word.

We can now prove the Parseval theorem.

\section{$11.40$ Theorem Suppose}

$$
f(x) \sim \sum_{-\infty}^{\infty} c_{n} e^{i n x},
$$

where $f \in \mathscr{L}^{2}$ on $[-\pi, \pi]$. Let $s_{n}$ be the nth partial sum of (99). Then

$$
\begin{aligned}
\lim _{n \rightarrow \infty}\left\|f-s_{n}\right\| &=0, \\
\sum_{-\infty}^{\infty}\left|c_{n}\right|^{2} &=\frac{1}{2 \pi} \int_{-\pi}^{\pi}|f|^{2} d x .
\end{aligned}
$$

Proof Let $\varepsilon>0$ be given. By Theorem 11.38, there is a continuous function $g$ such that

$$
\|f-g\|<\frac{\varepsilon}{2} .
$$

Moreover, it is easy to see that we can arrange it so that $g(\pi)=g(-\pi)$. Then $g$ can be extended to a periodic continuous function. By Theorem $8.16$, there is a trigonometric polynomial $T$, of degree $N$, say, such that

$$
\|g-T\|<\frac{\varepsilon}{2} .
$$

Hence, by Theorem $8.11$ (extended to $\mathscr{L}^{2}$ ), $n \geq N$ implies

$$
\left\|s_{n}-f\right\| \leq\|T-f\|<\varepsilon,
$$

and (100) follows. Equation (101) is deduced from (100) as in the proof of Theorem $8.16 .$

Corollary If $f \in \mathscr{L}^{2}$ on $[-\pi, \pi]$, and if

$$
\int_{-\pi}^{\pi} f(x) e^{-i n x} d x=0 \quad(n=0, \pm 1, \pm 2, \ldots),
$$

then $\|f\|=0$.

Thus if two functions in $\mathscr{L}^{2}$ have the same Fourier series, they differ at most on a set of measure zero. 11.41 Definition Let $f$ and $f_{n} \in \mathscr{L}^{2}(\mu)(n=1,2,3, \ldots)$. We say that $\left\{f_{n}\right\}$ converges to $f$ in $\mathscr{L}^{2}(\mu)$ if $\left\|f_{n}-f\right\| \rightarrow 0$. We say that $\left\{f_{n}\right\}$ is a Cauchy sequence in $\mathscr{L}^{2}(\mu)$ if for every $\varepsilon>0$ there is an integer $N$ such that $n \geq N, m \geq N$ implies $\left\|f_{n}-f_{m}\right\| \leq \varepsilon$.

11.42 Theorem If $\left\{f_{n}\right\}$ is a Cauchy sequence in $\mathscr{L}^{2}(\mu)$, then there exists a function $f \in \mathscr{L}^{2}(\mu)$ such that $\left\{f_{n}\right\}$ converges to $f$ in $\mathscr{L}^{2}(\mu)$.

This says, in other words, that $\mathscr{L}^{2}(\mu)$ is a complete metric space.

Proof Since $\left\{f_{n}\right\}$ is a Cauchy sequence, we san find a sequence $\left\{n_{k}\right\}$, $k=1,2,3, \ldots$, such that

$$
\left\|f_{n_{k}}-f_{n_{k+1}}\right\|<\frac{1}{2^{k}} \quad(k=1,2,3, \ldots) .
$$

Choose a function $g \in \mathscr{L}^{2}(\mu)$. By the Schwarz inequality,

$$
\int_{X}\left|g\left(f_{n_{k}}-f_{n_{k+1}}\right)\right| d \mu \leq \frac{\|g\|}{2^{k}} .
$$

Hence

$$
\sum_{k=1}^{\infty} \int_{X}\left|g\left(f_{n_{k}}-f_{n_{k+1}}\right)\right| d \mu \leq\|g\| .
$$

By Theorem 11.30, we may interchange the summation and integration in (102). It follows that

$$
|g(x)| \sum_{k=1}^{\infty}\left|f_{n_{k}}(x)-f_{n_{k+1}}(x)\right|<+\infty
$$

almost everywhere on $X$. Therefore

$$
\sum_{k=1}^{\infty}\left|f_{n_{k+1}}(x)-f_{n_{k}}(x)\right|<+\infty
$$

almost everywhere on $X$. For if the series in (104) were divergent on a set $E$ of positive measure, we could take $g(x)$ to be nonzero on a subset of $E$ of positive measure, thus obtaining a contradiction to (103).

Since the $k$ th partial sum of the series

$$
\sum_{k=1}^{\infty}\left(f_{n_{k+1}}(x)-f_{n_{k}}(x)\right)
$$

which converges almost everywhere on $X$, is

$$
f_{n_{k+1}}(x)-f_{n_{1}}(x)
$$

we see that the equation

$$
f(x)=\lim _{k \rightarrow \infty} f_{n_{k}}(x)
$$

defines $f(x)$ for almost all $x \in X$, and it does not matter how we define $f(x)$ at the remaining points of $X$.

We shall now show that this function $f$ has the desired properties. Let $\varepsilon>0$ be given, and choose $N$ as indicated in Definition 11.41. If $n_{k}>N$, Fatou's theorem shows that

$$
\left\|f-f_{n_{k}}\right\| \leq \liminf _{i \rightarrow \infty}\left\|f_{n_{i}}-f_{n_{k}}\right\| \leq \varepsilon .
$$

Thus $f-f_{n_{k}} \in \mathscr{L}^{2}(\mu)$, and since $f=\left(f-f_{n_{k}}\right)+f_{n_{k}}$, we see that $f \in \mathscr{L}^{2}(\mu)$. Also, since $\varepsilon$ is arbitrary,

$$
\lim _{k \rightarrow \infty}\left\|f-f_{n_{k}}\right\|=0 .
$$

Finally, the inequality

$$
\left\|f-f_{n}\right\| \leq\left\|f-f_{n_{k}}\right\|+\left\|f_{n_{k}}-f_{n}\right\|
$$

shows that $\left\{f_{n}\right\}$ converges to $f$ in $\mathscr{L}^{2}(\mu)$; for if we take $n$ and $n_{k}$ large enough, each of the two terms on the right of (105) can be made arbitrarily small.

11.43 The Riesz-Fischer theorem Let $\left\{\phi_{n}\right\}$ be orthonormal on $X$. Suppose $\Sigma\left|c_{n}\right|^{2}$ converges, and put $s_{n}=c_{1} \phi_{1}+\cdots+c_{n} \phi_{n}$. Then there exists a function $f \in \mathscr{L}^{2}(\mu)$ such that $\left\{s_{n}\right\}$ converges to $f$ in $\mathscr{L}^{2}(\mu)$, and such that

$$
f \sim \sum_{n=1}^{\infty} c_{n} \phi_{n} .
$$

Proof For $n>m$,

$$
\left\|s_{n}-s_{m}\right\|^{2}=\left|c_{m+1}\right|^{2}+\cdots+\left|c_{n}\right|^{2},
$$

so that $\left\{s_{n}\right\}$ is a Cauchy sequence in $\mathscr{L}^{2}(\mu)$. By Theorem $11.42$, there is a function $f \in \mathscr{L}^{2}(\mu)$ such that

$$
\lim _{n \rightarrow \infty}\left\|f-s_{n}\right\|=0 .
$$

Now, for $n>k$

$$
\int_{X} f \Phi_{k} d \mu-c_{k}=\int_{X} f \Phi_{k} d \mu-\int_{X} s_{n} \bar{\phi}_{k} d \mu
$$

so that

$$
\left|\int_{X} f \phi_{k} d \mu-c_{k}\right| \leq\left\|f-s_{n}\right\| \cdot\left\|\phi_{k}\right\|+\left\|f-s_{n}\right\| .
$$

Letting $n \rightarrow \infty$, we see that

$$
c_{k}=\int_{X} f \Phi_{k} d \mu \quad(k=1,2,3, \ldots)
$$

and the proof is complete.

11.44 Definition An orthonormal set $\left\{\phi_{n}\right\}$ is said to be complete if, for $f \in \mathscr{L}^{2}(\mu)$, the equations

$$
\int_{X} f \phi_{n} d \mu=0 \quad(n=1,2,3, \ldots)
$$

imply that $\|f\|=0$

In the Corollary to Theorem $11.40$ we deduced the completeness of the trigonometric system from the Parseval equation (101). Conversely, the Parseval equation holds for every complete orthonormal set:

11.45 Theorem Let $\left\{\phi_{n}\right\}$ be a complete orthonormal set. If $f \in \mathscr{L}^{2}(\mu)$ and if

then

$$
f \sim \sum_{n=1}^{\infty} c_{n} \phi_{n},
$$

$$
\int_{X}|f|^{2} d \mu=\sum_{n=1}^{\infty}\left|c_{n}\right|^{2}
$$

Proof By the Bessel inequality, $\Sigma\left|c_{n}\right|^{2}$ converges. Putting

$$
s_{n}=c_{1} \phi_{1}+\cdots+c_{n} \phi_{n},
$$

the Riesz-Fischer theorem shows that there is a function $g \in \mathscr{L}^{2}(\mu)$ such that

$$
g \sim \sum_{n=1}^{\infty} c_{n} \phi_{n},
$$

and such that $\left\|g-s_{n}\right\| \rightarrow 0$. Hence $\left\|s_{n}\right\| \rightarrow\|g\|$. Since

$$
\left\|s_{n}\right\|^{2}=\left|c_{1}\right|^{2}+\cdots+\left|c_{n}\right|^{2} \text {, }
$$

we have

$$
\int_{X}|g|^{2} d \mu=\sum_{n=1}^{\infty}\left|c_{n}\right|^{2}
$$

Now (106), (108), and the completeness of $\left\{\phi_{n}\right\}$ show that $\|f-g\|=0$, so that (109) implies (107).

Combining Theorems $11.43$ and $11.45$, we arrive at the very interesting conclusion that every complete orthonormal set induces a 1-1 correspondence between the functions $f \in \mathscr{L}^{2}(\mu)$ (identifying those which are equal almost everywhere) on the one hand and the sequences $\left\{c_{n}\right\}$ for which $\Sigma\left|c_{n}\right|^{2}$ converges, on the other. The representation

$$
f \sim \sum_{n=1}^{\infty} c_{n} \phi_{n},
$$

together with the Parseval equation, shows that $\mathscr{L}^{2}(\mu)$ may be regarded as an infinite-dimensional euclidean space (the so-called "Hilbert space"), in which the point $f$ has coordinates $c_{n}$, and the functions $\phi_{n}$ are the coordinate vectors.

\section{EXERCISES}

1. If $f \geq 0$ and $\int_{E} f d \mu=0$, prove that $f(x)=0$ almost everywhere on $E$. Hint: Let $E_{n}$ be the subset of $E$ on which $f(x)>1 / n$. Write $A=\bigcup E_{n}$. Then $\mu(A)=0$ if and only if $\mu\left(E_{n}\right)=0$ for every $n$.

2. If $\int_{A} f d \mu=0$ for every measurable subset $A$ of a measurable set $E$, then $f(x)=0$ almost everywhere on $E$.

3. If $\left\{f_{n}\right\}$ is a sequence of measurable functions, prove that the set of points $x$ at which $\left\{f_{n}(x)\right\}$ converges is measurable.

4. If $f \in \mathscr{L}(\mu)$ on $E$ and $g$ is bounded and measurable on $E$, then $f g \in \mathscr{L}(\mu)$ on $E$.

5. Put

$$
\begin{aligned}
& g(x)= \begin{cases}0 & \left(0 \leq x \leq \frac{1}{2}\right), \\ 1 & \left(\frac{1}{2}<x \leq 1\right),\end{cases} \\
& f_{2 k}(x)=g(x) \quad(0 \leq x \leq 1) \text {, } \\
& f_{2 k+1}(x)=g(1-x) \quad(0 \leq x \leq 1) \text {. }
\end{aligned}
$$

Show that

$$
\underset{n \rightarrow \infty}{\lim \inf } f_{n}(x)=0 \quad(0 \leq x \leq 1),
$$

but

$$
\int_{0}^{1} f_{n}(x) d x=\frac{1}{2} .
$$

[Compare with (77).] 6. Let

$$
f_{n}(x)= \begin{cases}\frac{1}{n} & (|x| \leq n) \\ 0 & (|x|>n)\end{cases}
$$

Then $f_{n}(x) \rightarrow 0$ uniformly on $R^{1}$, but

$$
\int_{-\infty}^{\infty} f_{n} d x=2 \quad(n=1,2,3, \ldots) .
$$

(We write $\int_{-\infty}^{\infty}$ in place of $\int_{R 1}$.) Thus uniform convergence does not imply dominated convergence in the sense of Theorem 11.32. However, on sets of finite measure, uniformly convergent sequences of bounded functions do satisfy Theorem 11.32.

7. Find a necessary and sufficient condition that $f \in \mathscr{R}(\alpha)$ on $[a, b]$. Hint: Consider Example 11.6(b) and Theorem 11.33.

8. If $f \in \mathscr{R}$ on $[a, b]$ and if $F(x)=\int_{a}^{x} f(t) d t$, prove that $F^{\prime}(x)=f(x)$ almost everywhere on $[a, b]$.

9. Prove that the function $F$ given by (96) is continuous on $[a, b]$.

10. If $\mu(X)<+\infty$ and $f \in \mathscr{L}^{2}(\mu)$ on $X$, prove that $f \in \mathscr{L}(\mu)$ on $X$. If

$$
\mu(X)=+\infty,
$$

this is false. For instance, if

$$
f(x)=\frac{1}{1+|x|},
$$

then $f \in \mathscr{L}^{2}$ on $R^{1}$, but $f \notin \mathscr{L}$ on $R^{1}$.

11. If $f, g \in \mathscr{L}(\mu)$ on $X$, define the distance between $f$ and $g$ by

$$
\int_{x}|f-g| d \mu .
$$

Prove that $\mathscr{L}(\mu)$ is a complete metric space.

12. Suppose

(a) $|f(x, y)| \leq 1$ if $0 \leq x \leq 1,0 \leq y \leq 1$,

(b) for fixed $x, f(x, y)$ is a continuous function of $y$,

(c) for fixed $y, f(x, y)$ is a continuous function of $x$.

Put

$$
g(x)=\int_{0}^{1} f(x, y) d y \quad(0 \leq x \leq 1) .
$$

Is $g$ continuous?

13. Consider the functions

$$
f_{n}(x)=\sin n x \quad(n=1,2,3, \ldots,-\pi \leq x \leq \pi)
$$