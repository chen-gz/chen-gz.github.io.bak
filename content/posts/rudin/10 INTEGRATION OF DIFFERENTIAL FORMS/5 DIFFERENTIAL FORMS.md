---
title: 5 DIFFERENTIAL FORMS
date: 2022-08-16
---

We shall now develop some of the machinery that is needed for the $n$-dimensional version of the fundamental theorem of calculus which is usually called Stokes' theorem. The original form of Stokes' theorem arose in applications of vector analysis to electromagnetism and was stated in terms of the curl of a vector field. Green's theorem and the divergence theorem are other special cases. These topics are briefly discussed at the end of the chapter.

It is a curious feature of Stokes' theorem that the only thing that is difficult about it is the elaborate structure of definitions that are needed for its statement. These definitions concern differential forms, their derivatives, boundaries, and orientation. Once these concepts are understood, the statement of the theorem is very brief and succinct, and its proof presents little difficulty.

Up to now we have considered derivatives of functions of several variables only for functions defined in open sets. This was done to avoid difficulties that can occur at boundary points. It will now be convenient, however, to discuss differentiable functions on compact sets. We therefore adopt the following convention:

To say that $\mathbf{f}$ is a $\mathscr{C}^{\prime}$-mapping (or a $\mathscr{C}^{\prime \prime}$-mapping) of a compact set $D \subset R^{k}$ into $R^{n}$ means that there is a $\mathscr{C}^{\prime}$-mapping (or a $\mathscr{C}^{\prime \prime}$-mapping) $\mathbf{g}$ of an open set $W \subset R^{k}$ into $R^{n}$ such that $D \subset W$ and such that $\mathbf{g}(\mathbf{x})=\mathbf{f}(\mathbf{x})$ for all $\mathbf{x} \in D$ 

**10.10 Definition** Suppose $E$ is an open set in $R^{n}$. A $k$-surface in $E$ is a $\mathscr{C}^{\prime}$ mapping $\Phi$ from a compact set $D \subset R^{k}$ into $E$.

$D$ is called the parameter domain of $\Phi$. Points of $D$ will be denoted by $\mathbf{u}=\left(u_{1}, \ldots, u_{k}\right)$

We shall confine ourselves to the simple situation in which $D$ is either a $k$-cell or the $k$-simplex $Q^{k}$ described in Example 10.4. The reason for this is that we shall have to integrate over $D$, and we have not yet discussed integration over more complicated subsets of $R^{k}$. It will be seen that this restriction on $D$ (which will be tacitly made from now on) entails no significant loss of generality in the resulting theory of differential forms.

We stress that $k$-surfaces in $E$ are defined to be mappings into $E$, not subsets of $E$. This agrees with our earlier definition of curves (Definition 6.26). In fact, 1-surfaces are precisely the same as continuously differentiable curves.

**10.11 Definition** Suppose $E$ is an open set in $R^{n}$. A differential form of order $k \geq 1$ in $E$ (briefly, a $k$-form in $E$ ) is a function $\omega$, symbolically represented by the sum

$$
\begin{equation}
\omega=\sum a_{i_{1} \cdots i_{k}}(\mathbf{x}) d x_{i_{1}} \wedge \cdots \wedge d x_{i_{k}}
\end{equation}
$$

(the indices $i_{1}, \ldots, i_{k}$ range independently from 1 to $n$ ), which assigns to each $k$-surface $\Phi$ in $E$ a number $\omega(\Phi)=\int_{\Phi} \omega$, according to the rule

$$
\begin{equation}
\int_{\Phi} \omega=\int_{D} \sum a_{i_{1}} \cdots_{i_{k}}(\Phi(\mathbf{u})) \frac{\partial\left(x_{i_{1}}, \ldots, x_{i_{k}}\right)}{\partial\left(u_{1}, \ldots, u_{k}\right)} d \mathbf{u}
\end{equation}
$$

where $D$ is the parameter domain of $\Phi$.

The functions $a_{i_{1} \cdots i_{k}}$ are assumed to be real and continuous in $E$. If $\phi_{1}, \ldots, \phi_{n}$ are the components of $\Phi$, the Jacobian in (2) is the one determined by the mapping

$$
\left(u_{1}, \ldots, u_{k}\right) \rightarrow\left(\phi_{i_{1}}(\mathbf{u}), \ldots, \phi_{i_{k}}(\mathbf{u})\right) .
$$

Note that the right side of (2) is an integral over $D$, as defined in Definition $10.1$ (or Example 10.4) and that (2) is the definition of the symbol $\int_{\Phi} \omega$. A $k$-form $\omega$ is said to be of class $\mathscr{C}^{\prime}$ or $\mathscr{C}^{\prime \prime}$ if the functions $a_{i_{1}} \cdots i_{k}$ in (1) are all of class $\mathscr{C}^{\prime}$ or $\mathscr{C}^{\prime \prime}$.

A 0-form in $E$ is defined to be a continuous function in $E$.

**10.12 Examples**


(a) Let $\gamma$ be a 1-surface (a curve of class $\mathscr{C}^{\prime}$ ) in $R^{3}$, with parameter domain $[0,1]$.

