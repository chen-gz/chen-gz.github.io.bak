---
title: DEFINITION AND EXISTENCE OF THE INTEGRAL
date: 2022-07-29
---

**6.1 Definition** Let $[a, b]$ be a given interval. By a partition $P$ of $[a, b]$ we mean a finite set of points $x_{0}, x_{1}, \ldots, x_{n}$, where

$$
a=x_{0} \leq x_{1} \leq \cdots \leq x_{n-1} \leq x_{n}=b .
$$

We write

$$
\Delta x_{i}=x_{i}-x_{i-1} \quad(i=1, \ldots, n)
$$

Now suppose $f$ is a bounded real function defined on $[a, b]$. Corresponding to each partition $P$ of $[a, b]$ we put

$$
\begin{aligned}
M_{i} &=\sup f(x) & &\left(x_{i-1} \leq x \leq x_{i}\right) \\
m_{i} &=\inf f(x) & &\left(x_{i-1} \leq x \leq x_{i}\right) \\
U(P, f) &=\sum_{i=1}^{n} M_{i} \Delta x_{i}, & \\
L(P, f) &=\sum_{i=1}^{n} m_{i} \Delta x_{i}, &
\end{aligned}
$$

and finally

$$
\begin{aligned}
&\int_{a}^{b} f d x=\inf U(P, f) \\
&\int_{a}^{b} f d x=\sup L(P, f)
\end{aligned}
$$

where the inf and the sup are taken over all partitions $P$ of $[a, b]$. The left members of (1) and (2) are called the upper and lower Riemann integrals of $f$ over $[a, b]$, respectively.

If the upper and lower integrals are equal, we say that $f$ is Riemannintegrable on $[a, b]$, we write $f \in \mathscr{R}$ (that is, $\mathscr{R}$ denotes the set of Riemannintegrable functions), and we denote the common value of (1) and (2) by

$$
\int_{a}^{b} f d x
$$

or by

$$
\int_{a}^{b} f(x) d x .
$$

This is the Riemann integral of $f$ over $[a, b]$. Since $f$ is bounded, there exist two numbers, $m$ and $M$, such that

$$
m \leq f(x) \leq M \quad(a \leq x \leq b) .
$$

Hence, for every $P$

$$
m(b-a) \leq L(P, f) \leq U(P, f) \leq M(b-a),
$$

so that the numbers $L(P, f)$ and $U(P, f)$ form a bounded set. This shows that the upper and lower integrals are defined for every bounded function $f$. The question of their equality, and hence the question of the integrability of $f$, is a more delicate one. Instead of investigating it separately for the Riemann integral, we shall immediately consider a more general situation. 

**6.2 Definition** Let $\alpha$ be a monotonically increasing function on $[a, b]$ (since $\alpha(a)$ and $\alpha(b)$ are finite, it follows that $\alpha$ is bounded on $[a, b])$. Corresponding to each partition $P$ of $[a, b]$, we write
$$
\Delta \alpha_{i}=\alpha\left(x_{i}\right)-\alpha\left(x_{i-1}\right) .
$$

It is clear that $\Delta \alpha_{i} \geq 0$. For any real function $f$ which is bounded on $[a, b]$ we put

$$
\begin{aligned}
&U(P, f, \alpha)=\sum_{i=1}^{n} M_{i} \Delta \alpha_{i}, \\
&L(P, f, \alpha)=\sum_{i=1}^{n} m_{i} \Delta \alpha_{i},
\end{aligned}
$$

where $M_{i}, m_{i}$ have the same meaning as in Definition 6.1, and we define

$$
\begin{aligned}
&\bar{\int}_{a}^{b} f d \alpha=\inf U(P, f, \alpha), \\
&\int_{a}^{b} f d \alpha=\sup L(P, f, \alpha),
\end{aligned}
$$

the inf and sup again being taken over all partitions.

If the left members of (5) and (6) are equal, we denote their common value by

$$
\int_{a}^{b} f d \alpha
$$

or sometimes by

$$
\int_{a}^{b} f(x) d \alpha(x) .
$$

