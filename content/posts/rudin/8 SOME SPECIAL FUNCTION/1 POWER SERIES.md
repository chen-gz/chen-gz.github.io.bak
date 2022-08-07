---
title: POWER SERIES
date: 2022-08-07
---

In this section we shall derive some properties of functions which are represented by power series, i.e., functions of the form

$$
f(x)=\sum_{n=0}^{\infty} c_{n} x^{n}
$$

or, more generally,

$$
f(x)=\sum_{n=0}^{\infty} c_{n}(x-a)^{n} .
$$

These are called *analytic functions*.
We shall restrict ourselves to real values of $x$. Instead of circles of convergence (see Theorem 3.39) we shall therefore encounter intervals of convergence.

If (1) converges for all $x$ in $(-R, R)$, for some $R>0(R$ may be $+\infty)$, we say that $f$ is expanded in a power series about the point $x=0$. Similarly, if (2) converges for $|x-a|<R, f$ is said to be expanded in a power series about the point $x=a$. As a matter of convenience, we shall often take $a=0$ without any loss of generality.

**8.1 Theorem** *Suppose the series
$$
\sum_{n=0}^{\infty} c_{n} x^{n}
$$
converges for $|x|<R$, and define
$$
f(x)=\sum_{n=0}^{\infty} c_{n} x^{n} \quad(|x|<R) .
$$
Then (3) converges uniformly on $[-R+\varepsilon, R-\varepsilon]$, no matter which $\varepsilon>0$ is chosen. The function $f$ is continuous and differentiable in $(-R, R)$, and*
$$
f^{\prime}(x)=\sum_{n=1}^{\infty} n c_{n} x^{n-1} \quad(|x|<R) .
$$

**Proof** Let $\varepsilon>0$ be given. For $|x| \leq R-\varepsilon$, we have

$$
\left|c_{n} x^{n}\right| \leq\left|c_{n}(R-\varepsilon)^{n}\right|
$$

and since

$$
\Sigma c_{n}(R-\varepsilon)^{n}
$$

converges absolutely (every power series converges absolutely in the interior of its interval of convergence, by the root test), Theorem $7.10$ shows the uniform convergence of $(3)$ on $[-R+\varepsilon, R-\varepsilon]$.
Since $\sqrt[n]{n} \rightarrow 1$ as $n \rightarrow \infty$, we have

$$
\limsup _{n \rightarrow \infty} \sqrt[n]{n\left|c_{n}\right|}=\limsup _{n \rightarrow \infty} \sqrt[n]{\left|c_{n}\right|}
$$

so that the series (4) and (5) have the same interval of convergence.
Since (5) is a power series, it converges uniformly in $[-R+\varepsilon$, $R-\varepsilon$ ], for every $\varepsilon>0$, and we can apply Theorem $7.17$ (for series instead of sequences). It follows that (5) holds if $|x| \leq R-\varepsilon$.

But, given any $x$ such that $|x|<R$, we can find an $\varepsilon>0$ such that $|x|<R-\varepsilon$. This shows that (5) holds for $|x|<R$.
Continuity of $f$ follows from the existence of $f^{\prime}$ (Theorem 5.2).

**Corollary** *Under the hypotheses of Theorem 8.1, $f$ has derivatives of all orders in $(-R, R)$, which are given by
$$
f^{(k)}(x)=\sum_{n=k}^{\infty} n(n-1) \cdots(n-k+1) c_{n} x^{n-k}
$$
In particular,*
$$
f^{(k)}(0)=k ! c_{k} \quad(k=0,1,2, \ldots) \text {. }
$$
(Here $f^{(0)}$ means $f$, and $f^{(k)}$ is the $k$ th derivative of $f$, for $k=1,2,3, \ldots$ ).

**Proof** Equation (6) follows if we apply Theorem $8.1$ successively to $f$, $f^{\prime}, f^{\prime \prime}, \ldots$. Putting $x=0$ in (6), we obtain (7).

Formula (7) is very interesting. It shows, on the one hand, that the coefficients of the power series development of $f$ are determined by the values of $f$ and of its derivatives at a single point. On the other hand, if the coefficients are given, the values of the derivatives of $f$ at the center of the interval of convergence can be read off immediately from the power series.

Note, however, that although a function $f$ may have derivatives of all orders, the series $\Sigma c_{n} x^{n}$, where $c_{n}$ is computed by (7), need not converge to $f(x)$ for any $x \neq 0$. In this case, $f$ cannot be expanded in a power series about $x=0$. For if we had $f(x)=\Sigma a_{n} x^{n}$, we should have

$$
n ! a_{n}=f^{(n)}(0) ;
$$

hence $a_{n}=c_{n}$. An example of this situation is given in Exercise 1 .

If the series (3) converges at an endpoint, say at $x=R$, then $f$ is continuous not only in $(-R, R)$, but also at $x=R$. This follows from Abel's theorem (for simplicity of notation, we take $R=1$ ):

**8.2 Theorem** *Suppose $\Sigma c_{n}$ converges. Put*
$$
f(x)=\sum_{n=0}^{\infty} c_{n} x^{n} \quad(-1<x<1) .
$$

