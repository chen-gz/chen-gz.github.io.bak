---
title: Discrete Fourier Transform 
author: guangzong
date: 2020-08-30 11:49:00 -0400
categories: [Math]
tags: [Math]
math: true
---

## Reference
* [mathworld Discrete Fourier Transform](http://mathworld.wolfram.com/DiscreteFourierTransform.html)
* [Paul Heckbert - Fourier Transforms and the Fast Fourier Transform (FFT) Algorithm](https://github.com/chen-gz/picBed/blob/master/FT-and-FFT-Algorithm-Paul-Heckbert.pdf)
* [Fourier Series](../fourier-series)
* [Fourier Transform](../fourier-transform)

## Concept

When a signal is discrete and periodic, we don’t need the continuous Fourier transform. Instead we use the discrete Fourier transform, or DFT. Suppose our signal is a n for $n =0 . . . N − 1$, and $a_n = a_n+ jN$ for all $n$ and $j$. The discrete Fourier transform of $a$

$$
A_{k}=\sum_{n=0}^{N-1} e^{-i \frac{2 \pi}{N} k n} a_{n}
$$

This is more commonly written:

$$
A_{k}=\sum_{n=0}^{N-1} W_{N}^{k n} a_{n}
$$

where

$$
W_{N}=e^{-i \frac{2 \pi}{N}}
$$

and $W_N^k$ for $k = 0 . . . N − 1$ are called the *Nth roots of unity*.

The sequence $a_n$ is the inverse discrete Fourier transform of the sequence $A_k$.The formula for the inverse DFT is


$$
a_{n}=\frac{1}{N} \sum_{k=0}^{N-1} W_{N}^{-k n} A_{k}
$$


The formula is identical except that $a$ and $A$ have exchanged roles, as have $k$ and $n$. Also,the exponent of $W$ is negated, and there is a $\frac{1}{N}$ normalization in front.