Write $(x, y, z)$ in place of $\left(x_{1}, x_{2}, x_{3}\right)$, and put

$$
\omega=x d y+y d x \text {. }
$$

Then

$$
\int_{\gamma} \omega=\int_{0}^{1}\left[\gamma_{1}(t) \gamma_{2}^{\prime}(t)+\gamma_{2}(t) \gamma_{1}^{\prime}(t)\right] d t=\gamma_{1}(1) \gamma_{2}(1)-\gamma_{1}(0) \gamma_{2}(0) \text {. }
$$

Note that in this example $\int_{\gamma} \omega$ depends only on the initial point $\gamma(0)$ and on the end point $\gamma(1)$ of $\gamma$. In particular, $\int_{\gamma} \omega=0$ for every closed curve $\gamma$. (As we shall see later, this is true for every 1-form $\omega$ which is exact.)

Integrals of 1-forms are often called line integrals.

(b) Fix $a>0, b>0$, and define

$$
\gamma(t)=(a \cos t, b \sin t) \quad(0 \leq t \leq 2 \pi),
$$

so that $\gamma$ is a closed curve in $R^{2}$. (Its range is an ellipse.) Then

$$
\int_{\gamma} x d y=\int_{0}^{2 \pi} a b \cos ^{2} t d t=\pi a b,
$$

whereas

$$
\int_{\gamma} y d x=-\int_{0}^{2 \pi} a b \sin ^{2} t d t=-\pi a b .
$$

Note that $\int_{\gamma} x d y$ is the area of the region bounded by $\gamma$. This is a special case of Green's theorem.

(c) Let $D$ be the 3-cell defined by

$$
0 \leq r \leq 1, \quad 0 \leq \theta \leq \pi, \quad 0 \leq \varphi \leq 2 \pi .
$$

Define $\Phi(r, \theta, \varphi)=(x, y, z)$, where

$$
\begin{aligned}
&x=r \sin \theta \cos \varphi \\
&y=r \sin \theta \sin \varphi \\
&z=r \cos \theta .
\end{aligned}
$$

Then

$$
J_{\Phi}(r, \theta, \varphi)=\frac{\partial(x, y, z)}{\partial(r, \theta, \varphi)}=r^{2} \sin \theta
$$

Hence

$$
\begin{equation}
\int_{\Phi} d x \wedge d y \wedge d z=\int_{D} J_{\Phi}=\frac{4 \pi}{3}
\label{eq:36}
\end{equation}
$$

Note that $\Phi$ maps $D$ onto the closed unit ball of $R^{3}$, that the mapping is 1-1 in the interior of $D$ (but certain boundary points are identified by $\Phi)$, and that the integral $\ref{eq:36}$ is equal to the volume of $\Phi(D)$. 

**10.13 Elementary properties** Let $\omega, \omega_{1}, \omega_{2}$ be $k$-forms in $E$. We write $\omega_{1}=\omega_{2}$ if and only if $\omega_{1}(\Phi)=\omega_{2}(\Phi)$ for every $k$-surface $\Phi$ in $E$. In particular, $\omega=0$ means that $\omega(\Phi)=0$ for every $k$-surface $\Phi$ in $E$. If $c$ is a real number, then $c \omega$ is the $k$-form defined by

$$
\begin{equation}
\int_{\Phi} c \omega=c \int_{\Phi} \omega
\end{equation}
\label{eq:37}
$$

and $\omega=\omega_{1}+\omega_{2}$ means that

$$
\begin{equation}
\int_{\Phi} \omega=\int_{\Phi} \omega_{1}+\int_{\Phi} \omega_{2}
\label{eq:28}
\end{equation}
$$

for every $k$-surface $\Phi$ in $E$. As a special case of (37), note that $-\omega$ is defined so that

$$
\begin{equation}
\int_{\Phi}(-\omega)=-\int_{\Phi} d \omega
\label{eq:39}
\end{equation}
$$

Consider a $k$-form

$$
\begin{equation}
\omega=a(\mathbf{x}) d x_{i_{1}} \wedge \cdots \wedge d x_{i_{k}}
\label{eq:40}
\end{equation}
$$

and let $\bar{\omega}$ be the $k$-form obtained by interchanging some pair of subscripts in (40). If (2) and (39) are combined with the fact that a determinant changes sign if two of its rows are interchanged, we see that

$$
\bar{\omega}=-\omega .
$$

As a special case of this, note that the anticommutative relation

$$
d x_{i} \wedge d x_{j}=-d x_{j} \wedge d x_{i}
$$

holds for all $i$ and $j$. In particular,

$$
d x_{i} \wedge d x_{i}=0 \quad(i=1, \ldots, n) .
$$

More generally, let us return to (40), and assume that $i_{r}=i_{s}$ for some $r \neq s$. If these two subscripts are interchanged, then $\bar{\omega}=\omega$, hence $\omega=0$, by (41).

In other words, if $\omega$ is given by (40), then $\omega=0$ unless the subscripts $i_{1}, \ldots, i_{k}$ are all distinct.

