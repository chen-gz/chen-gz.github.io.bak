---
title: 2 The Riesz Representation Theorem
date: 2022-10-04
---

## 2.14 Theorem

Let $X$ be a locally compact Hausdorff space, and let $\Lambda$ be a positive linear functional on $C_c(X)$. Then there exists a $\sigma$-algebra $\mathfrak{M}$ in $X$ which contains all Borel sets in $X$, and there exists a unique positive measure $\mu$ on $\mathfrak{M}$ which represents $\Lambda$ in the sense that

(a) $Λ f=\int_X f d μ$ for every $f \in C_c(X)$, <br> and which has the following additional properties:
(b) $\mu(K)<\infty$ for every compact set $K \subset X$.
(c) For every $E \in \mathfrak{M}$, we have

$$
\begin{equation}
\mu(E)=\inf \{\mu(V): E \subset V, V \text { open }\} .
\end{equation}
$$

(d) The relation

$$
\begin{equation}
\mu(E)=\sup \{\mu(K): K \subset E, K \text { compact }\}
\end{equation}
$$

holds for every open set $E$, and for every $E \in \mathfrak{M}$ with $\mu(E)<\infty$.
(e) If $E \in \mathfrak{M}, A \subset E$, and $\mu(E)=0$, then $A \in \mathfrak{M}$.

For the sake of clarity, let us be more explicit about the meaning of the word "positive" in the hypothesis: $\Lambda$ is assumed to be a linear functional on the complex vector space $C_c(X)$, with the additional property that $\Lambda f$ is a nonnegative real number for every $f$ whose range consists of nonnegative real numbers. Briefly, if $f(X) \subset[0, \infty)$ then $\Lambda f \in[0, \infty)$.

Property $(a)$ is of course the one of greatest interest. After we define $\mathfrak{M}$ and $\mu$, (b) to $(d)$ will be established in the course of proving that $\mathfrak{M}$ is a $\sigma$-algebra and that $\mu$ is countably additive. We shall see later (Theorem 2.18) that in "reasonable" spaces $X$ every Borel measure which satisfies $(b)$ also satisfies $(c)$ and $(d)$ and that $(d)$ actually holds for every $E \in \mathfrak{M}$, in those cases. Property $(e)$ merely says that $(X, \mathfrak{M}, \mu)$ is a complete measure space, in the sense of Theorem $1.36{ }_2$

 Throughout the proof of this theorem, the letter $K$ will stand for a compact subset of $X$, and $V$ will denote an open set in $X$.

Let us begin by proving the uniqueness of $\mu$. If $\mu$ satisfies $(c)$ and $(d)$, it is clear that $\mu$ is determined on $\mathfrak{M}$ by its values on compact sets. Hence it suffices to prove that $\mu_1(K)=\mu_2(K)$ for all $K$, whenever $\mu_1$ and $\mu_2$ are measures for which the theorem holds. So, fix $K$ and $\epsilon>0$. By $(b)$ and $(c)$, there exists a $V \supset K$ with $\mu_2(V)<\mu_2(K)+\epsilon$; by Urysohn's lemma, there exists an $f$ so that $K \prec f<V$; hence

$$
\begin{equation}
\begin{aligned}
\mu_1(K) &=\int_X \chi_K d \mu_1 \leq \int_X f d \mu_1=\Lambda f=\int_X f d \mu_2 \\
& \leq \int_X \chi_V d \mu_2=\mu_2(V)<\mu_2(K)+\epsilon
\end{aligned}
\end{equation}
$$

Thus $\mu_1(K) \leq \mu_2(K)$. If we interchange the roles of $\mu_1$ and $\mu_2$, the opposite inequality is obtained, and the uniqueness of $\mu$ is proved.

Incidentally, the above computation shows that $(a)$ forces $(b)$.

#### Construction of $\mu$ and $\mathfrak{M}$

For every open set $V$ in $X$, define

$$
\begin{equation}
\mu(V)=\sup \{\Lambda f: f<V\}
\end{equation}
$$

If $V_1 \subset V_2$, it is clear that (1) implies $\mu\left(V_1\right) \leq \mu\left(V_2\right)$. Hence