This is the Riemann-Stieltjes integral (or simply the Stieltjes integral) of $f$ with respect to $\alpha$, over $[a, b]$.

If (7) exists, i.e., if (5) and (6) are equal, we say that $f$ is integrable with respect to $\alpha$, in the Riemann sense, and write $f \in \mathscr{R}(\alpha)$.

By taking $\alpha(x)=x$, the Riemann integral is seen to be a special case of the Riemann-Stieltjes integral. Let us mention explicitly, however, that in the general case $\alpha$ need not even be continuous.

A few words should be said about the notation. We prefer (7) to (8), since the letter $x$ which appears in (8) adds nothing to the content of (7). It is immaterial which letter we use to represent the so-called "variable of integration." For instance, (8) is the same as

$$
\int_{a}^{b} f(y) d \alpha(y)
$$

The integral depends on $f, \alpha, a$ and $b$, but not on the variable of integration, which may as well be omitted.

The role played by the variable of integration is quite analogous to that of the index of summation: The two symbols

$$
\sum_{i=1}^{n} c_{i}, \quad \sum_{k=1}^{n} c_{k}
$$

mean the same thing, since each means $c_{1}+c_{2}+\cdots+c_{n}$.

Of course, no harm is done by inserting the variable of integration, and in many cases it is actually convenient to do so.

**We shall now investigate the existence of the integral (7). Without saying so every time, $f$ will be assumed real and bounded, and $\alpha$ monotonically increasing on $[a, b]$; and, when there can be no misunderstanding, we shall write $\int$ in place of $\int_{a}^{b}$**

**6.3 Definition** We say that the partition $P^{*}$ is a refinement of $P$ if $P^{*} \supset P$ (that is, if every point of $P$ is a point of $P^{*}$ ). Given two partitions, $P_{1}$ and $P_{2}$, we say that $P^{*}$ is their common refinement if $P^{*}=P_{1} \cup P_{2}$.

**6.4 Theorem** If $P^{*}$ is a refinement of $P$, then
$$
L(P, f, \alpha) \leq L\left(P^{*}, f, \alpha\right)
$$

and

$$
U\left(P^{*}, f, \alpha\right) \leq U(P, f, \alpha) .
$$

Proof To prove (9), suppose first that $P^{*}$ contains just one point more than $P$. Let this extra point be $x^{*}$, and suppose $x_{i-1}<x^{*}<x_{i}$, where $x_{i-1}$ and $x_{i}$ are two consecutive points of $P$. Put

Clearly $w_{1} \geq m_{i}$ and $w_{2} \geq m_{i}$, where, as before,

$$
m_{i}=\inf f(x) \quad\left(x_{i-1} \leq x \leq x_{i}\right) .
$$

Hence

$$
\begin{aligned}
&L\left(P^{*}, f, \alpha\right)-L(P, f, \alpha) \\
&\quad=w_{1}\left[\alpha\left(x^{*}\right)-\alpha\left(x_{i-1}\right)\right]+w_{2}\left[\alpha\left(x_{i}\right)-\alpha\left(x^{*}\right)\right]-m_{i}\left[\alpha\left(x_{i}\right)-\alpha\left(x_{i-1}\right)\right] \\
&\quad=\left(w_{1}-m_{i}\right)\left[\alpha\left(x^{*}\right)-\alpha\left(x_{i-1}\right)\right]+\left(w_{2}-m_{i}\right)\left[\alpha\left(x_{i}\right)-\alpha\left(x^{*}\right)\right] \geq 0 .
\end{aligned}
$$

If $P^{*}$ contains $k$ points more than $P$, we repeat this reasoning $k$ times, and arrive at (9). The proof of $(10)$ is analogous.

$$
\begin{aligned}
& w_{1}=\inf f(x) \quad\left(x_{i-1} \leq x \leq x^{*}\right), \\
& w_{2}=\inf f(x) \quad\left(x^{*} \leq x \leq x_{i}\right) \text {. } 
\end{aligned}
$$