If $\omega$ is as in (34), the summands with repeated subscripts can therefore be omitted without changing $\omega$.

It follows that 0 is the only $k$-form in any open subset of $R^{n}$, if $k>n$.

The anticommutativity expressed by (42) is the reason for the inordinate amount of attention that has to be paid to minus signs when studying differential forms. 

**10.14 Basic $k$-forms** If $i_{1}, \ldots, i_{k}$ are integers such that $1 \leq i_{1}<i_{2}<\cdots$ $<i_{k} \leq n$, and if $I$ is the ordered $k$-tuple $\left\{i_{1}, \ldots, i_{k}\right\}$, then we call $I$ an increasing $k$-index, and we use the brief notation

$$
d x_{I}=d x_{i_{1}} \wedge \cdots \wedge d x_{i_{k}} .
$$

These forms $d x_{I}$ are the so-called basic $k$-forms in $R^{n}$.

It is not hard to verify that there are precisely $n ! / k !(n-k) !$ basic $k$-forms in $R^{n}$; we shall make no use of this, however.

Much more important is the fact that every $k$-form can be represented in terms of basic $k$-forms. To see this, note that every $k$-tuple $\left\{j_{1}, \ldots, j_{k}\right\}$ of distinct integers can be converted to an increasing $k$-index $J$ by a finite number of interchanges of pairs; each of these amounts to a multiplication by $-1$, as we saw in Sec. 10.13; hence

$$
d x_{j_{1}} \wedge \cdots \wedge d x_{j_{k}}=\varepsilon\left(j_{1}, \ldots, j_{k}\right) d x_{J}
$$

where $\varepsilon\left(j_{1}, \ldots, j_{k}\right)$ is 1 or $-1$, depending on the number of interchanges that are needed. In fact, it is easy to see that

$$
\varepsilon\left(j_{1}, \ldots, j_{k}\right)=s\left(j_{1}, \ldots, j_{k}\right)
$$

where $s$ is as in Definition 9.33.

For example,

$$
d x_{1} \wedge d x_{5} \wedge d x_{3} \wedge d x_{2}=-d x_{1} \wedge d x_{2} \wedge d x_{3} \wedge d x_{5}
$$

and

$$
d x_{4} \wedge d x_{2} \wedge d x_{3}=d x_{2} \wedge d x_{3} \wedge d x_{4} .
$$

If every $k$-tuple in (34) is converted to an increasing $k$-index, then we obtain the so-called standard presentation of $\omega$ :

$$
\begin{equation}
\omega=\sum_{I} b_{I}(\mathbf{x}) d x_{I} .
\label{eq:47}
\end{equation}
$$

The summation in $\ref{eq:47}$ extends over all increasing $k$-indices $I$. \[Of course, every increasing $k$-index arises from many (from $k$ !, to be precise) $k$-tuples. Each $b_{I}$ in $\ref{eq:47}$ may thus be a sum of several of the coefficients that occur in (34).\]

For example,

$$
x_{1} d x_{2} \wedge d x_{1}-x_{2} d x_{3} \wedge d x_{2}+x_{3} d x_{2} \wedge d x_{3}+d x_{1} \wedge d x_{2}
$$

is a 2 -form in $R^{3}$ whose standard presentation is

$$
\left(1-x_{1}\right) d x_{1} \wedge d x_{2}+\left(x_{2}+x_{3}\right) d x_{2} \wedge d x_{3} .
$$

The following uniqueness theorem is one of the main reasons for the introduction of the standard presentation of a $k$-form. 


**10.15 Theorem** Suppose

$$
\begin{equation}
\omega=\sum_{I} b_{I}(\mathbf{x}) d x_{I}
\label{eq:48}
\end{equation}
$$

is the standard presentation of a $k$-form $\omega$ in an open set $E \subset R^{n} .$ If $\omega=0$ in $E$, then $b_{I}(\mathbf{x})=0$ for every increasing $k$-index $I$ and for every $\mathbf{x} \in E$.

Note that the analogous statement would be false for sums such as $\ref{eq:34}$, since, for example,

$$
d x_{1} \wedge d x_{2}+d x_{2} \wedge d x_{1}=0 .
$$

**Proof** Assume, to reach a contradiction, that $b_{J}(\mathbf{v})>0$ for some $\mathbf{v} \in E$ and for some increasing $k$-index $J=\left\{j_{1}, \ldots, j_{k}\right\}$. Since $b_{J}$ is continuous, there exists $h>0$ such that $b_{J}(\mathbf{x})>0$ for all $\mathbf{x} \in R^{n}$ whose coordinates satisfy $\left|x_{i}-v_{i}\right| \leq h$. Let $D$ be the $k$-cell in $R^{k}$ such that $\mathbf{u} \in D$ if and only if $\left|u_{r}\right| \leq h$ for $r=1, \ldots, k$. Define

$$
\begin{equation}
\Phi(\mathbf{u})=\mathbf{v}+\sum_{r=1}^{k} u_{r} \mathbf{e}_{j_{r}} \quad(\mathbf{u} \in D) .
\label{eq:49}
\end{equation}
$$