$$
\begin{equation}
\mu(E)=\inf \{\mu(V): E \subset V, V \text { open }\},
\end{equation}
$$

if $E$ is an open set, and it is consistent with (1) to define $\mu(E)$ by (2), for every $E \subset X$.

Note that although we have defined $\mu(E)$ for every $E \subset X$, the countable additivity of $\mu$ will be proved only on a certain $\sigma$-algebra $\mathfrak{M}$ in $X$.

Let $\mathfrak{M}_F$ be the class of all $E \subset X$ which satisfy two conditions: $\mu(E)<\infty$, and

$$
\begin{equation}
\mu(E)=\sup \{\mu(K): K \subset E, K \text { compact }\} .
\end{equation}
$$

Finally, let $\mathfrak{M}$ be the class of all $E \subset X$ such that $E \cap K \in \mathfrak{M}_F$ for every compact $K$.

#### Proof that $\mu$ and $\mathfrak{M}$ have the required properties

It is evident that $\mu$ is monotone, i.e., that $\mu(A) \leq \mu(B)$ if $A \subset B$ and that $\mu(E)=0$ implies $E \in \mathfrak{M}_F$ and $E \in \mathfrak{M}$. Thus (e) holds, and so does (c), by definition.

Since the proof of the other assertions is rather long, it will be convenient to divide it into several steps.

Observe that the positivity of $\Lambda$ implies that $\Lambda$ is monotone: $f \leq g$ implies $\Lambda f \leq \Lambda g$. This is clear, since $\Lambda g=\Lambda f+\Lambda(g-f)$ and $g-f \geq 0$. This monotonicity will be used in Steps II and $\mathrm{X}$.

#### STEP I If $E_1, E_2, E_3, \ldots$ are arbitrary subsets of $X$, then

$$
\begin{equation}
\mu\left(\bigcup_{i=1}^{\infty} E_i\right) \leq \sum_{i=1}^{\infty} \mu\left(E_i\right)
\end{equation}
$$

Proof We first show that

$$
\begin{equation}
\mu\left(V_1 \cup V_2\right) \leq \mu\left(V_1\right)+\mu\left(V_2\right)
\end{equation}
$$

if $V_1$ and $V_2$ are open. Choose $g \prec V_1 \cup V_2$. By Theorem $2.13$ there are functions $h_1$ and $h_2$ such that $h_i<V_i$ and $h_1(x)+h_2(x)=1$ for all $x$ in the support of $g$. Hence $h_i g \prec V_i, g=h_1 g+h_2 g$, and so

$$
\begin{equation}
\Lambda g=\Lambda\left(h_1 g\right)+\Lambda\left(h_2 g\right) \leq \mu\left(V_1\right)+\mu\left(V_2\right)
\end{equation}
$$

Since (6) holds for every $g<V_1 \cup V_2$, (5) follows.

If $\mu\left(E_i\right)=\infty$ for some $i$, then (4) is trivially true. Suppose therefore that $\mu\left(E_i\right)<\infty$ for every $i$. Choose $\epsilon>0$. By (2) there are open sets $V_i \supset E_i$ such that

$$
\begin{equation}
\mu\left(V_i\right)<\mu\left(E_i\right)+2^{-i} \epsilon \quad(i=1,2,3, \ldots)
\end{equation}
$$


Put $V=\bigcup_1^{\infty} V_i$, and choose $f \prec V$. Since $f$ has compact support, we see that $f \prec V_1 \cup \cdots \cup V_n$ for some $n$. Applying induction to (5), we therefore obtain

$$
\begin{equation}
\Lambda f \leq \mu\left(V_1 \cup \cdots \cup V_n\right) \leq \mu\left(V_1\right)+\cdots+\mu\left(V_n\right) \leq \sum_{i=1}^{\infty} \mu\left(E_i\right)+\epsilon .
\end{equation}
$$

Since this holds for every $f \prec V$, and since $\bigcup E_i \subset V$, it follows that

$$
\begin{equation}
\mu\left(\bigcup_{i=1}^{\infty} E_i\right) \leq \mu(V) \leq \sum_{i=1}^{\infty} \mu\left(E_i\right)+\epsilon,
\end{equation}
$$

which proves (4), since $\epsilon$ was arbitrary.