*Then*

$$
\lim _{x \rightarrow 1} f(x)=\sum_{n=0}^{\infty} c_{n} .
$$

**Proof** Let $s_{n}=c_{0}+\cdots+c_{n}, s_{-1}=0$. Then

$$
\sum_{n=0}^{m} c_{n} x^{n}=\sum_{n=0}^{m}\left(s_{n}-s_{n-1}\right) x^{n}=(1-x) \sum_{n=0}^{m-1} s_{n} x^{n}+s_{m} x^{m}
$$

For $|x|<1$, we let $m \rightarrow \infty$ and obtain

$$
f(x)=(1-x) \sum_{n=0}^{\infty} s_{n} x^{n} .
$$

Suppose $s=\lim _{n \rightarrow \infty} s_{n}$. Let $\varepsilon>0$ be given. Choose $N$ so that $n>N$ implies

$$
\left|s-s_{n}\right|<\frac{\varepsilon}{2} .
$$

Then, since

$$
(1-x) \sum_{n=0}^{\infty} x^{n}=1 \quad(|x|<1),
$$

we obtain from (9)

$$
|f(x)-s|=\left|(1-x) \sum_{n=0}^{\infty}\left(s_{n}-s\right) x^{n}\right| \leq(1-x) \sum_{n=0}^{N}\left|s_{n}-s\right||x|^{n}+\frac{\varepsilon}{2} \leq \varepsilon
$$

if $x>1-\delta$, for some suitably chosen $\delta>0$. This implies (8).
As an application, let us prove Theorem 3.51, which asserts: If $\Sigma a_{n}, \Sigma b_{n}$, $\Sigma c_{n}$, converge to $A, B, C$, and if $c_{n}=a_{0} b_{n}+\cdots+a_{n} b_{0}$, then $C=A B$. We let

$$
f(x)=\sum_{n=0}^{\infty} a_{n} x^{n}, \quad g(x)=\sum_{n=0}^{\infty} b_{n} x^{n}, \quad h(x)=\sum_{n=0}^{\infty} c_{n} x^{n},
$$

for $0 \leq x \leq 1$. For $x<1$, these series converge absolutely and hence may be multiplied according to Definition 3.48; when the multiplication is carried out, we see that

$$
f(x) \cdot g(x)=h(x) \quad(0 \leq x<1) .
$$

By Theorem 8.2,

$$
f(x) \rightarrow A, \quad g(x) \rightarrow B, \quad h(x) \rightarrow C
$$

as $x \rightarrow 1$. Equations (10) and (11) imply $A B=C$.
We now require a theorem concerning an inversion in the order of summation. (See Exercises 2 and 3.)

**8.3 Theorem** *Given a double sequence $\left\{a_{i j}\right\}, i=1,2,3, \ldots, j=1,2,3, \ldots$, suppose that
$$
\sum_{j=1}^{\infty}\left|a_{i j}\right|=b_{i} \quad(i=1,2,3, \ldots)
$$
and $\Sigma b_{i}$ converges. Then
$$
\sum_{i=1}^{\infty} \sum_{j=1}^{\infty} a_{i j}=\sum_{j=1}^{\infty} \sum_{i=1}^{\infty} a_{i j} .
$$*

**Proof** We could establish (13) by a direct procedure similar to (although more involved than) the one used in Theorem 3.55. However, the following method seems more interesting.

Let $E$ be a countable set, consisting of the points $x_{0}, x_{1}, x_{2}, \ldots$, and suppose $x_{n} \rightarrow x_{0}$ as $n \rightarrow \infty$. Define

$$
\begin{aligned}
f_{i}\left(x_{0}\right)=\sum_{j=1}^{\infty} a_{i j} &(i=1,2,3, \ldots), \\
f_{i}\left(x_{n}\right)=\sum_{j=1}^{n} a_{i j} &(i, n=1,2,3, \ldots), \\
g(x)=\sum_{i=1}^{\infty} f_{i}(x) &(x \in E) .
\end{aligned}
$$

Now, (14) and (15), together with (12), show that each $f_{i}$ is continuous at $x_{0}$. Since $\left|f_{i}(x)\right| \leq b_{i}$ for $x \in E$, (16) converges uniformly, so that $g$ is continuous at $x_{0}$ (Theorem 7.11). It follows that

$$
\begin{aligned}
\sum_{i=1}^{\infty} \sum_{j=1}^{\infty} a_{i j} &=\sum_{i=1}^{\infty} f_{i}\left(x_{0}\right)=g\left(x_{0}\right)=\lim _{n \rightarrow \infty} g\left(x_{n}\right) \\
&=\lim _{n \rightarrow \infty} \sum_{i=1}^{\infty} f_{i}\left(x_{n}\right)=\lim _{n \rightarrow \infty} \sum_{i=1}^{\infty} \sum_{j=1}^{n} a_{i j} \\
&=\lim _{n \rightarrow \infty} \sum_{j=1}^{n} \sum_{i=1}^{\infty} a_{i j}=\sum_{j=1}^{\infty} \sum_{i=1}^{\infty} a_{i j}
\end{aligned}
$$