Then $\Phi$ is a $k$-surface in $E$, with parameter domain $D$, and $b_{J}(\Phi(\mathbf{u}))>0$ for every $\mathbf{u} \in D$.

We claim that

$$
\begin{equation}
\int_{\Phi} \omega=\int_{D} b_{J}(\Phi(\mathbf{u})) d \mathbf{u}
\label{eq:50}
\end{equation}
$$

Since the right side of $\ref{eq:50}$ is positive, it follows that $\omega(\Phi) \neq 0$. Hence $\ref{eq:50}$ gives our contradiction.

To prove $\ref{eq:50}$, apply $\ref{eq:35}$ to the presentation $\ref{eq:48}$. More specifically, compute the Jacobians that occur in $\ref{eq:35}$. By $\ref{eq:49}$,

$$
\frac{\partial\left(x_{j_{1}}, \ldots, x_{j_{k}}\right)}{\partial\left(u_{1}, \ldots, u_{k}\right)}=1 \text {. }
$$

For any other increasing $k$-index $I \neq J$, the Jacobian is 0 , since it is the determinant of a matrix with at least one row of zeros.



**10.16 Products of basic $k$-forms** Suppose

$$
\begin{equation}
I=\left\{i_{1}, \ldots, i_{p}\right\}, \quad J=\left\{j_{1}, \ldots, j_{q}\right\}
\label{eq:51}
\end{equation}
$$


where $1 \leq i_{1}<\cdots<i_{p} \leq n$ and $1 \leq j_{1}<\cdots<j_{q} \leq n$. The product of the corresponding basic forms $d x_{I}$ and $d x_{J}$ in $R^{n}$ is a $(p+q)$-form in $R^{n}$, denoted by the symbol $d x_{I} \wedge d x_{J}$, and defined by


$$
\begin{equation}
d x_{I} \wedge d x_{J}=d x_{i_{1}} \wedge \cdots \wedge d x_{i_{p}} \wedge d x_{j_{1}} \wedge \cdots \wedge d x_{j_{q}} .
\label{eq:52}
\end{equation}
$$

If $I$ and $J$ have an element in common, then the discussion in Sec. $10.13$ shows that $d x_{I} \wedge d x_{J}=0$.

If $I$ and $J$ have no element in common, let us write $[I, J]$ for the increasing $(p+q)$-index which is obtained by arranging the members of $I \cup J$ in increasing order. Then $d x_{[I, J]}$ is a basic $(p+q)$-form. We claim that

$$
\begin{equation}
d x_{\mathrm{I}} \wedge d x_{J}=(-1)^{\alpha} d x_{[I, J]}
\label{eq:53}
\end{equation}
$$

where $\alpha$ is the number of differences $j_{t}-i_{s}$ that are negative. (The number of positive differences is thus $p q-\alpha .)$

To prove $\ref{eq:53}$, perform the following operations on the numbers

$$
\begin{equation}
i_{1}, \ldots, i_{p} ; j_{1}, \ldots, j_{q} .
\label{eq:54}
\end{equation}
$$

Move $i_{p}$ to the right, step by step, until its right neighbor is larger than $i_{p}$. The number of steps is the number of subscripts $t$ such that $i_{p}<j_{t}$. (Note that 0 steps are a distinct possibility.) Then do the same for $i_{p-1}, \ldots, i_{1}$. The total number of steps taken is $\alpha$. The final arrangement reached is $[I, J]$. Each step, when applied to the right side of $\ref{eq:52}$, multiplies $d x_{I} \wedge d x_{J}$ by $-1$. Hence $\ref{eq:53}$ holds.

Note that the right side of $\ref{eq:53}$ is the standard presentation of $d x_{I} \wedge d x_{J}$. Next, let $K=\left(k_{1}, \ldots, k_{r}\right)$ be an increasing $r$-index in $\{1, \ldots, n\}$. We shall use $\ref{eq:53}$ to prove that

$$
\begin{equation}
\left(d x_{I} \wedge d x_{J}\right) \wedge d x_{K}=d x_{I} \wedge\left(d x_{J} \wedge d x_{K}\right) .
\label{eq:55}
\end{equation}
$$

If any two of the sets $I, J, K$ have an element in common, then each side of $\ref{eq:55}$ is 0 , hence they are equal.

So let us assume that $I, J, K$ are pairwise disjoint. Let $[I, J, K]$ denote the increasing $(p+q+r)$-index obtained from their union. Associate $\beta$ with the ordered pair $(J, K)$ and $\gamma$ with the ordered pair $(I, K)$ in the way that $\alpha$ was associated with $(I, J)$ in $\ref{eq:53}$. The left side of $\ref{eq:55}$ is then

$$
(-1)^{\alpha} d x_{[I, J]} \wedge d x_{K}=(-1)^{\alpha}(-1)^{\beta+\gamma} d x_{[I, J, K]}
$$

by two applications of $\ref{eq:53}$, and the right side of $\ref{eq:55}$ is

$$
(-1)^{\beta} d x_{I} \wedge d x_{[J, K]}=(-1)^{\beta}(-1)^{\alpha+\gamma} d x_{[I, J, K]} .
$$

