---
title: 6 SIMPLEXEs AND CHAINS
date: 2022-08-16
---


**10.26 Affine simplexes** A mapping $\mathrm{f}$ that carries a vector space $X$ into a vector space $Y$ is said to be affine if $\mathbf{f}-\mathbf{f}(0)$ is linear. In other words, the requirement is that

$$
\begin{equation}
\mathbf{f}(\mathbf{x})=\mathbf{f}(\mathbf{0})+A \mathbf{x}
\label{eq:73}
\end{equation}
$$

for some $A \in L(X, Y)$.

An affine mapping of $R^{k}$ into $R^{n}$ is thus determined if we know $\mathbf{f}(0)$ and $\mathbf{f}\left(\mathbf{e}_{i}\right)$ for $1 \leq i \leq k$; as usual, $\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{k}\right\}$ is the standard basis of $R^{k}$.

We define the standard simplex $Q^{k}$ to be the set of all $\mathbf{u} \in R^{k}$ of the form

$$
\begin{equation}
\mathbf{u}=\sum_{i=1}^{k} \alpha_{i} \mathbf{e}_{i}
\label{eq:74}
\end{equation}
$$


such that $\alpha_{i} \geq 0$ for $i=1, \ldots, k$ and $\Sigma \alpha_{i} \leq 1$.

Assume now that $\mathbf{p}_{0}, \mathbf{p}_{1}, \ldots, \mathbf{p}_{k}$ are points of $R^{n}$. The oriented affine $k$-simplex

$$
\begin{equation}
\sigma=\left[\mathbf{p}_{0}, \mathbf{p}_{1}, \ldots, \mathbf{p}_{k}\right]
\label{eq:75}
\end{equation}
$$


is defined to be the $k$-surface in $R^{n}$ with parameter domain $Q^{k}$ which is given by the affine mapping

$$
\begin{equation}
\sigma\left(\alpha_{1} \mathbf{e}_{1}+\cdots+\alpha_{k} \mathbf{e}_{k}\right)=\mathbf{p}_{0}+\sum_{i=1}^{k} \alpha_{i}\left(\mathbf{p}_{i}-\mathbf{p}_{0}\right) \text {. }
\label{eq:76}
\end{equation}
$$

Note that $\sigma$ is characterized by

$$
\begin{equation}
\sigma(0)=\mathbf{p}_{0}, \quad \sigma\left(\mathbf{e}_{i}\right)=\mathbf{p}_{i} \quad \text { (for } 1 \leq i \leq k \text { ), }
\label{eq:77}
\end{equation}
$$

and that

$$
\begin{equation}
\sigma(\mathbf{u})=\mathbf{p}_{0}+A \mathbf{u} \quad\left(\mathbf{u} \in Q^{k}\right)
\label{eq:78}
\end{equation}
$$


where $A \in L\left(R^{k}, R^{n}\right)$ and $A \mathbf{e}_{i}=\mathbf{p}_{i}-\mathbf{p}_{0}$ for $1 \leq i \leq k$. 

We call $\sigma$ oriented to emphasize that the ordering of the vertices $\mathbf{p}_{0}, \ldots, \mathbf{p}_{k}$ is taken into account. If

$$
\begin{equation}
\bar{\sigma}=\left[p_{i_{0}}, p_{i_{1}}, \ldots, p_{i_{k}}\right]
\label{eq:79}
\end{equation}
$$


where $\left\{i_{0}, i_{1}, \ldots, i_{k}\right\}$ is a permutation of the ordered set $\{0,1, \ldots, k\}$, we adopt the notation

$$
\begin{equation}
\bar{\sigma}=s\left(i_{0}, i_{1}, \ldots, i_{k}\right) \sigma,
$$
\label{eq:80}
\end{equation}



where $s$ is the function defined in Definition 9.33. Thus $\bar{\sigma}=\pm \sigma$, depending on whether $s=1$ or $s=-1$. Strictly speaking, having adopted (75) and (76) as the definition of $\sigma$, we should not write $\bar{\sigma}=\sigma$ unless $i_{0}=0, \ldots, i_{k}=k$, even if $s\left(i_{0}, \ldots, i_{k}\right)=1$; what we have here is an equivalence relation, not an equality. However, for our purposes the notation is justified by Theorem 10.27.

