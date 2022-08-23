--- 
title: 5 FOURIER SERIES.md
date: 2022-08-10
---

**8.9 Definition** A trigonometric polynomial is a finite sum of the form

$$
f(x)=a_{0}+\sum_{n=1}^{N}\left(a_{n} \cos n x+b_{n} \sin n x\right) \quad(x \text { real), }
$$

where $a_{0}, \ldots, a_{N}, b_{1}, \ldots, b_{N}$ are complex numbers. On account of the identities (46), (59) can also be written in the form

$$
f(x)=\sum_{-N}^{N} c_{n} e^{i n x} \quad(x \text { real }),
$$

which is more convenient for most purposes. It is clear that every trigonometric polynomial is periodic, with period $2 \pi$.

If $n$ is a nonzero integer, $e^{i n x}$ is the derivative of $e^{i n x} / i n$, which also has period $2 \pi$. Hence

$$
\frac{1}{2 \pi} \int_{-\pi}^{\pi} e^{i n x} d x= \begin{cases}1 & (\text { if } n=0) \\ 0 & \text { (if } n=\pm 1, \pm 2, \ldots)\end{cases}
$$

Let us multiply (60) by $e^{-i m x}$, where $m$ is an integer; if we integrate the product, (61) shows that

$$
c_{m}=\frac{1}{2 \pi} \int_{-\pi}^{\pi} f(x) e^{-i m x} d x
$$

for $|m| \leq N$. If $|m|>N$, the integral in (62) is 0 .
The following observation can be read off from (60) and (62): The trigonometric polynomial $f$, given by (60), is real if and only if $c_{-n}=\bar{c}_{n}$ for $n=0, \ldots, N$.

In agreement with (60), we define a trigonometric series to be a series of the form

$$
\sum_{-\infty}^{\infty} c_{n} e^{i n x} \quad(x \text { real }) \text {; }
$$

the $N$ th partial sum of (63) is defined to be the right side of (60).
If $f$ is an integrable function on $[-\pi, \pi]$, the numbers $c_{m}$ defined by (62) for all integers $m$ are called the Fourier coefficients of $f$, and the series (63) formed with these coefficients is called the Fourier series of $f$.

The natural question which now arises is whether the Fourier series of $f$ converges to $f$, or, more generally, whether $f$ is determined by its Fourier series. That is to say, if we know the Fourier coefficients of a function, can we find the function, and if so, how?