Hence $\ref{eq:55}$ is correct.

**10.17 Multiplication** Suppose $\omega$ and $\lambda$ are $p$ - and $q$-forms, respectively, in some open set $E \subset R^{n}$, with standard presentations

$$
\begin{equation}
\omega=\sum_{I} b_{I}(\mathbf{x}) d x_{I}, \quad \lambda=\sum_{J} c_{J}(\mathbf{x}) d x_{J}
\label{eq:56}
\end{equation}
$$

where $I$ and $J$ range over all increasing $p$-indices and over all increasing $q$-indices taken from the set $\{1, \ldots, n\}$. Their product, denoted by the symbol $\omega \wedge \lambda$, is defined to be

$$
\begin{equation}
\omega \wedge \lambda=\sum_{I, J} b_{I}(\mathbf{x}) c_{J}(\mathbf{x}) d x_{I} \wedge d x_{J} .
\label{eq:57}
\end{equation}
$$

In this sum, $I$ and $J$ range independently over their possible values, and $d x_{I} \wedge d x_{J}$ is as in Sec. 10.16. Thus $\omega \wedge \lambda$ is a $(p+q)$-form in $E$.

It is quite easy to see (we leave the details as an exercise) that the distributive laws

$$
\left(\omega_{1}+\omega_{2}\right) \wedge \lambda=\left(\omega_{1} \wedge \lambda\right)+\left(\omega_{2} \wedge \lambda\right)
$$

and

$$
\omega \wedge\left(\lambda_{1}+\lambda_{2}\right)=\left(\omega \wedge \lambda_{1}\right)+\left(\omega \wedge \lambda_{2}\right)
$$

hold, with respect to the addition defined in Sec. 10.13. If these distributive laws are combined with (55), we obtain the associative law

$$
\begin{equation}
(\omega \wedge \lambda) \wedge \sigma=\omega \wedge(\lambda \wedge \sigma)
\label{eq:58}
\end{equation}
$$

for arbitrary forms $\omega, \lambda, \sigma$ in $E$.

In this discussion it was tacitly assumed that $p \geq 1$ and $q \geq 1$. The product of a 0 -form $f$ with the $p$-form $\omega$ given by (56) is simply defined to be the $p$-form

$$
f \omega=\omega f=\sum_{I} f(\mathbf{x}) b_{I}(\mathbf{x}) d x_{I} .
$$

It is customary to write $f \omega$, rather than $f \wedge \omega$, when $f$ is a 0 -form.

**10.18 Differentiation** We shall now define a differentiation operator $d$ which associates a $(k+1)$-form $d \omega$ to each $k$-form $\omega$ of class $\mathscr{C}^{\prime}$ in some open set $E \subset R^{n}$

A 0-form of class $\mathscr{C}^{\prime}$ in $E$ is just a real function $f \in \mathscr{C}^{\prime}(E)$, and we define

$$
\begin{equation}
d f=\sum_{i=1}^{n}\left(D_{i} f\right)(\mathbf{x}) d x_{i} .
\label{eq:59}
\end{equation}
$$

If $\omega=\Sigma b_{I}(\mathbf{x}) d x_{I}$ is the standard presentation of a $k$-form $\omega$, and $b_{I} \in \mathscr{C}^{\prime}(E)$ for each increasing $k$-index $I$, then we define

$$
\begin{equation}
d \omega=\sum_{I}\left(d b_{I}\right) \wedge d x_{I} .
\label{eq:60}
\end{equation}
$$

**10.19 Example** Suppose $E$ is open in $R^{n}, f \in \mathscr{C}^{\prime}(E)$, and $\gamma$ is a continuously differentiable curve in $E$, with domain $[0,1]$. By $\ref{eq:59}$ and $\ref{eq:35}$,

$$
\begin{equation}
\int_{\gamma} d f=\int_{0}^{1} \sum_{i=1}^{n}\left(D_{i} f\right)(\gamma(t)) \gamma_{i}^{\prime}(t) d t .
\label{eq:61}
\end{equation}
$$

By the chain rule, the last integrand is $(f \circ \gamma)^{\prime}(t)$. Hence

$$
\begin{equation}
\int_{\gamma} d f=f(\gamma(1))-f(\gamma(0)),
\label{eq:62}
\end{equation}
$$

and we see that $\int_{\gamma} d f$ is the same for all $\gamma$ with the same initial point and the same end point, as in $(a)$ of Example $10.12$.

Comparison with Example $10.12(b)$ shows therefore that the 1-form $x d y$ is not the derivative of any 0 -form $f$. This could also be deduced from part $(b)$ of the following theorem, since

$$
d(x d y)=d x \wedge d y \neq 0 .
$$



**10.20 Theorem**

(a) If $\omega$ and $\lambda$ are $k$ - and $m$-forms, respectively, of class $\mathscr{C}^{\prime}$ in $E$, then

$$
\begin{equation}
d(\omega \wedge \lambda)=(d \omega) \wedge \lambda+(-1)^{k} \omega \wedge d \lambda .
\label{eq:63}
\end{equation}
$$