If $\bar{\sigma}=\varepsilon \sigma$ (using the above convention) and if $\varepsilon=1$, we say that $\bar{\sigma}$ and $\sigma$ have the same orientation; if $\varepsilon=-1, \bar{\sigma}$ and $\sigma$ are said to have opposite orientations. Note that we have not defined what we mean by the "orientation of a simplex." What we have defined is a relation between pairs of simplexes having the same set of vertices, the relation being that of "having the same orientation."

There is, however, one situation where the orientation of a simplex can be defined in a natural way. This happens when $n=k$ and when the vectors $\mathbf{p}_{i}-\mathbf{p}_{0}(1 \leq i \leq k)$ are independent. In that case, the linear transformation $A$ that appears in (78) is invertible, and its determinant (which is the same as the Jacobian of $\sigma$ ) is not 0 . Then $\sigma$ is said to be positively (or negatively) oriented if $\operatorname{det} A$ is positive (or negative). In particular, the simplex $\left[0, \mathbf{e}_{1}, \ldots, \mathbf{e}_{k}\right]$ in $R^{k}$, given by the identity mapping, has positive orientation.


So far we have assumed that $k \geq 1$. An oriented 0 -simplex is defined to be a point with a sign attached. We write $\sigma=+\mathbf{p}_{0}$ or $\sigma=-\mathbf{p}_{0}$. If $\sigma=\varepsilon \mathbf{p}_{0}$ $(\varepsilon=\pm 1)$ and if $f$ is a 0 -form (i.e., a real function), we define

$$
\int_{\sigma} f=\varepsilon f\left(p_{0}\right)
$$



**10.27 Theorem** If $\sigma$ is an oriented rectilinear $k$-simplex in an open set $E \subset R^{n}$ and if $\bar{\sigma}=\varepsilon \sigma$ then

$$
\begin{equation}
\int_{\bar{\sigma}} \omega=\varepsilon \int_{\sigma} \omega
\label{eq:81}
\end{equation}
$$

for every $k$-form $\omega$ in $E$.

Proof For $k=0$, (81) follows from the preceding definition. So we assume $k \geq 1$ and assume that $\sigma$ is given by (75). Suppose $1 \leq j \leq k$, and suppose $\bar{\sigma}$ is obtained from $\sigma$ by interchanging $\mathbf{p}_{0}$ and $\mathbf{p}_{j}$. Then $\varepsilon=-1$, and

$$
\bar{\sigma}(\mathbf{u})=\mathbf{p}_{j}+B \mathbf{u} \quad\left(\mathbf{u} \in Q^{k}\right),
$$

where $B$ is the linear mapping of $R^{k}$ into $R^{n}$ defined by $B e_{j}=\mathbf{p}_{0}-\mathbf{p}_{j}$, $B \mathbf{e}_{i}=\mathbf{p}_{i}-\mathbf{p}_{j}$ if $i \neq j$. If we write $A \mathbf{e}_{i}=\mathbf{x}_{i}(1 \leq i \leq k)$, where $A$ is given by (78), the column vectors of $B$ (that is, the vectors $B e_{i}$ ) are

$$
\mathbf{x}_{1}-\mathbf{x}_{j}, \ldots, \mathbf{x}_{j-1}-\mathbf{x}_{j},-\mathbf{x}_{j}, \mathbf{x}_{j+1}-\mathbf{x}_{j}, \ldots, \mathbf{x}_{k}-\mathbf{x}_{j} \text {. }
$$

If we subtract the $j$ th column from each of the others, none of the determinants in (35) are affected, and we obtain columns $\mathbf{x}_{1}, \ldots, \mathbf{x}_{j-1},-\mathbf{x}_{j}$, $\mathbf{x}_{j+1}, \ldots, \mathbf{x}_{k}$. These differ from those of $A$ only in the sign of the $j$ th column. Hence (81) holds for this case.

