---
title: Fourier Transform
author: guangzong
date: 2020-08-30 11:51:00 -0400
categories: [Math]
tags: [Math]
math: true
---

## Reference
* [mathworld Fourier Transform](http://mathworld.wolfram.com/FourierTransform.html)
* [Willard Miller - Fourier Transform](https://github.com/chen-gz/picBed/blob/master/Fourier-Series-Willard-Miller.pdf))*(The pdf from [website](http://www-users.math.umn.edu/~mille003))*
* [Paul Heckbert - Fourier Transforms and the Fast Fourier Transform (FFT) Algorithm](https://github.com/chen-gz/picBed/blob/master/FT-and-FFT-Algorithm-Paul-Heckbert.pdf)
* [Fourier Series](../fourier-series)

## Concept

The Fourier transform is a generalization of the complex Fourier series in the limit as $L \to \infty$. Replace the discrete $A_n$ with the continuous $F(k)dk$ while letting  $n/L\to k$. Then change the sum to an integral, and the equations become

$$
	f(x)= \int_{-\infty}^\infty F(k) e^{2\pi ikx}dk	\\
	F(k)=\int_{-\infty}^\infty f(x)e^{-2\pi ikx}dx
$$

Note that some authors (especially physicists) prefer to write the transform in terms of angular frequency $\omega=2\pi nv$ instead of the oscillation frequency $v$. However, this destroys the symmetry, resulting in the transform pair

$$
	F(\omega)=\int_{-\infty}^{\infty} f(x) e^{-i \omega x} dx  \\\
	f(x)=\frac{1}{2 \pi} \int_{-\infty}^{\infty} F(\omega) e^{i \omega x} d \omega
$$

Since any function can be split up into even and odd portions $E(x)$ and $O(x)$,

$$
	\begin{aligned}
		f(x) &=	\frac{1}{2}[f(x)+f(-x)]+\frac{1}{2}[f(x)-f(-x)]	\\\
		&=E(x)+O(x),
	\end{aligned}
$$

To restore the symmetry of the transforms, the convention

$$
	\begin{aligned}
		g(y) &=\mathcal{F}[f(t)] \\\
			 &=\frac{1}{\sqrt{2 \pi}} \int_{-\infty}^{\infty} f(t) e^{-i y t} d t \\\
		f(t) &=\mathcal{F}^{-1}[g(y)] \\\
			&=\frac{1}{\sqrt{2 \pi}} \int_{-\infty}^{\infty} g(y) e^{j y t} d y 
	\end{aligned}
$$

is sometimes used.


## Dirichlet condition

In mathematics, the Dirichlet conditions are sufficient conditions for a real-valued, periodic function $f$ to be equal to the sum of its Fourier series at each point where $f$ is continuous. Moreover, the behavior of the Fourier series at points of discontinuity is determined as well (it is the midpoint of the values of the discontinuity). These conditions are named after *Peter Gustav Lejeune Dirichlet*.

The conditions are:

* $f$ must be *absolutely integrable* over a period.
* $f$ must be of *bounded variation* in any given bounded interval.
* $f$ must have a finite number of discontinuities in any given bounded interval, and the discontinuities cannot be infinite.

[from wikipedia - Dirichlet conditions](https://en.wikipedia.org/wiki/Dirichlet_conditions)

## Properties

see the references.

[Willard Miller - Fourier Transform](https://github.com/chen-gz/picBed/blob/master/Fourier-Series-Willard-Miller.pdf)

I will write it here in the future.