(b) If $\omega$ is of class $\mathscr{C}^{\prime \prime}$ in $E$, then $d^{2} \omega=0$.

Here $d^{2} \omega$ means, of course, $d(d \omega)$.

**Proof** Because of $\ref{eq:57}$ and $\ref{eq:60}$,(a)$ follows if $\ref{eq:63}$ is proved for the special case

$$
\begin{equation}
\omega=f d x_{I}, \quad \lambda=g d x_{J}
\label{eq:64}
\end{equation}
$$



where $f, g \in \mathscr{C}^{\prime}(E), d x_{I}$ is a basic $k$-form, and $d x_{J}$ is a basic $m$-form. [If $k$ or $m$ or both are 0 , simply omit $d x_{I}$ or $d x_{J}$ in (64); the proof that follows is unaffected by this.] Then

$$
\omega \wedge \lambda=f g d x_{I} \wedge d x_{J} .
$$

Let us assume that $I$ and $J$ have no element in common. [In the other case each of the three terms in (63) is 0.] Then, using (53),

$$
d(\omega \wedge \lambda)=d\left(f g d x_{I} \wedge d x_{J}\right)=(-1)^{\alpha} d\left(f g d x_{[I, J]}\right) .
$$

By (59), $d(f g)=f d g+g d f$. Hence (60) gives

$$
\begin{aligned}
d(\omega \wedge \lambda) &=(-1)^{\alpha}(f d g+g d f) \wedge d x_{[I, J]} \\
&=(g d f+f d g) \wedge d x_{I} \wedge d x_{J} .
\end{aligned}
$$

Since $d g$ is a 1-form and $d x_{I}$ is a $k$-form, we have

$$
d g \wedge d x_{I}=(-1)^{k} d x_{I} \wedge d g,
$$

by (42). Hence

$$
\begin{aligned}
d(\omega \wedge \lambda) &=\left(d f \wedge d x_{I}\right) \wedge\left(g d x_{J}\right)+(-1)^{k}\left(f d x_{I}\right) \wedge\left(d g \wedge d x_{J}\right) \\
&=(d \omega) \wedge \lambda+(-1)^{k} \omega \wedge d \lambda
\end{aligned}
$$

which proves $(a)$.

Note that the associative law (58) was used freely.

Let us prove (b) first for a 0 -form $f \in \mathscr{C}^{\prime \prime}$ :

$$
\begin{aligned}
d^{2} f &=d\left(\sum_{j=1}^{n}\left(D_{j} f\right)(\mathbf{x}) d x_{j}\right) \\
&=\sum_{j=1}^{n} d\left(D_{j} f\right) \wedge d x_{j} \\
&=\sum_{i, j=1}^{n}\left(D_{i j} f\right)(\mathbf{x}) d x_{i} \wedge d x_{j} .
\end{aligned}
$$

Since $D_{i j} f=D_{j i} f$ (Theorem 9.41) and $d x_{i} \wedge d x_{j}=-d x_{\jmath} \wedge d x_{i}$, we see that $d^{2} f=0$.

If $\omega=f d x_{I}$, as in (64), then $d \omega=(d f) \wedge d x_{I}$. By $(60), d\left(d x_{I}\right)=0$. Hence (63) shows that

$$
d^{2} \omega=\left(d^{2} f\right) \wedge d x_{I}=0
$$


**10.21 Change of variables** Suppose $E$ is an open set in $R^{n}, T$ is a $\mathscr{C}^{\prime}$-mapping of $E$ into an open set $V \subset R^{m}$, and $\omega$ is a $k$-form in $V$, whose standard presentation is

$$
\begin{equation}
\omega=\sum_{I} b_{I}(\mathbf{y}) d y_{I} .
\label{eq:65}
\end{equation}
$$

(We use y for points of $V, \mathbf{x}$ for points of $E$.)

Let $t_{1}, \ldots, t_{m}$ be the components of $T$ : If

$$
\mathbf{y}=\left(y_{1}, \ldots, y_{m}\right)=T(\mathbf{x})
$$

then $y_{i}=t_{i}(\mathbf{x})$. As in $\ref{eq:59}$,

$$
\begin{equation}
d t_{i}=\sum_{j=1}^{n}\left(D_{j} t_{i}\right)(\mathbf{x}) d x_{j} \quad(1 \leq i \leq m) .
\label{eq:66}
\end{equation}
$$

Thus each $d t_{i}$ is a 1-form in $E$.

The mapping $T$ transforms $\omega$ into a $k$-form $\omega_{T}$ in $E$, whose definition is

$$
\begin{equation}
\omega_{T}=\sum_{I} b_{I}(T(\mathbf{x})) d t_{i_{l}} \wedge \cdots \wedge d t_{i_{k}} .
\label{eq:67}
\end{equation}
$$

In each summand of $\ref{eq:67}$, $I=\left\{i_{1}, \ldots, i_{k}\right\}$ is an increasing $k$-index.

Our next theorem shows that addition, multiplication, and differentiation of forms are defined in such a way that they commute with changes of variables. 