Suppose next that $0<i<j \leq k$ and that $\bar{\sigma}$ is obtained from $\sigma$ by interchanging $\mathbf{p}_{i}$ and $\mathbf{p}_{j}$. Then $\bar{\sigma}(\mathbf{u})=\mathbf{p}_{0}+C \mathbf{u}$, where $C$ has the same columns as $A$, except that the $i$ th and $j$ th columns have been interchanged. This again implies that (81) holds, since $\varepsilon=-1$.

The general case follows, since every permutation of $\{0,1, \ldots, k\}$ is a composition of the special cases we have just dealt with.

**10.28 Affine chains** An affine $k$-chain $\Gamma$ in an open set $E \subset R^{n}$ is a collection of finitely many oriented affine $k$-simplexes $\sigma_{1}, \ldots, \sigma_{r}$ in $E$. These need not be distinct; a simplex may thus occur in $\Gamma$ with a certain multiplicity.

If $\Gamma$ is as above, and if $\omega$ is a $k$-form in $E$, we define

$$
\begin{equation}
\int_{\Gamma} \omega=\sum_{i=1}^{r} \int_{\sigma_{i}} \omega .
\label{eq:82}
\end{equation}
$$

We may view a $k$-surface $\Phi$ in $E$ as a function whose domain is the collection of all $k$-forms in $E$ and which assigns the number $\int_{\Phi} \omega$ to $\omega$. Since realvalued functions can be added (as in Definition 4.3), this suggests the use of the notation

$$
\begin{equation}
\Gamma=\sigma_{1}+\cdots+\sigma_{r}
\label{eq:83}
\end{equation}
$$

or, more compactly,

$$
\begin{equation}
\Gamma=\sum_{i=1}^{r} \sigma_{i}
\label{eq:84}
\end{equation}
$$

to state the fact that (82) holds for every $k$-form $\omega$ in $E$.

To avoid misunderstanding, we point out explicitly that the notations introduced by (83) and (80) have to be handled with care. The point is that every oriented affine $k$-simplex $\sigma$ in $R^{n}$ is a function in two ways, with different domains and different ranges, and that therefore two entirely different operations of addition are possible. Originally, $\sigma$ was defined as an $R^{n}$-valued function with domain $Q^{k}$; accordingly, $\sigma_{1}+\sigma_{2}$ could be interpreted to be the function $\sigma$ that assigns the vector $\sigma_{1}(\mathbf{u})+\sigma_{2}(\mathbf{u})$ to every $\mathbf{u} \in Q^{k}$; note that $\sigma$ is then again an oriented affine $k$-simplex in $R^{n} !$ This is not what is meant by (83).

For example, if $\sigma_{2}=-\sigma_{1}$ as in (80) (that is to say, if $\sigma_{1}$ and $\sigma_{2}$ have the same set of vertices but are oppositely oriented) and if $\Gamma=\sigma_{1}+\sigma_{2}$, then $\int_{\Gamma} \omega=0$ for all $\omega$, and we may express this by writing $\Gamma=0$ or $\sigma_{1}+\sigma_{2}=0$. This does not mean that $\sigma_{1}(\mathbf{u})+\sigma_{2}(\mathbf{u})$ is the null vector of $R^{n}$.



**10.29 Boundaries** For $k \geq 1$, the boundary of the oriented affine $k$-simplex

$$
\sigma=\left[\mathbf{p}_{0}, \mathbf{p}_{1}, \ldots, \mathbf{p}_{k}\right]
$$

is defined to be the affine $(k-1)$-chain

$$
\partial \sigma=\sum_{j=0}^{k}(-1)^{j}\left[\mathbf{p}_{0}, \ldots, \mathbf{p}_{j-1}, \mathbf{p}_{j+1}, \ldots, \mathbf{p}_{k}\right] .
$$

For example, if $\sigma=\left[\mathbf{p}_{0}, \mathbf{p}_{1}, \mathbf{p}_{2}\right]$, then

$$
\partial \sigma=\left[\mathbf{p}_{1}, \mathbf{p}_{2}\right]-\left[\mathbf{p}_{0}, \mathbf{p}_{2}\right]+\left[\mathbf{p}_{0}, \mathbf{p}_{1}\right]=\left[\mathbf{p}_{0}, \mathbf{p}_{1}\right]+\left[\mathbf{p}_{1}, \mathbf{p}_{2}\right]+\left[\mathbf{p}_{2}, \mathbf{p}_{0}\right]
$$