#### STEP II If $K$ is compact, then $K \in \mathfrak{M}_F$ and

$$
\begin{equation}
\mu(K)=\inf \{\Lambda f: K \prec f\} .
\end{equation}
$$

This implies assertion $(b)$ of the theorem.

Proof If $K \prec f$ and $0<\alpha<1$, let $V_\alpha=\{x: f(x)>\alpha\}$. Then $K \subset V_\alpha$, and $\alpha g \leq f$ whenever $g \prec V_\alpha$. Hence

$$
\begin{equation}
\mu(K) \leq \mu\left(V_\alpha\right)=\sup \left\{\Lambda g: g \prec V_\alpha\right\} \leq \alpha^{-1} \Lambda f .
\end{equation}
$$

Let $\alpha \rightarrow 1$, to conclude that

$$
\begin{equation}
\mu(K) \leq \Lambda f \text {. }
\end{equation}
$$

Thus $\mu(K)<\infty$. Since $K$ evidently satisfies (3), $K \in \mathfrak{M}_F$.

If $\epsilon>0$, there exists $V \supset K$ with $\mu(V)<\mu(K)+\epsilon$. By Urysohn's lemma, $K \prec f \prec V$ for some $f$. Thus

$$
\begin{equation}
\Lambda f \leq \mu(V)<\mu(K)+\epsilon,
\end{equation}
$$

which, combined with (8), gives (7).
STEP III Every open set satisfies (3). Hence $\mathfrak{M}_F$ contains every open set $V$ with $\mu(V)<\infty$.

Proof Let $\alpha$ be a real number such that $\alpha<\mu(V)$. There exists an $f<V$ with $\alpha<\Lambda f$. If $W$ is any open set which contains the support $K$ of $f$, then $f \prec W$, hence $\Lambda f \leq \mu(W)$. Thus $\Lambda f \leq \mu(K)$. This exhibits a compact $K \subset V$ with $\alpha<\mu(K)$, so that (3) holds for $V$.

STEP IV Suppose $E=\bigcup_{i=1}^{\infty} E_i$, where $E_1, E_2, E_3, \ldots$ are pairwise disjoint members of $\mathfrak{M}_F$. Then

$$
\begin{equation}
\mu(E)=\sum_{i=1}^{\infty} \mu\left(E_i\right) .
\end{equation}
$$

If, in addition, $\mu(E)<\infty$, then also $E \in \mathfrak{M}_F$.

Proof We first show that
$$
\mu\left(K_1 \cup K_2\right)=\mu\left(K_1\right)+\mu\left(K_2\right)
$$
if $K_1$ and $K_2$ are disjoint compact sets. Choose $\epsilon>0$. By Urysohn's lemma, there exists $f \in C_c(X)$ such that $f(x)=1$ on $K_1, f(x)=0$ on $K_2$, and $0 \leq f \leq 1$. By Step II there exists $g$ such that
$$
K_1 \cup K_2 \prec g \text { and } \Lambda g<\mu\left(K_1 \cup K_2\right)+\epsilon .
$$
Note that $K_1 \prec f g$ and $K_2 \prec(1-f) g$. Since $\Lambda$ is linear, it follows from (8) that
$$
\mu\left(K_1\right)+\mu\left(K_2\right) \leq \Lambda(f g)+\Lambda(g-f g)=\Lambda g<\mu\left(K_1 \cup K_2\right)+\epsilon .
$$
Since $\epsilon$ was arbitrary, (10) follows now from Step I.
If $\mu(E)=\infty$, (9) follows from Step I. Assume therefore that $\mu(E)<\infty$, and choose $\epsilon>0$. Since $E_i \in \mathfrak{M}_F$, there are compact sets $H_i \subset E_i$ with
$$
\mu\left(H_i\right)>\mu\left(E_i\right)-2^{-i} \epsilon \quad(i=1,2,3, \ldots) .
$$
Putting $K_n=H_1 \cup \cdots \cup H_n$ and using induction on (10), we obtain
$$
\mu(E) \geq \mu\left(K_n\right)=\sum_{i=1}^n \mu\left(H_i\right)>\sum_{i=1}^n \mu\left(E_i\right)-\epsilon .
$$
Since (12) holds for every $n$ and every $\epsilon>0$, the left side of (9) is not smaller than the right side, and so (9) follows from Step I.
But if $\mu(E)<\infty$ and $\epsilon>0$, (9) shows that
$$
\mu(E) \leq \sum_{i=1}^N \mu\left(E_i\right)+\epsilon
$$
for some $N$. By (12), it follows that $\mu(E) \leq \mu\left(K_N\right)+2 \epsilon$, and this shows that $E$ satisfies (3); hence $E \in \mathfrak{M}_F$.