**10.22 Theorem** *With $E$ and $T$ as in Sec. $10.21$, let $\omega$ and $\lambda$ be $k$ - and $m$-forms in $V$, respectively. Then*

(a) $(\omega+\lambda)_{T}=\omega_{T}+\lambda_{T}$ if $k=m$;
(b) $(\omega \wedge \lambda)_{T}=\omega_{T} \wedge \lambda_{T}$;
(c) $d\left(\omega_{T}\right)=(d \omega)_{T}$ if $\omega$ is of class $\mathscr{C}^{\prime}$ and $T$ is of class $\mathscr{C}^{\prime \prime}$.

**Proof** Part (a) follows immediately from the definitions. Part $(b)$ is almost as obvious, once we realize that

$$
\left(d y_{i_{1}} \wedge \cdots \wedge d y_{i_{r}}\right)_{T}=d t_{i_{1}} \wedge \cdots \wedge d t_{i_{r}}
$$

regardless of whether $\left\{i_{1}, \ldots, i_{r}\right\}$ is increasing or not; (68) holds because the same number of minus signs are needed on each side of $(68)$ to produce increasing rearrangements.

We turn to the proof of $(c)$. If $f$ is a 0 -form of class $\mathscr{C}^{\prime}$ in $V$, then

$$
f_{T}(\mathbf{x})=f(T(\mathbf{x})), \quad d f=\sum_{i}\left(D_{i} f\right)(\mathbf{y}) d y_{i} .
$$

By the chain rule, it follows that

$$
\begin{aligned}
d\left(f_{T}\right) &=\sum_{j}\left(D_{j} f_{T}\right)(\mathbf{x}) d x_{j} \\
&=\sum_{j} \sum_{i}\left(D_{i} f\right)(T(\mathbf{x}))\left(D_{j} t_{i}\right)(\mathbf{x}) d x_{j} \\
&=\sum_{i}\left(D_{i} f\right)(T(\mathbf{x})) d t_{i} \\
&=(d f)_{T}
\end{aligned}
$$

If $d y_{I}=d y_{i_{1}} \wedge \cdots \wedge d y_{i_{k}}$, then $\left(d y_{I}\right)_{T}=d t_{i_{1}} \wedge \cdots \wedge d t_{i_{k}}$, and Theorem $10.20$ shows that

$$
d\left(\left(d y_{I}\right)_{T}\right)=0 .
$$

(This is where the assumption $T \in \mathscr{C}^{\prime \prime}$ is used.)

Assume now that $\omega=f d y_{I}$. Then

$$
\omega_{T}=f_{T}(\mathbf{x})\left(d y_{I}\right)_{T}
$$

and the preceding calculations lead to

$$
\begin{aligned}
d\left(\omega_{T}\right) &=d\left(f_{T}\right) \wedge\left(d y_{I}\right)_{T}=(d f)_{T} \wedge\left(d y_{I}\right)_{T} \\
&=\left((d f) \wedge d y_{I}\right)_{T}=(d \omega)_{T}
\end{aligned}
$$

The first equality holds by (63) and (70), the second by (69), the third by part (b), and the last by the definition of $d \omega$.

The general case of $(c)$ follows from the special case just proved, if we apply $(a)$. This completes the proof. 

Our next objective is Theorem 10.25. This will follow directly from two other important transformation properties of differential forms, which we state first.


**10.23 Theorem** Suppose $T$ is $a \mathscr{C}^{\prime}$-mapping of an open set $E \subset R^{n}$ into an open set $V \subset R^{m}, S$ is a $\mathscr{C}^{\prime}$-mapping of $V$ into an open set $W \subset R^{p}$, and $\omega$ is a $k$-form in $W$, so that $\omega_{S}$ is a $k$-form in $V$ and both $\left(\omega_{S}\right)_{T}$ and $\omega_{S T}$ are $k$-forms in $E$, where $S T$ is defined by $(S T)(\mathbf{x})=S(T(\mathbf{x}))$. Then

$$
\begin{equation}
\left(\omega_{S}\right)_{T}=\omega_{S T} .
\label{eq:71}
\end{equation}
$$



**Proof** If $\omega$ and $\lambda$ are forms in $W$, Theorem $10.22$ shows that

$$
\left((\omega \wedge \lambda)_{S}\right)_{T}=\left(\omega_{S} \wedge \lambda_{S}\right)_{T}=\left(\omega_{S}\right)_{T} \wedge\left(\lambda_{S}\right)_{T}
$$

and

$$
(\omega \wedge \lambda)_{S T}=\omega_{S T} \wedge \lambda_{S T} \text {. }
$$

Thus if (71) holds for $\omega$ and for $\lambda$, it follows that (71) also holds for $\omega \wedge \lambda$. Since every form can be built up from 0-forms and 1-forms by addition and multiplication, and since (71) is trivial for 0 -forms, it is enough to prove (71) in the case $\omega=d z_{q}, q=1, \ldots, p$. (We denote the points of $E, V, W$ by $\mathbf{x}, \mathbf{y}, \mathbf{z}$, respectively.)