which coincides with the usual notion of the oriented boundary of a triangle.

For $1 \leq j \leq k$, observe that the simplex $\sigma_{j}=\left[\mathbf{p}_{0}, \ldots, \mathbf{p}_{j-1}, \mathbf{p}_{j+1}, \ldots, \mathbf{p}_{k}\right]$ which occurs in (85) has $Q^{k-1}$ as its parameter domain and that it is defined by

$$
\sigma_{j}(\mathbf{u})=\mathbf{p}_{0}+B \mathbf{u} \quad\left(\mathbf{u} \in Q^{k-1}\right),
$$

where $B$ is the linear mapping from $R^{k-1}$ to $R^{n}$ determined by

$$
\begin{array}{ll}
\left.B \mathbf{e}_{i}=\mathbf{p}_{i}-\mathbf{p}_{0} \quad \text { (if } \quad 1 \leq i \leq j-1\right
\left.B \mathbf{e}_{i}=\mathbf{p}_{i+1}-\mathbf{p}_{0} \quad \text { (if } j \leq i \leq k-1\right) .
\end{array}
$$

The simplex

$$
\sigma_{0}=\left[\mathbf{p}_{1}, \mathbf{p}_{2}, \ldots, \mathbf{p}_{k}\right] \text {, }
$$

which also occurs in (85), is given by the mapping

$$
\sigma_{0}(\mathbf{u})=\mathbf{p}_{1}+B \mathbf{u},
$$

where $B \mathbf{e}_{i}=\mathbf{p}_{i+1}-\mathbf{p}_{1}$ for $1 \leq i \leq k-1$.

**10.30 Differentiable simplexes and chains** Let $T$ be a $\mathscr{C}^{\prime \prime}$-mapping of an open set $E \subset R^{n}$ into an open set $V \subset R^{m} ; T$ need not be one-to-one. If $\sigma$ is an oriented affine $k$-simplex in $E$, then the composite mapping $\Phi=T \circ \sigma$ (which we shall sometimes write in the simpler form $T \sigma$ ) is a $k$-surface in $V$, with parameter domain $Q^{k}$. We call $\Phi$ an oriented $k$-simplex of class $\mathscr{C}^{\prime \prime}$. 

A finite collection $\Psi$ of oriented $k$-simplexes $\Phi_{1}, \ldots, \Phi_{r}$ of class $\mathscr{C}^{\prime \prime}$ in $V$ is called a $k$-chain of class $\mathscr{G}^{\prime \prime}$ in $V$. If $\omega$ is a $k$-form in $V$, we define

$$
\begin{equation}
\int_{\Psi} \omega=\sum_{i=1}^{r} \int_{\Phi i} \omega
\label{eq:87}
\\end{equation}
$$

and use the corresponding notation $\Psi=\Sigma \Phi_{i}$.

If $\Gamma=\Sigma \sigma_{i}$ is an affine chain and if $\Phi_{i}=T \circ \sigma_{i}$, we also write $\Psi=T \circ \Gamma$, or

$$
\begin{equation}
T\left(\sum \sigma_{i}\right)=\sum T \sigma_{i} .
\label{eq:88}
\end{equation}
$$

The boundary $\partial \Phi$ of the oriented $k$-simplex $\Phi=T \circ \sigma$ is defined to be the $(k-1)$ chain

$$
\begin{equation}
\partial \Phi=T(\partial \sigma) .
\label{eq:89}
\end{equation}
$$

In justification of (89), observe that if $T$ is affine, then $\Phi=T \circ \sigma$ is an oriented affine $k$-simplex, in which case (89) is not a matter of definition, but is seen to be a consequence of (85). Thus (89) generalizes this special case.

It is immediate that $\partial \Phi$ is of class $\mathscr{C}^{\prime \prime}$ if this is true of $\Phi$.

Finally, we define the boundary $\partial \Psi$ of the $k$-chain $\Psi=\Sigma \Phi_{i}$ to be the $(k-1)$ chain

$$
\begin{equation}
\partial \Psi=\sum \partial \Phi_{i}
\label{eq:90}
\end{equation}
$$

**10.31 Positively oriented boundaries** So far we have associated boundaries to chains, not to subsets of $R^{n}$. This notion of boundary is exactly the one that is most suitable for the statement and proof of Stokes' theorem. However, in applications, especially in $R^{2}$ or $R^{3}$, it is customary and convenient to talk about "oriented boundaries" of certain sets as well. We shall now describe this briefly.

Let $Q^{n}$ be the standard simplex in $R^{n}$, let $\sigma_{0}$ be the identity mapping with domain $Q^{n}$. As we saw in Sec. 10.26, $\sigma_{0}$ may be regarded as a positively oriented $n$-simplex in $R^{n}$. Its boundary $\partial \sigma_{0}$ is an affine $(n-1)$-chain. This chain is called the positively oriented boundary of the set $Q^{n}$.

For example, the positively oriented boundary of $Q^{3}$ is

$$
\left[\mathbf{e}_{1}, \mathbf{e}_{2}, \mathbf{e}_{3}\right]-\left[0, \mathbf{e}_{2}, \mathbf{e}_{3}\right]+\left[0, \mathbf{e}_{1}, \mathbf{e}_{3}\right]-\left[0, \mathbf{e}_{1}, \mathbf{e}_{2}\right] \text {. }
$$

Now let $T$ be a 1-1 mapping of $Q^{n}$ into $R^{n}$, of class $\mathscr{C}^{\prime \prime}$, whose Jacobian is positive (at least in the interior of $Q^{n}$ ). Let $E=T\left(Q^{n}\right)$. By the inverse function theorem, $E$ is the closure of an open subset of $R^{n}$. We define the positively oriented boundary of the set $E$ to be the $(n-1)$-chain

$$
\partial T=T\left(\partial \sigma_{0}\right),
$$

and we may denote this $(n-1)$-chain by $\partial E$. An obvious question occurs here: If $E=T_{1}\left(Q^{n}\right)=T_{2}\left(Q^{n}\right)$, and if both $T_{1}$ and $T_{2}$ have positive Jacobians, is it true that $\partial T_{1}=\partial T_{2}$ ? That is to say, does the equality

$$
\int_{\partial T_{1}} \omega=\int_{\partial T_{2}} \omega
$$

hold for every $(n-1)$-form $\omega$ ? The answer is yes, but we shall omit the proof. (To see an example, compare the end of this section with Exercise 17.)

One can go further. Let

$$
\Omega=E_{1} \cup \cdots \cup E_{r},
$$

where $E_{i}=T_{i}\left(Q^{n}\right)$, each $T_{i}$ has the properties that $T$ had above, and the interiors of the sets $E_{i}$ are pairwise disjoint. Then the $(n-1)$-chain

$$
\partial T_{1}+\cdots+\partial T_{r}=\partial \Omega
$$

is called the positively oriented boundary of $\Omega$. where

For example, the unit square $I^{2}$ in $R^{2}$ is the union of $\sigma_{1}\left(Q^{2}\right)$ and $\sigma_{2}\left(Q^{2}\right)$,

$$
\sigma_{1}(\mathbf{u})=\mathbf{u}, \quad \sigma_{2}(\mathbf{u})=\mathbf{e}_{1}+\mathbf{e}_{2}-\mathbf{u} .
$$

Both $\sigma_{1}$ and $\sigma_{2}$ have Jacobian $1>0$. Since

$$
\sigma_{1}=\left[\mathbf{0}, \mathbf{e}_{1}, \mathbf{e}_{2}\right], \quad \sigma_{2}=\left[\mathbf{e}_{1}+\mathbf{e}_{2}, \mathbf{e}_{2}, \mathbf{e}_{1}\right]
$$

we have

$$
\begin{aligned}
&\partial \sigma_{1}=\left[\mathbf{e}_{1}, \mathbf{e}_{2}\right]-\left[\mathbf{0}, \mathbf{e}_{2}\right]+\left[\mathbf{0}, \mathbf{e}_{1}\right] \\
&\partial \sigma_{2}=\left[\mathbf{e}_{2}, \mathbf{e}_{1}\right]-\left[\mathbf{e}_{1}+\mathbf{e}_{2}, \mathbf{e}_{1}\right]+\left[\mathbf{e}_{1}+\mathbf{e}_{2}, \mathbf{e}_{2}\right]
\end{aligned}
$$

The sum of these two boundaries is

$$
\partial I^{2}=\left[\mathbf{0}, \mathbf{e}_{1}\right]+\left[\mathbf{e}_{1}, \mathbf{e}_{1}+\mathbf{e}_{2}\right]+\left[\mathbf{e}_{1}+\mathbf{e}_{2}, \mathbf{e}_{2}\right]+\left[\mathbf{e}_{2}, 0\right]
$$

the positively oriented boundary of $I^{2}$. Note that $\left[\mathbf{e}_{1}, \mathbf{e}_{2}\right]$ canceled $\left[\mathbf{e}_{2}, \mathbf{e}_{1}\right]$.

If $\Phi$ is a 2-surface in $R^{m}$, with parameter domain $I^{2}$, then $\Phi$ (regarded as a function on 2-forms) is the same as the 2-chain

$$
\Phi \circ \sigma_{1}+\Phi \circ \sigma_{2} .
$$

Thus

$$
\begin{aligned}
\partial \Phi &=\partial\left(\Phi \circ \sigma_{1}\right)+\partial\left(\Phi \circ \sigma_{2}\right) \\
&=\Phi\left(\partial \sigma_{1}\right)+\Phi\left(\partial \sigma_{2}\right)=\Phi\left(\partial I^{2}\right)
\end{aligned}
$$

In other words, if the parameter domain of $\Phi$ is the square $I^{2}$, we need not refer back to the simplex $Q^{2}$, but can obtain $\partial \Phi$ directly from $\partial I^{2}$.

Other examples may be found in Exercises 17 to $19 .$ 

**10.32 Example** For $0 \leq u \leq \pi, 0 \leq v \leq 2 \pi$, define

$$
\Sigma(u, v)=(\sin u \cos v, \sin u \sin v, \cos u) .
$$

Then $\Sigma$ is a 2-surface in $R^{3}$, whose parameter domain is a rectangle $D \subset R^{2}$, and whose range is the unit sphere in $R^{3}$. Its boundary is

$$
\partial \Sigma=\Sigma(\partial D)=\gamma_{1}+\gamma_{2}+\gamma_{3}+\gamma_{4}
$$

where

$$
\begin{aligned}
&\gamma_{1}(u)=\Sigma(u, 0)=(\sin u, 0, \cos u), \\
&\gamma_{2}(v)=\Sigma(\pi, v)=(0,0,-1), \\
&\gamma_{3}(u)=\Sigma(\pi-u, 2 \pi)=(\sin u, 0,-\cos u), \\
&\gamma_{4}(v)=\Sigma(0,2 \pi-v)=(0,0,1),
\end{aligned}
$$

with $[0, \pi]$ and $[0,2 \pi]$ as parameter intervals for $u$ and $v$, respectively.

Since $\gamma_{2}$ and $\gamma_{4}$ are constant, their derivatives are 0 , hence the integral of any 1-form over $\gamma_{2}$ or $\gamma_{4}$ is 0 . [See Example 1.12(a).]

Since $\gamma_{3}(u)=\gamma_{1}(\pi-u)$, direct application of (35) shows that

$$
\int_{\gamma_{3}} \omega=-\int_{\gamma_{1}} \omega
$$

for every 1-form $\omega$. Thus $\int_{\partial \Sigma} \omega=0$, and we conclude that $\partial \Sigma=0$.

(In geographic terminology, $\partial \Sigma$ starts at the north pole $N$, runs to the south pole $S$ along a meridian, pauses at $S$, returns to $N$ along the same meridian, and finally pauses at $N$. The two passages along the meridian are in opposite directions. The corresponding two line integrals therefore cancel each other. In Exercise 32 there is also one curve which occurs twice in the boundary, but without cancellation.)