STEP $\vee$ If $E \in \mathfrak{M}_F$ and $\epsilon>0$, there is a compact $K$ and an open $V$ such that $K \subset E \subset V$ and $\mu(V-K)<\epsilon$.
Proof Our definitions show that there exist $K \subset E$ and $V \supset E$ so that
$$
\mu(V)-\frac{\epsilon}{2}<\mu(E)<\mu(K)+\frac{\epsilon}{2} .
$$
Since $V-K$ is open, $V-K \in \mathfrak{M}_F$, by Step III. Hence Step IV implies that
$$
\mu(K)+\mu(V-K)=\mu(V)<\mu(K)+\epsilon .
$$
STEP VI If $A \in \mathfrak{M}_F$ and $B \in \mathfrak{M}_F$, then $A-B, A \cup B$, and $A \cap B$ belong to $\mathfrak{M}_F$.

PROOF If $\epsilon>0$, Step $\mathrm{V}$ shows that there are sets $K_i$ and $V_i$ such that $K_1 \subset A \subset V_1, K_2 \subset B \subset V_2$, and $\mu\left(V_i-K_i\right)<\epsilon$, for $i=1,2$. Since
$$
A-B \subset V_1-K_2 \subset\left(V_1-K_1\right) \cup\left(K_1-V_2\right) \cup\left(V_2-K_2\right),
$$
Step I shows that
$$
\mu(A-B) \leq \epsilon+\mu\left(K_1-V_2\right)+\epsilon .
$$
Since $K_1-V_2$ is a compact subset of $A-B$, (14) shows that $A-B$ satisfies (3), so that $A-B \in \mathfrak{M}_F$.

Since $A \cup B=(A-B) \cup B$, an application of Step IV shows that $A \cup B \in \mathfrak{M}_F$. Since $A \cap B=A-(A-B)$, we also have $A \cap B \in \mathfrak{M}_F$. I///
STEP VII $\mathfrak{M}$ is a $\sigma$-algebra in $X$ which contains all Borel sets.
PROOF Let $K$ be an arbitrary compact set in $X$.
If $A \in \mathfrak{M}$, then $A^c \cap K=K-(A \cap K)$, so that $A^c \cap K$ is a difference of two members of $\mathscr{M}_F$. Hence $A^c \cap K \in \mathfrak{M}_F$, and we conclude: $A \in \mathfrak{M}$ implies $A^c \in \mathfrak{M}$.

Next, suppose $A=\bigcup_1^{\infty} A_i$, where each $A_i \in \mathfrak{M}$. Put $B_1=A_1 \cap K$, and
$$
B_n=\left(A_n \cap K\right)-\left(B_1 \cup \cdots \cup B_{n-1}\right) \quad(n=2,3,4, \ldots) .
$$
Then $\left\{B_n\right\}$ is a disjoint sequence of members of $\mathfrak{M}_F$, by Step VI, and $A \cap K=\bigcup_1^{\infty} B_n$. It follows from Step IV that $A \cap K \in \mathfrak{M}_F$. Hence $A \in \mathfrak{M}$.
Finally, if $C$ is closed, then $C \cap K$ is compact, hence $C \cap K \in \mathfrak{M}_F$, so $C \in \mathfrak{M}$. In particular, $X \in \mathfrak{M}$.

We have thus proved that $\mathfrak{M}$ is a $\sigma$-algebra in $X$ which contains all closed subsets of $X$. Hence $\mathfrak{M}$ contains all Borel sets in $X$.
STEP VIII $\mathfrak{M}_F$ consists of precisely those sets $E \in \mathfrak{M}$ for which $\mu(E)<\infty$.
This implies assertion $(d)$ of the theorem.
Proof If $E \in \mathfrak{M}_F$, Steps II and VI imply that $E \cap K \in \mathfrak{M}_F$ for every compact $K$, hence $E \in \mathfrak{M}$.