**6.5 Theorem** $\int_{a}^{b} f d \alpha \leq \int_{a}^{b} f d \alpha$.

Proof Let $P^{*}$ be the common refinement of two partitions $P_{1}$ and $P_{2}$. By Theorem 6.4,

$$
L\left(P_{1}, f, \alpha\right) \leq L\left(P^{*}, f, \alpha\right) \leq U\left(P^{*}, f, \alpha\right) \leq U\left(P_{2}, f, \alpha\right) .
$$

Hence

$$
L\left(P_{1}, f, \alpha\right) \leq U\left(P_{2}, f, \alpha\right) .
$$

If $P_{2}$ is fixed and the sup is taken over all $P_{1},(11)$ gives

$$
\int f d \alpha \leq U\left(P_{2}, f, \alpha\right)
$$

The theorem follows by taking the inf over all $P_{2}$ in (12).

**6.6 Theorem** $f \in \mathscr{R}(\alpha)$ on $[a, b]$ if and only if for every $\varepsilon>0$ there exists a partition $P$ such that
$$
U(P, f, \alpha)-L(P, f, \alpha)<\varepsilon .
$$

Proof For every $P$ we have

$$
L(P, f, \alpha) \leq \int f d \alpha \leq \bar{\int} f d \alpha \leq U(P, f, \alpha) .
$$

Thus (13) implies

$$
0 \leq \bar{\int} f d \alpha-\int_{-} f d \alpha<\varepsilon .
$$

Hence, if (13) can be satisfied for every $\varepsilon>0$, we have

$$
\int f d \alpha=\int_{-} f d \alpha
$$

that is, $f \in \mathscr{R}(\alpha)$.

Conversely, suppose $f \in \mathscr{R}(\alpha)$, and let $\varepsilon>0$ be given. Then there exist partitions $P_{1}$ and $P_{2}$ such that

$$
\begin{aligned}
&U\left(P_{2}, f, \alpha\right)-\int f d \alpha<\frac{\varepsilon}{2} \\
&\int f d \alpha-L\left(P_{1}, f, \alpha\right)<\frac{\varepsilon}{2}
\end{aligned}
$$

We choose $P$ to be the common refinement of $P_{1}$ and $P_{2}$. Then Theorem $6.4$, together with (14) and (15), shows that

$$
U(P, f, \alpha) \leq U\left(P_{2}, f, \alpha\right)<\int f d \alpha+\frac{\varepsilon}{2}<L\left(P_{1}, f, \alpha\right)+\varepsilon \leq L(P, f, \alpha)+\varepsilon
$$

so that (13) holds for this partition $P$.

Theorem $6.6$ furnishes a convenient criterion for integrability. Before we apply it, we state some closely related facts.

**6.7 Theorem**

(a) If (13) holds for some $P$ and some $\varepsilon$, then (13) holds (with the same $\varepsilon$ ) for every refinement of $P$.

(b) If (13) holds for $P=\left\{x_{0}, \ldots, x_{n}\right\}$ and if $s_{i}, t_{i}$ are arbitrary points in $\left[x_{i-1}, x_{i}\right]$, then

$$
\sum_{i=1}^{n}\left|f\left(s_{i}\right)-f\left(t_{i}\right)\right| \Delta \alpha_{i}<\varepsilon .
$$

(c) If $f \in \mathscr{R}(\alpha)$ and the hypotheses of $(b)$ hold, then

$$
\left|\sum_{i=1}^{n} f\left(t_{i}\right) \Delta \alpha_{i}-\int_{a}^{b} f d \alpha\right|<\varepsilon .
$$

Proof Theorem $6.4$ implies (a). Under the assumptions made in (b), both $f\left(s_{i}\right)$ and $f\left(t_{i}\right)$ lie in $\left[m_{i}, M_{i}\right]$, so that $\left|f\left(s_{i}\right)-f\left(t_{i}\right)\right| \leq M_{i}-m_{i}$. Thus

$$
\sum_{i=1}^{n}\left|f\left(s_{i}\right)-f\left(t_{i}\right)\right| \Delta \alpha_{i} \leq U(P, f, \alpha)-L(P, f, \alpha),
$$

