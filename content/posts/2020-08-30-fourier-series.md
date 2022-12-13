---
title: Fourier Seriers
author: guangzong
date: 2020-08-30 11:47:00 -0400
categories: [Math]
tags: [Math]
math: true
---

## Reference
* [mathworld Fourier Series](http://mathworld.wolfram.com/FourierSeries.html)
* [Willard Miller - Fourier Series](https://github.com/chen-gz/picBed/blob/master/Fourier-Series-Willard-Miller.pdf)  *(The pdf from [website](http://www-users.math.umn.edu/~mille003))*

## Concept

Any set of functions that form a complete orthogonal system have a corresponding generalized Fourier series analogous to the Fourier series. For example, using orthogonality of the roots of a Bessel function of the first kind gives a so-called Fourier-Bessel series.

Fourier orthogonal function system:

$$
    1,cosx,sinx,...,coskx,sinkx,\dots.
$$

these functions that form a complete orthogonal system over $[-\pi,\pi]$ in $L^2[-\pi,\pi]$ space.

> $f(x)$ and $g(x)$ orthogonality in $L^2[-\pi,\pi]$ space means $\int_{-\pi}^{\pi}f(x)g(x)dx =0$.

the Fourier series of a function $f(x)$ is given by

$$
    f(x)=\frac{1}{2} a_{0} +  \sum_{n=1}^{\infty} a_n cos(nx)+\sum_{n=1}^{\infty} b_n sin(nx)
$$

where

$$
    a_0	=\frac{1}{\pi} \int_{-\pi}^{\pi}f(x)dx	 \\
    a_n	=\frac{1}{\pi} \int_{-\pi}^{\pi}f(x) \cos(nx)dx	 \\
    b_n	=\frac{1}{\pi} \int_{-\pi}^{\pi}f(x) \sin(nx)dx
$$

For a function $f(x)$ periodic on an interval $[-L,L]$ instead of  $[-\pi,\pi]$, a simple change of variables can be used to transform the interval of integration from $[-\pi,\pi]$ to $[-L,L]$.  Let

$$
    x = \frac{\pi x'}{L} \\
    dx = \frac{\pi d x'}{L}.
$$

Solving for $x'$ gives $x'=\frac{Lx}{\pi}$, and plugging this in gives

$$
    f(x')=\frac{1}{2}a_0+\sum_{n=1}^{\infty} a_n\cos{\frac{n\pi x'}{L}}+\sum_{n=1}^{\infty}b_n\sin{\frac{n\pi x'}{L}}.
$$

Therefore,

$$
    a_0	=\frac{1}{L}\int_{-L}^L f(x')dx'	 \\
    a_n	=\frac{1}{L}\int_{-L}^L f(x')\cos{\frac{n\pi x'}{L}}dx'	 \\
    b_n	=\frac{1}{L}\int_{-L}^L f(x')\sin{\frac{n\pi x'}{L}}dx'
$$

The notion of a Fourier series can also be extended to complex coefficients.

 Consider a real-valued function $f(x)$. Write

$$
    f(x)=\sum_{n=-\infty}^{\infty}A_ne^{inx}.
$$

where

$$
    A_n=\frac{1}{2\pi}\int_{-\pi}^{\pi}f(x)e^{-inx}dx.
$$

The coefficients can be expressed in terms of those in the Fourier series

$$
    \begin{aligned}
        A_n	&=\frac{1}{2\pi}\int_{-\pi}^\pi f(x)[\cos(nx)-i\sin(nx)]dx	\\
    &=
        \begin{cases}
            \frac{1}{2}(a_n + i b_n) & n < 0\\
            \frac{1}{2}a_0 			 & n = 0\\
            \frac{1}{2}(a_n - i b_n) & n > 0\\
        \end{cases}
    \end{aligned}
$$

For a function periodic in $[-L/2,L/2]$, these become

$$
    f(x)=\sum_{n=-\infty}^{\infty}A_n e^{i\frac{2\pi nx}{L}}
$$

where

$$
    A_n=\frac{1}{L}\int_{-L/2}^{L/2}f(x) e^{-i\frac{2\pi nx}{L}}dx
$$

These equations are the basis for the extremely important Fourier transform, which is obtained by transforming $A_n$ from a discrete variable to a continuous one as the length $L\to \infty$.


