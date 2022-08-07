---
title: 5 UNIFORM CONVERGENCE AND DIFFERENTIATION
date: 2022-08-02
---

We have already seen, in Example 7.5, that uniform convergence of $\left\{f_{n}\right\}$ implies nothing about the sequence $\left\{f_{n}^{\prime}\right\}$. Thus stronger hypotheses are required for the assertion that $f_{n}^{\prime} \rightarrow f^{\prime}$ if $f_{n} \rightarrow f$.

**7.17 Theorem** *Suppose $\left\{f_{n}\right\}$ is a sequence of functions, differentiable on $[a, b]$ and such that $\left\{f_{n}\left(x_{0}\right)\right\}$ converges for some point $x_{0}$ on $[a, b]$. If $\left\{f_{n}^{\prime}\right\}$ converges uniformly on $[a, b]$, then $\left\{f_{n}\right\}$ converges uniformly on $[a, b]$, to a function $f$, and
$$
f^{\prime}(x)=\lim _{n \rightarrow \infty} f_{n}^{\prime}(x) \quad(a \leq x \leq b) .
$$*

**Proof** Let $\varepsilon>0$ be given. Choose $N$ such that $n \geq N, m \geq N$, implies

$$
\left|f_{n}\left(x_{0}\right)-f_{m}\left(x_{0}\right)\right|<\frac{\varepsilon}{2}
$$

and

$$
\left|f_{n}^{\prime}(t)-f_{m}^{\prime}(t)\right|<\frac{\varepsilon}{2(b-a)} \quad(a \leq t \leq b)
$$

If we apply the mean value theorem $5.19$ to the function $f_{n}-f_{m},(29)$ shows that

$$
\left|f_{n}(x)-f_{m}(x)-f_{n}(t)+f_{m}(t)\right| \leq \frac{|x-t| \varepsilon}{2(b-a)} \leq \frac{\varepsilon}{2}
$$

for any $x$ and $t$ on $[a, b]$, if $n \geq N, m \geq N$. The inequality

$$
\left|f_{n}(x)-f_{m}(x)\right| \leq\left|f_{n}(x)-f_{m}(x)-f_{n}\left(x_{0}\right)+f_{m}\left(x_{0}\right)\right|+\left|f_{n}\left(x_{0}\right)-f_{m}\left(x_{0}\right)\right|
$$

implies, by (28) and (30), that

$$
\left|f_{n}(x)-f_{m}(x)\right|<\varepsilon \quad(a \leq x \leq b, n \geq N, m \geq N) \text {, }
$$

so that $\left\{f_{n}\right\}$ converges uniformly on $[a, b]$. Let

$$
f(x)=\lim _{n \rightarrow \infty} f_{n}(x) \quad(a \leq x \leq b) .
$$

Let us now fix a point $x$ on $[a, b]$ and define

$$
\phi_{n}(t)=\frac{f_{n}(t)-f_{n}(x)}{t-x}, \quad \phi(t)=\frac{f(t)-f(x)}{t-x}
$$

for $a \leq t \leq b, t \neq x$. Then

$$
\lim _{t \rightarrow x} \phi_{n}(t)=f_{n}^{\prime}(x) \quad(n=1,2,3, \ldots) \text {. }
$$

The first inequality in (30) shows that

$$
\left|\phi_{n}(t)-\phi_{m}(t)\right| \leq \frac{\varepsilon}{2(b-a)} \quad(n \geq N, m \geq N),
$$

so that $\left\{\phi_{n}\right\}$ converges uniformly, for $t \neq x$. Since $\left\{f_{n}\right\}$ converges to $f$, we conclude from (31) that

$$
\lim _{n \rightarrow \infty} \phi_{n}(t)=\phi(t)
$$

uniformly for $a \leq t \leq b, t \neq x$.

If we now apply Theorem $7.11$ to $\left\{\phi_{n}\right\},(32)$ and (33) show that

$$
\lim _{t \rightarrow x} \phi(t)=\lim _{n \rightarrow \infty} f_{n}^{\prime}(x) \text {; }
$$

and this is (27), by the definition of $\phi(t)$.

Remark: If the continuity of the functions $f_{n}^{\prime}$ is assumed in addition to the above hypotheses, then a much shorter proof of (27) can be based on Theorem $7.16$ and the fundamental theorem of calculus.


**7.18** *Theorem There exists a real continuous function on the real line which is nowhere differentiable.*

**Proof** Define

$$
\varphi(x)=|x| \quad(-1 \leq x \leq 1)
$$

and extend the definition of $\varphi(x)$ to all real $x$ by requiring that

$$
\varphi(x+2)=\varphi(x) .
$$

Then, for all $s$ and $t$

$$
|\varphi(s)-\varphi(t)| \leq|s-t| .
$$

In particular, $\varphi$ is continuous on $R^{1}$. Define

$$
f(x)=\sum_{n=0}^{\infty}\left(\frac{3}{4}\right)^{n} \varphi\left(4^{n} x\right) .
$$

Since $0 \leq \varphi \leq 1$, Theorem $7.10$ shows that the series (37) converges uniformly on $R^{1}$. By Theorem 7.12, $f$ is continuous on $R^{1}$.

Now fix a real number $x$ and a positive integer $m$. Put

$$
\delta_{m}=\pm \frac{1}{2} \cdot 4^{-m}
$$

where the sign is so chosen that no integer lies between $4^{m} x$ and $4^{m}\left(x+\delta_{m}\right)$. This can be done, since $4^{m}\left|\delta_{m}\right|=\frac{1}{2}$. Define

$$
\gamma_{n}=\frac{\varphi\left(4^{n}\left(x+\delta_{m}\right)\right)-\varphi\left(4^{n} x\right)}{\delta_{m}} \text {. }
$$

When $n>m$, then $4^{n} \delta_{m}$ is an even integer, so that $\gamma_{n}=0$. When $0 \leq n \leq m$, (36) implies that $\left|\gamma_{n}\right| \leq 4^{n}$.

Since $\left|\gamma_{m}\right|=4^{m}$, we conclude that

$$
\begin{aligned}
\left|\frac{f\left(x+\delta_{m}\right)-f(x)}{\delta_{m}}\right| &=\mid \sum_{n=0}^{m}\left(\frac{3}{4}\right)^{n} \gamma_{n} \\
& \geq 3^{m}-\sum_{n=0}^{m-1} 3^{n} \\
&=\frac{1}{2}\left(3^{m}+1\right) .
\end{aligned}
$$

As $m \rightarrow \infty, \delta_{m} \rightarrow 0$. It follows that $f$ is not differentiable at $x$.