**8.4 Theorem** *Suppose
$$
f(x)=\sum_{n=0}^{\infty} c_{n} x^{n},
$$
the series converging in $|x|<R$. If $-R<a<R$, then $f$ can be expanded in a power series about the point $x=a$ which converges in $|x-a|<R-|a|$, and*

$$
f(x)=\sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n !}(x-a)^{n} \quad(|x-a|<R-|a|) .
$$

This is an extension of Theorem $5.15$ and is also known as Taylor's theorem.

**Proof** We have
$$
\begin{aligned}
f(x) &=\sum_{n=0}^{\infty} c_{n}[(x-a)+a]^{n} \\
&=\sum_{n=0}^{\infty} c_{n} \sum_{m=0}^{n}\left(\begin{array}{c}
n \\
m
\end{array}\right) a^{n-m}(x-a)^{m} \\
&=\sum_{m=0}^{\infty}\left[\sum_{n=m}^{\infty}\left(\begin{array}{c}
n \\
m
\end{array}\right) c_{n} a^{n-m}\right](x-a)^{m} .
\end{aligned}
$$

This is the desired expansion about the point $x=a$. To prove its validity, we have to justify the change which was made in the order of summation. Theorem $8.3$ shows that this is permissible if

$$
\sum_{n=0}^{\infty} \sum_{m=0}^{n}\left|c_{n}\left(\begin{array}{c}
n \\
m
\end{array}\right) a^{n-m}(x-a)^{m}\right|
$$

converges. But (18) is the same as

$$
\sum_{n=0}^{\infty}\left|c_{n}\right| \cdot(|x-a|+|a|)^{n}
$$

and (19) converges if $|x-a|+|a|<R$.
Finally, the form of the coefficients in (17) follows from (7).
It should be noted that (17) may actually converge in a larger interval than the one given by $|x-a|<R-|a|$.

If two power series converge to the same function in $(-R, R),(7)$ shows that the two series must be identical, i.e., they must have the same coefficients. It is interesting that the same conclusion can be deduced from much weaker hypotheses:



**8.5 Theorem** *Suppose the series $\Sigma a_{n} x^{n}$ and $\Sigma b_{n} x^{n}$ converge in the segment $S=(-R, R)$. Let $E$ be the set of all $x \in S$ at which
$$
\sum_{n=0}^{\infty} a_{n} x^{n}=\sum_{n=0}^{\infty} b_{n} x^{n}
$$
If $E$ has a limit point in $S$, then $a_{n}=b_{n}$ for $n=0,1,2, \ldots$.Hence (20) holds for all $x \in S$.*

**Proof** Put $c_{n}=a_{n}-b_{n}$ and

$$
f(x)=\sum_{n=0}^{\infty} c_{n} x^{n} \quad(x \in S) .
$$

Then $f(x)=0$ on $E$.

Let $A$ be the set of all limit points of $E$ in $S$, and let $B$ consist of all other points of $S$. It is clear from the definition of "limit point" that $B$ is open. Suppose we can prove that $A$ is open. Then $A$ and $B$ are disjoint open sets. Hence they are separated (Definition 2.45). Since $S=A \cup B$, and $S$ is connected, one of $A$ and $B$ must be empty. By hypothesis, $A$ is not empty. Hence $B$ is empty, and $A=S$. Since $f$ is continuous in $S$, $A \subset E$. Thus $E=S$, and (7) shows that $c_{n}=0$ for $n=0,1,2, \ldots$, which is the desired conclusion.

Thus we have to prove that $A$ is open. If $x_{0} \in A$, Theorem $8.4$ shows that

$$
f(x)=\sum_{n=0}^{\infty} d_{n}\left(x-x_{0}\right)^{n} \quad\left(\left|x-x_{0}\right|<R-\left|x_{0}\right|\right) .
$$

We claim that $d_{n}=0$ for all $n$. Otherwise, let $k$ be the smallest nonnegative integer such that $d_{k} \neq 0$. Then

$$
f(x)=\left(x-x_{0}\right)^{k} g(x) \quad\left(\left|x-x_{0}\right|<R-\left|x_{0}\right|\right),
$$

where

$$
g(x)=\sum_{m=0}^{\infty} d_{k+m}\left(x-x_{0}\right)^{m} .
$$

Since $g$ is continuous at $x_{0}$ and

$$
g\left(x_{0}\right)=d_{k} \neq 0,
$$

there exists a $\delta>0$ such that $g(x) \neq 0$ if $\left|x-x_{0}\right|<\delta$. It follows from (23) that $f(x) \neq 0$ if $0<\left|x-x_{0}\right|<\delta$. But this contradicts the fact that $x_{0}$ is a limit point of $E$.

Thus $d_{n}=0$ for all $n$, so that $f(x)=0$ for all $x$ for which (22) holds, i.e., in a neighborhood of $x_{0}$. This shows that $A$ is open, and completes the proof.