Conversely, suppose $E \in \mathfrak{M}$ and $\mu(E)<\infty$, and choose $\epsilon>0$. There is an open set $V \supset E$ with $\mu(V)<\infty$; by III and V, there is a compact $K \subset V$ with $\mu(V-K)<\epsilon$. Since $E \cap K \in \mathfrak{M}_F$, there is a compact set $H \subset E \cap K$ with
$$
\mu(E \cap K)<\mu(H)+\epsilon .
$$
Since $E \subset(E \cap K) \cup(V-K)$, it follows that
$$
\mu(E) \leq \mu(E \cap K)+\mu(V-K)<\mu(H)+2 \epsilon,
$$
which implies that $E \in \mathfrak{M}_F$.
STEP IX $\mu$ is a measure on $\mathfrak{M}$.

Proof The countable additivity of $\mu$ on $\mathfrak{M}$ follows immediately from Steps IV and VIII.
STEP X For every $f \in C_c(X), \Lambda f=\int_X f d \mu$.
This proves $(a)$, and completes the theorem.
Proof Clearly, it is enough to prove this for real $f$. Also, it is enough to prove the inequality
$$
\Lambda f \leq \int_{\boldsymbol{X}} f d \mu
$$
for every real $f \in C_c(X)$. For once (16) is established, the linearity of $\Lambda$ shows that
$$
-\Lambda f=\Lambda(-f) \leq \int_X(-f) d \mu=-\int_X f d \mu
$$
which, together with (16), shows that equality holds in (16).
Let $K$ be the support of a real $f \in C_c(X)$, let $[a, b]$ be an interval which contains the range of $f$ (note the Corollary to Theorem 2.10), choose $\epsilon>0$, and choose $y_i$, for $i=0,1, \ldots, n$, so that $y_i-y_{i-1}<\epsilon$ and
$$
y_0<a<y_1<\cdots<y_n=b .
$$
Put
$$
E_i=\left\{x: y_{i-1}<f(x) \leq y_i\right\} \cap K \quad(i=1, \ldots, n) .
$$
Since $f$ is continuous, $f$ is Borel measurable, and the sets $E_i$ are therefore disjoint Borel sets whose union is $K$. There are open sets $V_i \supset E_i$ such that
$$
\mu\left(V_i\right)<\mu\left(E_i\right)+\frac{\epsilon}{n} \quad(i=1, \ldots, n)
$$
and such that $f(x)<y_i+\epsilon$ for all $x \in V_i$. By Theorem $2.13$, there are functions $h_i \prec V_i$ such that $\sum h_i=1$ on $K$. Hence $f=\sum h_i f$, and Step II shows that
$$
\mu(K) \leq \Lambda\left(\sum h_i\right)=\sum \Lambda h_i .
$$

Since $h_i f \leq\left(y_i+\epsilon\right) h_i$, and since $y_i-\epsilon<f(x)$ on $E_i$, we have
$$
\begin{aligned}
\Lambda f &=\sum_{i=1}^n \Lambda\left(h_i f\right) \leq \sum_{i=1}^n\left(y_i+\epsilon\right) \Lambda h_i \\
&=\sum_{i=1}^n\left(|a|+y_i+\epsilon\right) \Lambda h_i-|a| \sum_{i=1}^n \Lambda h_i \\
& \leq \sum_{i=1}^n\left(|a|+y_i+\epsilon\right)\left[\mu\left(E_i\right)+\epsilon / n\right]-|a| \mu(K) \\
&=\sum_{i=1}^n\left(y_i-\epsilon\right) \mu\left(E_i\right)+2 \epsilon \mu(K)+\frac{\epsilon}{n} \sum_{i=1}^n\left(|a|+y_i+\epsilon\right) \\
& \leq \int_X f d \mu+\epsilon[2 \mu(K)+|a|+b+\epsilon]
\end{aligned}
$$
Since $\epsilon$ was arbitrary, (16) is established, and the proof of the theorem is complete.