Let $t_{1}, \ldots, t_{m}$ be the components of $T$, let $s_{1}, \ldots, s_{p}$ be the components of $S$, and let $r_{1}, \ldots, r_{p}$ be the components of $S T$. If $\omega=d z_{q}$, then

$$
\omega_{S}=d s_{q}=\sum_{j}\left(D_{j} s_{q}\right)(\mathbf{y}) d y_{j},
$$

so that the chain rule implies

$$
\begin{aligned}
\left(\omega_{S}\right)_{T} &=\sum_{j}\left(D_{j} s_{q}\right)(T(\mathbf{x})) d t_{j} \\
&=\sum_{j}\left(D_{j} s_{q}\right)(T(\mathbf{x})) \sum_{i}\left(D_{i} t_{j}\right)(\mathbf{x}) d x_{i} \\
&=\sum_{i}\left(D_{i} r_{q}\right)(\mathbf{x}) d x_{i}=d r_{q}=\omega_{S T}
\end{aligned}
$$



**10.24 Theorem** Suppose $\omega$ is a $k$-form in an open set $E \subset R^{n}, \Phi$ is a $k$-surface in $E$, with parameter domain $D \subset R^{k}$, and $\Delta$ is the $k$-surface in $R^{k}$, with parameter domain $D$, defined by $\Delta(\mathbf{u})=\mathbf{u}(\mathbf{u} \in D)$. Then

$$
\int_{\Phi} \omega=\int_{\Delta} \omega_{\Phi} .
$$

Proof We need only consider the case

$$
\omega=a(\mathbf{x}) d x_{i_{1}} \wedge \cdots \wedge d x_{i_{k}} .
$$

If $\phi_{1}, \ldots, \phi_{n}$ are the components of $\Phi$, then

$$
\omega_{\Phi}=a(\Phi(\mathbf{u})) d \phi_{i_{1}} \wedge \cdots \wedge d \phi_{i_{k}} .
$$

The theorem will follow if we can show that

$$
d \phi_{i_{1}} \wedge \cdots \wedge d \phi_{i_{k}}=J(\mathbf{u}) d u_{1} \wedge \cdots \wedge d u_{k},
$$

where

$$
J(\mathbf{u})=\frac{\partial\left(x_{i_{1}}, \ldots, x_{i_{k}}\right)}{\partial\left(u_{1}, \ldots, u_{k}\right)}
$$

since (72) implies

$$
\begin{aligned}
\int_{\Phi} \omega &=\int_{D} a(\Phi(\mathbf{u})) J(\mathbf{u}) d \mathbf{u} \\
&=\int_{\Delta} a(\Phi(\mathbf{u})) J(\mathbf{u}) d u_{1} \wedge \cdots \wedge d u_{k}=\int_{\Delta} \omega_{\Phi} .
\end{aligned}
$$

Let $[A]$ be the $k$ by $k$ matrix with entries

$$
\alpha(p, q)=\left(D_{q} \phi_{i_{p}}\right)(\mathbf{u}) \quad(p, q=1, \ldots, k) .
$$

Then

$$
d \phi_{i_{p}}=\sum_{q} \alpha(p, q) d u_{q}
$$

so that

$$
d \phi_{i_{1}} \wedge \cdots \wedge d \phi_{i_{k}}=\sum \alpha\left(1, q_{1}\right) \cdots \alpha\left(k, q_{k}\right) d u_{q_{1}} \wedge \cdots \wedge d u_{q_{k}} \text {. }
$$

In this last sum, $q_{1}, \ldots, q_{k}$ range independently over $1, \ldots, k$. The anticommutative relation (42) implies that

$$
d u_{q_{1}} \wedge \cdots \wedge d u_{q_{k}}=s\left(q_{1}, \ldots, q_{k}\right) d u_{1} \wedge \cdots \wedge d u_{k},
$$

where $s$ is as in Definition 9.33; applying this definition, we see that

$$
d \phi_{i_{1}} \wedge \cdots \wedge d \phi_{i_{k}}=\operatorname{det}[A] d u_{1} \wedge \cdots \wedge d u_{k}
$$

and since $J(\mathbf{u})=\operatorname{det}[A],(72)$ is proved.

The final result of this section combines the two preceding theorems.



**10.25 Theorem** Suppose $T$ is a $\mathscr{C}^{\prime}$-mapping of an open set $E \subset R^{n}$ into an open set $V \subset R^{m}, \Phi$ is a $k$-surface in $E$, and $\omega$ is a $k$-form in $V$.

Then

$$
\int_{T \Phi} \omega=\int_{\Phi} \omega_{T}
$$

Proof Let $D$ be the parameter domain of $\Phi$ (hence also of $T \Phi$ ) and define $\Delta$ as in Theorem $10.24$.

Then

$$
\int_{T \Phi} \omega=\int_{\Delta} \omega_{T \Phi}=\int_{\Delta}\left(\omega_{T}\right)_{\Phi}=\int_{\Phi} \omega_{T} .
$$

The first of these equalities is Theorem $10.24$, applied to $T \Phi$ in place of $\Phi$. The second follows from Theorem 10.23. The third is Theorem 10.24, with $\omega_{T}$ in place of $\omega$.