which proves $(b)$. The obvious inequalities

$$
L(P, f, \alpha) \leq \sum f\left(t_{i}\right) \Delta \alpha_{i} \leq U(P, f, \alpha)
$$

and

$$
L(P, f, \alpha) \leq \int f d \alpha \leq U(P, f, \alpha)
$$

prove $(c)$

**6.8 Theorem** If $f$ is continuous on $[a, b]$ then $f \in \mathscr{R}(\alpha)$ on $[a, b]$.

Proof Let $\varepsilon>0$ be given. Choose $\eta>0$ so that

$$
[\alpha(b)-\alpha(a)] \eta<\varepsilon .
$$

Since $f$ is uniformly continuous on $[a, b]$ (Theorem 4.19), there exists a $\delta>0$ such that

$$
|f(x)-f(t)|<\eta
$$

if $x \in[a, b], t \in[a, b]$, and $|x-t|<\delta$.

If $P$ is any partition of $[a, b]$ such that $\Delta x_{i}<\delta$ for all $i$, then (16) implies that

$$
M_{i}-m_{i} \leq \eta \quad(i-1, \ldots, n)
$$

and therefore

$$
\begin{array}{r}
U(P, f, \alpha)-L(P, f, \alpha)=\sum_{i=1}^{n}\left(M_{i}-m_{i}\right) \Delta \alpha_{i} \\
\leq \eta \sum_{i=1}^{n} \Delta \alpha_{i}=\eta[\alpha(b)-\alpha(a)]<\varepsilon .
\end{array}
$$

By Theorem 6.6, $f \in \mathscr{R}(\alpha)$.

**6.9 Theorem** If $f$ is monotonic on $[a, b]$, and if $\alpha$ is continuous on $[a, b]$, then $f \in \mathscr{R}(\alpha)$. (We still assume, of course, that $\alpha$ is monotonic.)

Proof Let $\varepsilon>0$ be given. For any positive integer $n$, choose a partition such that

$$
\Delta \alpha_{i}=\frac{\alpha(b)-\alpha(a)}{n} \quad(i=1, \ldots, n) .
$$

This is possible since $\alpha$ is continuous (Theorem 4.23).

We suppose that $f$ is monotonically increasing (the proof is analogous in the other case). Then

$$
M_{i}=f\left(x_{i}\right), \quad m_{i}=f\left(x_{i-1}\right) \quad(i=1, \ldots, n),
$$

so that

$$
\begin{aligned}
U(P, f, \alpha)-L(P, f, \alpha) &=\frac{\alpha(b)-\alpha(a)}{n} \sum_{i=1}^{n}\left[f\left(x_{i}\right)-f\left(x_{i-1}\right)\right] \\
&=\frac{\alpha(b)-\alpha(a)}{n} \cdot[f(b)-f(a)]<\varepsilon
\end{aligned}
$$

if $n$ is taken large enough. By Theorem 6.6, $f \in \mathscr{R}(\alpha)$.

**6.10 Theorem** Suppose $f$ is bounded on $[a, b], f$ has only finitely many points of discontinuity on $[a, b]$, and $\alpha$ is continuous at every point at which $f$ is discontinuous. Then $f \in \mathscr{R}(\alpha)$.

Proof Let $\varepsilon>0$ be given. Put $M=\sup |f(x)|$, let $E$ be the set of points at which $f$ is discontinuous. Since $E$ is finite and $\alpha$ is continuous at every point of $E$, we can cover $E$ by finitely many disjoint intervals $\left[u_{j}, v_{j}\right] \subset$ $[a, b]$ such that the sum of the corresponding differences $\alpha\left(v_{j}\right)-\alpha\left(u_{j}\right)$ is less than $\varepsilon$. Furthermore, we can place these intervals in such a way that every point of $E \cap(a, b)$ lies in the interior of some $\left[u_{j}, v_{j}\right]$. Remove the segments $\left(u_{j}, v_{j}\right)$ from $[a, b]$. The remaining set $K$ is compact. Hence $f$ is uniformly continuous on $K$, and there exists $\delta>0$ such that $|f(s)-f(t)|<\varepsilon$ if $s \in K, t \in K,|s-t|<\delta$.