The study of such series, and, in particular, the problem of representing a given function by a trigonometric series, originated in physical problems such as the theory of oscillations and the theory of heat conduction (Fourier's "Théorie analytique de la chaleur" was published in 1822). The many difficult and delicate problems which arose during this study caused a thorough revision and reformulation of the whole theory of functions of a real variable. Among many prominent names, those of Riemann, Cantor, and Lebesgue are intimately connected with this field, which nowadays, with all its generalizations and ramifications, may well be said to occupy a central position in the whole of analysis.

We shall be content to derive some basic theorems which are easily accessible by the methods developed in the preceding chapters. For more thorough investigations, the Lebesgue integral is a natural and indispensable tool.

We shall first study more general systems of functions which share a property analogous to (61).

**8.10 Definition** Let $\left\{\phi_{n}\right\}(n=1,2,3, \ldots)$ be a sequence of complex functions on $[a, b]$, such that

$$
\int_{a}^{b} \phi_{n}(x) \overline{\phi_{m}(x)} d x=0 \quad(n \neq m)
$$

Then $\left\{\phi_{n}\right\}$ is said to be an orthogonal system of functions on $[a, b]$. If, in addition,

$$
\int_{a}^{b}\left|\phi_{n}(x)\right|^{2} d x=1
$$

for all $n,\left\{\phi_{n}\right\}$ is said to be orthonormal.
For example, the functions $(2 \pi)^{-\frac{1}{2}} e^{i n x}$ form an orthonormal system on $[-\pi, \pi]$. So do the real functions

$$
\frac{1}{\sqrt{2 \pi}}, \frac{\cos x}{\sqrt{\pi}}, \frac{\sin x}{\sqrt{\pi}}, \frac{\cos 2 x}{\sqrt{\pi}}, \frac{\sin 2 x}{\sqrt{\pi}}, \cdots .
$$

If $\left\{\phi_{n}\right\}$ is orthonormal on $[a, b]$ and if

$$
c_{n}=\int_{a}^{b} f(t) \overline{\phi_{n}(t)} d t \quad(n=1,2,3, \ldots),
$$

we call $c_{n}$ the $n$th Fourier coefficient of $f$ relative to $\left\{\phi_{n}\right\}$. We write

$$
f(x) \sim \sum_{1}^{\infty} c_{n} \phi_{n}(x)
$$

and call this series the Fourier series of $f$ (relative to $\left\{\phi_{n}\right\}$ ).

Note that the symbol $\sim$ used in (67) implies nothing about the convergence of the series; it merely says that the coefficients are given by (66).

The following theorems show that the partial sums of the Fourier series of $f$ have a certain minimum property. We shall assume here and in the rest of this chapter that $f \in \mathscr{R}$, although this hypothesis can be weakened.

8.11 Theorem Let $\left\{\phi_{n}\right\}$ be orthonormal on $[a, b]$. Let

$$
s_{n}(x)=\sum_{m=1}^{n} c_{m} \phi_{m}(x)
$$

be the nth partial sum of the Fourier series of $f$, and suppose

$$
t_{n}(x)=\sum_{m=1}^{n} \gamma_{m} \phi_{m}(x) .
$$

Then

$$
\int_{a}^{b}\left|f-s_{n}\right|^{2} d x \leq \int_{a}^{b}\left|f-t_{n}\right|^{2} d x,
$$

and equality holds if and only if

$$
\gamma_{m}=c_{m} \quad(m=1, \ldots, n) .
$$

That is to say, among all functions $t_{n}$, $s_{n}$ gives the best possible mean square approximation to $f$.

**Proof** Let $\int$ denote the integral over $[a, b], \Sigma$ the sum from 1 to $n$. Then

$$
\int f \bar{t}_{n}=\int f \sum \bar{\gamma}_{m} \bar{\phi}_{m}=\sum c_{m} \bar{\gamma}_{m}
$$

by the definition of $\left\{c_{m}\right\}$,

$$
\int\left|t_{n}\right|^{2}=\int t_{n} \bar{t}_{n}=\int \sum \gamma_{m} \phi_{m} \sum \bar{\gamma}_{k} \bar{\phi}_{k}=\sum\left|\gamma_{m}\right|^{2}
$$

since $\left\{\phi_{m}\right\}$ is orthonormal, and so

$$
\begin{aligned}
\int\left|f-t_{n}\right|^{2} &=\int|f|^{2}-\int f \bar{t}_{n}-\int f t_{n}+\int\left|t_{n}\right|^{2} \\
&=\int|f|^{2}-\sum c_{m} \bar{\gamma}_{m}-\sum \bar{c}_{m} \gamma_{m}+\sum \gamma_{m} \bar{\gamma}_{m} \\
&=\int|f|^{2}-\sum\left|c_{m}\right|^{2}+\sum\left|\gamma_{m}-c_{m}\right|^{2}
\end{aligned}
$$

which is evidently minimized if and only if $\gamma_{m}=c_{m}$.
Putting $\gamma_{m}=c_{m}$ in this calculation, we obtain

$$
\begin{aligned}
&\int_{a}^{b}\left|s_{n}(x)\right|^{2} d x=\sum_{1}^{n}\left|c_{m}\right|^{2} \leq \int_{a}^{b}|f(x)|^{2} d x, \\
&\text { since } \int\left|f-t_{n}\right|^{2} \geq 0
\end{aligned}
$$

**8.12 Theorem** If $\left\{\phi_{n}\right\}$ is orthonormal on $[a, b]$, and if

$$
f(x) \sim \sum_{n=1}^{\infty} c_{n} \phi_{n}(x)
$$

then

$$
\sum_{n=1}^{\infty}\left|c_{n}\right|^{2} \leq \int_{a}^{b}|f(x)|^{2} d x
$$

In particular,

$$
\lim _{n \rightarrow \infty} c_{n}=0 .
$$

**Proof** Letting $n \rightarrow \infty$ in (72), we obtain (73), the so-called "Bessel inequality."

**8.13 Trigonometric series** From now on we shall deal only with the trigonometric system. We shall consider functions $f$ that have period $2 \pi$ and that are Riemann-integrable on $[-\pi, \pi]$ (and hence on every bounded interval). The Fourier series of $f$ is then the series (63) whose coefficients $c_{n}$ are given by the integrals $(62)$, and

$$
s_{N}(x)=s_{N}(f ; x)=\sum_{-N}^{N} c_{n} e^{i n x}
$$

is the $N$ th partial sum of the Fourier series of $f$. The inequality (72) now takes the form

(76) $\frac{1}{2 \pi} \int_{-\pi}^{\pi}\left|s_{N}(x)\right|^{2} d x=\sum_{-N}^{N}\left|c_{n}\right|^{2} \leq \frac{1}{2 \pi} \int_{-\pi}^{\pi}|f(x)|^{2} d x$.

In order to obtain an expression for $s_{N}$ that is more manageable than (75) we introduce the Dirichlet kernel

$$
D_{N}(x)=\sum_{n=-N}^{N} e^{i n x}=\frac{\sin \left(N+\frac{1}{2}\right) x}{\sin (x / 2)} .
$$

The first of these equalities is the definition of $D_{N}(x)$. The second follows if both sides of the identity

$$
\left(e^{i x}-1\right) D_{N}(x)=e^{i(N+1) x}-e^{-i N x}
$$

are multiplied by $e^{-i x / 2}$.
By (62) and (75), we have

$$
\begin{aligned}
s_{N}(f ; x) &=\sum_{-N}^{N} \frac{1}{2 \pi} \int_{-\pi}^{\pi} f(t) e^{-i n t} d t e^{i n x} \\
&=\frac{1}{2 \pi} \int_{-\pi}^{\pi} f(t) \sum_{-N}^{N} e^{i n(x-t)} d t
\end{aligned}
$$

so that

$$
s_{N}(f ; x)=\frac{1}{2 \pi} \int_{-\pi}^{\pi} f(t) D_{N}(x-t) d t=\frac{1}{2 \pi} \int_{-\pi}^{\pi} f(x-t) D_{N}(t) d t
$$

The periodicity of all functions involved shows that it is immaterial over which interval we integrate, as long as its length is $2 \pi$. This shows that the two integrals in (78) are equal.

We shall prove just one theorem about the pointwise convergence of Fourier series.

8.14 Theorem If, for some $x$, there are constants $\delta>0$ and $M<\infty$ such that

$$
|f(x+t)-f(x)| \leq M|t|
$$

for all $t \in(-\delta, \delta)$, then

$$
\lim _{N \rightarrow \infty} s_{N}(f ; x)=f(x)
$$

Proof Define

$$
g(t)=\frac{f(x-t)-f(x)}{\sin (t / 2)}
$$

for $0<|t| \leq \pi$, and put $g(0)=0$. By the definition (77),

$$
\frac{1}{2 \pi} \int_{-\pi}^{\pi} D_{N}(x) d x=1 .
$$

Hence (78) shows that

$$
\begin{aligned}
s_{N}(f ; x) &-f(x)=\frac{1}{2 \pi} \int_{-\pi}^{\pi} g(t) \sin \left(N+\frac{1}{2}\right) t d t \\
&=\frac{1}{2 \pi} \int_{-\pi}^{\pi}\left[g(t) \cos \frac{t}{2}\right] \sin N t d t+\frac{1}{2 \pi} \int_{-\pi}^{\pi}\left[g(t) \sin \frac{t}{2}\right] \cos N t d t
\end{aligned}
$$

By (79) and (81), $g(t) \cos (t / 2)$ and $g(t) \sin (t / 2)$ are bounded. The last two integrals thus tend to 0 as $N \rightarrow \infty$, by (74). This proves $(80)$.

Corollary If $f(x)=0$ for all $x$ in some segment $J$, then $\lim s_{N}(f ; x)=0$ for every $x \in J$.
Here is another formulation of this corollary:
If $f(t)=g(t)$ for all $t$ in some neighborhood of $x$, then

$$
s_{N}(f ; x)-s_{N}(g ; x)=s_{N}(f-g ; x) \rightarrow 0 \text { as } N \rightarrow \infty .
$$

This is usually called the localization theorem. It shows that the behavior of the sequence $\left\{s_{N}(f ; x)\right\}$, as far as convergence is concerned, depends only on the values of $f$ in some (arbitrarily small) neighborhood of $x$. Two Fourier series may thus have the same behavior in one interval, but may behave in entirely different ways in some other interval. We have here a very striking contrast between Fourier series and power series (Theorem 8.5).

We conclude with two other approximation theorems.

**8.15 Theorem** If $f$ is continuous (with period $2 \pi$ ) and if $\varepsilon>0$, then there is a trigonometric polynomial $P$ such that

$$
|P(x)-f(x)|<\varepsilon
$$

for all real $x$.

**Proof** If we identify $x$ and $x+2 \pi$, we may regard the $2 \pi$-periodic functions on $R^{1}$ as functions on the unit circle $T$, by means of the mapping $x \rightarrow e^{i x}$. The trigonometric polynomials, i.e., the functions of the form (60), form a self-adjoint algebra $\mathscr{A}$, which separates points on $T$, and which vanishes at no point of $T$. Since $T$ is compact, Theorem $7.33$ tells us that $\mathscr{A}$ is dense in $\mathscr{C}(T)$. This is exactly what the theorem asserts.

A more precise form of this theorem appears in Exercise $15 .$

**8.16 Parseval's theorem** Suppose $f$ and $g$ are Riemann-integrable functions with period $2 \pi$, and

$$
f(x) \sim \sum_{-\infty}^{\infty} c_{n} e^{i n x}, \quad g(x) \sim \sum_{-\infty}^{\infty} \gamma_{n} e^{i n x}
$$

Then

$$
\begin{aligned}
\lim _{N \rightarrow \infty} \frac{1}{2 \pi} \int_{-\pi}^{\pi}\left|f(x)-s_{N}(f ; x)\right|^{2} d x &=0 \\
\frac{1}{2 \pi} \int_{-\pi}^{\pi} f(x) \overline{g(x)} d x &=\sum_{-\infty}^{\infty} c_{n} \bar{\gamma}_{n} \\
\frac{1}{2 \pi} \int_{-\pi}^{\pi}|f(x)|^{2} d x &=\sum_{-\infty}^{\infty}\left|c_{n}\right|^{2}
\end{aligned}
$$

**Proof** Let us use the notation

$$
\|h\|_{2}=\left\{\frac{1}{2 \pi} \int_{-\pi}^{\pi}|h(x)|^{2} d x\right\}^{1 / 2}
$$

Let $\varepsilon>0$ be given. Since $f \in \mathscr{R}$ and $f(\pi)=f(-\pi)$, the construction described in Exercise 12 of Chap. 6 yields a continuous $2 \pi$-periodic function $h$ with

$$
\|f-h\|_{2}<\varepsilon .
$$

By Theorem $8.15$, there is a trigonometric polynomial $P$ such that $|h(x)-P(x)|<\varepsilon$ for all $x$. Hence $\|h-P\|_{2}<\varepsilon$. If $P$ has degree $N_{0}$, Theorem $8.11$ shows that

$$
\left\|h-s_{N}(h)\right\|_{2} \leq\|h-P\|_{2}<\varepsilon
$$

for all $N \geq N_{0}$. By $(72)$, with $h-f$ in place of $f$,

$$
\left\|s_{N}(h)-s_{N}(f)\right\|_{2}=\left\|s_{N}(h-f)\right\|_{2} \leq\|h-f\|_{2}<\varepsilon .
$$

Now the triangle inequality (Exercise 11, Chap. 6), combined with $(87),(88)$, and $(89)$, shows that

$$
\left\|f-s_{N}(f)\right\|_{2}<3 \varepsilon \quad\left(N \geq N_{0}\right)
$$

This proves (83). Next,

$$
\frac{1}{2 \pi} \int_{-\pi}^{\pi} s_{N}(f) \bar{g} d x=\sum_{-N}^{N} c_{n} \frac{1}{2 \pi} \int_{-\pi}^{\pi} e^{i n x} \overline{g(x)} d x=\sum_{-N}^{N} c_{n} \bar{\gamma}_{n}
$$

and the Schwarz inequality shows that

$$
\left|\int f \bar{g}-\int s_{N}(f) \bar{g}\right| \leq \int\left|f-s_{N}(f) \| g\right| \leq\left\{\int\left|f-s_{N}\right|^{2} \int|g|^{2}\right\}^{1 / 2}
$$

which tends to 0 , as $N \rightarrow \infty$, by (83). Comparison of (91) and (92) gives (84). Finally, (85) is the special case $g=f$ of (84).
A more general version of Theorem $8.16$ appears in Chap. $11 .$

