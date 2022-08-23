---
title: 3 THE TRIGONOMETRIC FUNCTIONS
date: 2022-08-10
---

Let us define
(46) 
$$C(x)=\frac{1}{2}[E(i x)+E(-i x)], \quad S(x)=\frac{1}{2 i}[E(i x)-E(-i x)]$$.

We shall show that $C(x)$ and $S(x)$ coincide with the functions $\cos x$ and $\sin x$, whose definition is usually based on geometric considerations. By $(25), E(\bar{z})=$ $\overline{E(z)}$. Hence (46) shows that $C(x)$ and $S(x)$ are real for real $x$. Also,

$$
E(i x)=C(x)+i S(x) .
$$

Thus $C(x)$ and $S(x)$ are the real and imaginary parts, respectively, of $E(i x)$, if $x$ is real. By (27),

$$
|E(i x)|^{2}=E(i x) \overline{E(i x)}=E(i x) E(-i x)=1,
$$

so that

$$
|E(i x)|=1 \quad(x \text { real }) .
$$

From (46) we can read off that $C(0)=1, S(0)=0$, and (28) shows that

$$
C^{\prime}(x)=-S(x), \quad S^{\prime}(x)=C(x) .
$$

We assert that there exist positive numbers $x$ such that $C(x)=0$. For suppose this is not so. Since $C(0)=1$, it then follows that $C(x)>0$ for all $x>0$, hence $S^{\prime}(x)>0$, by (49), hence $S$ is strictly increasing; and since $S(0)=0$, we have $S(x)>0$ if $x>0$. Hence if $0<x<y$, we have

$$
S(x)(y-x)<\int_{x}^{y} S(t) d t=C(x)-C(y) \leq 2 \text {. }
$$

The last inequality follows from (48) and (47). Since $S(x)>0,(50)$ cannot be true for large $y$, and we have a contradiction.

Let $x_{0}$ be the smallest positive number such that $C\left(x_{0}\right)=0$. This exists, since the set of zeros of a continuous function is closed, and $C(0) \neq 0$. We define the number $\pi$ by

$$
\pi=2 x_{0} .
$$

Then $C(\pi / 2)=0$, and (48) shows that $S(\pi / 2)=\pm 1$. Since $C(x)>0$ in $(0, \pi / 2), S$ is increasing in $(0, \pi / 2)$; hence $S(\pi / 2)=1$. Thus

$$
E\left(\frac{\pi i}{2}\right)=i
$$

and the addition formula gives

$$
E(\pi i)=-1, \quad E(2 \pi i)=1 ;
$$

hence

$$
E(z+2 \pi i)=E(z) \quad(z \text { complex })
$$

**$8.7$ Theorem**
(a) The function $E$ is periodic, with period $2 \pi i$.
(b) The functions $C$ and $S$ are periodic, with period $2 \pi$.
(c) If $0<t<2 \pi$, then $E($ it $) \neq 1$.
(d) If $z$ is a complex number with $|z|=1$, there is a unique $t$ in $[0,2 \pi)$ such that $E(i t)=z$.

**Proof** By (53), (a) holds; and (b) follows from $(a)$ and (46).
Suppose $0<t<\pi / 2$ and $E(i t)=x+i y$, with $x, y$ real. Our preceding work shows that $0<x<1,0<y<1$. Note that

$$
E(4 i t)=(x+i y)^{4}=x^{4}-6 x^{2} y^{2}+y^{4}+4 i x y\left(x^{2}-y^{2}\right) .
$$

If $E(4 i t)$ is real, it follows that $x^{2}-y^{2}=0$; since $x^{2}+y^{2}=1$, by (48), we have $x^{2}=y^{2}=\frac{1}{2}$, hence $E(4 i t)=-1$. This proves $(c)$.
If $0 \leq t_{1}<t_{2}<2 \pi$, then

$$
E\left(i t_{2}\right)\left[E\left(i t_{1}\right)\right]^{-1}=E\left(i t_{2}-i t_{1}\right) \neq 1,
$$

by $(c)$. This establishes the uniqueness assertion in $(d)$.
To prove the existence assertion in $(d)$, fix $z$ so that $|z|=1$. Write $z=x+i y$, with $x$ and $y$ real. Suppose first that $x \geq 0$ and $y \geq 0$. On $[0, \pi / 2], C$ decreases from 1 to 0 . Hence $C(t)=x$ for some $t \in[0, \pi / 2]$. Since $C^{2}+S^{2}=1$ and $S \geq 0$ on $[0, \pi / 2]$, it follows that $z=E(i t)$.


If $x<0$ and $y \geq 0$, the preceding conditions are satisfied by $-i z$. Hence $-i z=E(i t)$ for some $t \in[0, \pi / 2]$, and since $i=E(\pi i / 2)$, we obtain $z=E(i(t+\pi / 2))$. Finally, if $y<0$, the preceding two cases show that

$-z=E(i t)$ for some $t \in(0, \pi)$. Hence $z=-E(i t)=E(i(t+\pi))$.
This proves $(d)$, and hence the theorem.
It follows from $(d)$ and (48) that the curve $\gamma$ defined by

$$
\gamma(t)=E(i t) \quad(0 \leq t \leq 2 \pi)
$$

is a simple closed curve whose range is the unit circle in the plane. Since $\gamma^{\prime}(t)=i E(i t)$, the length of $\gamma$ is

$$
\int_{0}^{2 \pi}\left|\gamma^{\prime}(t)\right| d t=2 \pi,
$$

by Theorem 6.27. This is of course the expected result for the circumference of a circle of radius 1 . It shows that $\pi$, defined by $(51)$, has the usual geometric significance.

In the same way we see that the point $\gamma(t)$ describes a circular arc of length $t_{0}$ as $t$ increases from 0 to $t_{0}$. Consideration of the triangle whose vertices are

$$
z_{1}=0, \quad z_{2}=\gamma\left(t_{0}\right), \quad z_{3}=C\left(t_{0}\right)
$$

shows that $C(t)$ and $S(t)$ are indeed identical with $\cos t$ and $\sin t$, if the latter are defined in the usual way as ratios of the sides of a right triangle.

It should be stressed that we derived the basic properties of the trigonometric functions from (46) and (25), without any appeal to the geometric notion of angle. There are other nongeometric approaches to these functions. The papers by W. F. Eberlein (Amer. Math. Monthly, vol. 74, 1967, pp. 1223-1225) and by G. B. Robison (Math. Mag., vol. 41, 1968, pp. 66-70) deal with these topics.

title changed 