Now form a partition $P=\left\{x_{0}, x_{1}, \ldots, x_{n}\right\}$ of $[a, b]$, as follows: Each $u_{j}$ occurs in $P$. Each $v_{j}$ occurs in $P$. No point of any segment $\left(u_{j}, v_{j}\right)$ occurs in $P$. If $x_{i-1}$ is not one of the $u_{j}$, then $\Delta x_{i}<\delta$.

Note that $M_{i}-m_{i} \leq 2 M$ for every $i$, and that $M_{i}-m_{i} \leq \varepsilon$ unless $x_{i-1}$ is one of the $u_{j}$. Hence, as in the proof of Theorem $6.8$,

$$
U(P, f, \alpha)-L(P, f, \alpha) \leq[\alpha(b)-\alpha(a)] \varepsilon+2 M \varepsilon .
$$

Since $\varepsilon$ is arbitrary, Theorem $6.6$ shows that $f \in \mathscr{R}(\alpha)$.

Note: If $f$ and $\alpha$ have a common point of discontinuity, then $f$ need not be in $\mathscr{R}(\alpha)$. Exercise 3 shows this.

**6.11 Theorem** Suppose $f \in \mathscr{R}(\alpha)$ on $[a, b], m \leq f \leq M, \phi$ is continuous on $[m, M]$, and $h(x)=\phi(f(x))$ on $[a, b]$. Then $h \in \mathscr{R}(\alpha)$ on $[a, b]$.

Proof Choose $\varepsilon>0$. Since $\phi$ is uniformly continuous on $[m, M]$, there exists $\delta>0$ such that $\delta<\varepsilon$ and $|\phi(s)-\phi(t)|<\varepsilon$ if $|s-t| \leq \delta$ and $s, t \in[m, M]$.

Since $f \in \mathscr{R}(\alpha)$, there is a partition $P=\left\{x_{0}, x_{1}, \ldots, x_{n}\right\}$ of $[a, b]$ such that

$$
U(P, f, \alpha)-L(P, f, \alpha)<\delta^{2} .
$$

Let $M_{i}, m_{i}$ have the same meaning as in Definition 6.1, and let $M_{i}^{*}, m_{i}^{*}$ be the analogous numbers for $h$. Divide the numbers $1, \ldots, n$ into two classes: $i \in A$ if $M_{i}-m_{i}<\delta, i \in B$ if $M_{i}-m_{i} \geq \delta$.

For $i \in A$, our choice of $\delta$ shows that $M_{i}^{*}-m_{i}^{*} \leq \varepsilon$.

For $i \in B, M_{i}^{*}-m_{i}^{*} \leq 2 K$, where $K=\sup |\phi(t)|, m \leq t \leq M$. By (18), we have

$$
\delta \sum_{i \in B} \Delta \alpha_{i} \leq \sum_{i \in B}\left(M_{i}-m_{i}\right) \Delta \alpha_{i}<\delta^{2}
$$

so that $\sum_{i \in B} \Delta \alpha_{i}<\delta$. It follows that

$$
\begin{aligned}
U(P, h, \alpha)-L(P, h, \alpha) &=\sum_{i \in A}\left(M_{i}^{*}-m_{i}^{*}\right) \Delta \alpha_{i}+\sum_{i \in B}\left(M_{i}^{*}-m_{i}^{*}\right) \Delta \alpha_{i} \\
& \leq \varepsilon[\alpha(b)-\alpha(a)]+2 K \delta<\varepsilon[\alpha(b)-\alpha(a)+2 K] .
\end{aligned}
$$

Since $\varepsilon$ was arbitrary, Theorem $6.6$ implies that $h \in \mathscr{R}(\alpha)$.

Remark: This theorem suggests the question: Just what functions are Riemann-integrable? The answer is given by Theorem $11.33(b)$. 

