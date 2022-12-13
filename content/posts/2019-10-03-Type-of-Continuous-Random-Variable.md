---
title: Type of Continuous Random Variable
categories: [Math]
author: zong
date: 2019-10-03
tags: [Probability, Math, Random Variable]
math: true
---


## Exponential Random Variable
Continuous version of the discrete geometric RV. Models the inter-arrival time for the Poisson process.
<!--more-->
\\(X \sim\\) Exponential \\(\lambda\\)

$$
f_{X}(x)=\left\{\begin{array}{ll}{\lambda e^{-\lambda x}} & {\text { if } x \geq 0} \\ {0} & {\text { otherwise }}\end{array}\right.
$$

$$
F_{X}(x)=\left\{\begin{array}{ll}{0} & {\text { if } x<0} \\ {1-e^{-\lambda x}} & {\text { if } x \geq 0}\end{array}\right.
$$

## Erlang Random Variable

Continuous version of the discrete Pascal Random Variable. Models the total arrival time for \\(n\\) arrivals of the Poisson
process

* The wait time for the \\(n\\) th bus
* time to emision of the nth particle from a radioactive source

\\(X \sim \operatorname{Erlang}(n, \lambda\\)

$$
f_{X}(x)=\left\{\begin{array}{ll}{\frac{\lambda^{n} x^{n-1} e^{-\lambda x}}{(n-1) !}} & {\text { if } x \geq 0} \\ {0} & {\text { otherwise }}\end{array}\right.
$$



## Gamma Random Variable

Generalization of Erlang and Exponential RVs.
\\(X \sim \operatorname{Gamma}(\alpha, \lambda)\\):

$$
f_{X}(x)=\left\{\begin{array}{ll}{\frac{\lambda(\lambda x)^{\alpha-1} e^{-\lambda x}}{\Gamma(\alpha)}} & {\text { if } x \geq 0} \\ {0} & {\text { otherwise }}\end{array}\right.
$$


* where \\(\Gamma(z)=\int_{0}^{\infty} x^{z-1} e^{-x} \mathrm{d} x \text { for } z>0\\(
* Exponential distribution with parameter \\(lambda\\) if  \\(alpha=1\\)
* Erlang distribution with parameters \\(n\\) and \\(lambda\\) if \\(alpha=n\\)

In general there is no closed form for the CDF

* \\(Gamma(1 / 2)=\sqrt{\pi\\)
* \\(Gamma(z+1)=z \Gamma(z\\) for \\(z>0\\)
* \\(Gamma(m+1)=m \\) for \\(m\\) a nonnegative integer.

## Beta Random Variable
\\(X \sim \operatorname{Beta}(a, b) \text { with } a>0 \text { and } b>0\\)

$$
f_{X}(x)=\left\{\begin{array}{ll}{\frac{x^{a-1}(1-x)^{b-1}}{\beta(a, b)}} & {\text { if } x \in(0,1)} \\ {0} & {\text { otherwise }}\end{array}\right.
$$

* \\(text { where } \beta(a, b)=\int_{0}^{1} x^{a-1}(1-x)^{b-1} \mathrm{d} x \text { for } z>0\\) 
* If \\(a=b=1\\) then \\(X\\) is a standard uniform random variable.
* Useful to model a variety of behaviors for random variables that range over finite intervals.

## Gaussian Random Variable

Also called the **normal random variable** because of its prevalence.

\\(X \sim\\) Gaussian \\(mu, \sigma) \\)

$$
f_{X}(x)=\frac{1}{\sqrt{2 \pi \sigma^{2}}} e^{\frac{-(x-\mu)^{2}}{2 \sigma^{2}}}
$$


## Laplacian Random Variable

$$
\begin{array}{l}{S_{X}=(-\infty, \infty)} \\ {f_{X}(x)=\frac{\alpha}{2} e^{-\alpha|x|} \quad-\infty<x<+\infty \quad \text { and } \quad \alpha>0} \\ {E[X]=0 \quad \operatorname{VAR}[X]=2 / \alpha^{2} \quad \Phi_{X}(\omega)=\frac{\alpha^{2}}{\omega^{2}+\alpha^{2}}}\end{array}
$$

## The Cauchy Random Variable

The Cauchy random variable \\(X\\) assumes values over the entire real line and has pdf:

$$
f_{X}(x)=\frac{1 / \pi}{1+x^{2}}
$$

 It is easy to verify that this pdf integrates to \\(1 \\) However, \\(X\\) does not have any moments since the associated integrals do not converge. **The Cauchy random variable arises as the tangent of a uniform random variable in the unit interval.**

## The Pareto Random Variable

The Pareto random variable arises in the study of the distribution of wealth where it has been found to model the tendency for a small portion of the population to own a large portion of the wealth. Recently the Pareto distribution has been found to cap- ture the behavior of many quantities of interest in the study of Internet behavior, e.g., sizes of files, packet delays, audio and video title preferences, session times in peer-to-peer networks, etc.The Pareto random variable can be viewed as a continuous version of the Zipf discrete random variable.  The Pareto random variable X takes on values in the range where is a positive real number. X has complementary cdf with shape parameter given by: 

$$
P[X>x]=\left\{\begin{array}{ll}{1} & {x<x_{m}} \\ {\frac{x_{m}^{\alpha}}{x^{\alpha}}} & {x \geq x_{m}}\end{array}\right.
$$

The tail of \\(X\\) decays algebraically with x which is rather slower in comparison to the exponential and Gaussian random variables. The Pareto random variable is the most

prominent example of random variables with "long tails."
The cdf and pdf of \\(X\\) are

$$
\begin{aligned}F_{X}(x)=\left\{\begin{array}{ll}{0} & {x<x_{m}} \\ {1-\frac{x_{m}^{\alpha}}{x^{\alpha}}} & {x \geq x_{m}}\end{array}\right.
\end{aligned}
$$

Because of its long tail, the cdf of \\(X\\) approaches 1 rather slowly as \\(x\\) increases.

$$
f_{X}(x)=\left\{\begin{array}{ll}{0} & {x<x_{m}} \\ {\alpha \frac{x_{m}^{\alpha}}{x^{\alpha+1}}} & {x \geq x_{m}}\end{array}\right.
$$

### mean and variance

Find the mean and variance of the Pareto random variable.

$$
E[X]=\int_{x_{m}}^{\infty} t \alpha \frac{x_{m}^{\alpha}}{t^{\alpha+1}} d t=\int_{x_{m}}^{\infty} \alpha \frac{x_{m}^{\alpha}}{t^{\alpha}} d t=\frac{\alpha}{\alpha-1} \frac{x_{m}^{\alpha}}{x_{m}^{\alpha-1}}=\frac{\alpha x_{m}}{\alpha-1} \quad \text { for } \alpha>1
$$

where the integral is defined for \\(alpha>1\\) and

$$
E\left[X^{2}\right]=\int_{x_{m}}^{\infty} t^{2} \alpha \frac{x_{m}^{\alpha}}{t^{\alpha+1}} d t=\int_{x_{m}}^{\infty} \alpha \frac{x_{m}^{\alpha}}{t^{\alpha-1}} d t=\frac{\alpha}{\alpha-2} \frac{x_{m}^{\alpha}}{x_{m}^{\alpha-2}}=\frac{\alpha x_{m}^{2}}{\alpha-2} \quad \text { for } \alpha>2
$$

where the second moment is defined for \\(alpha>2 \\)

$$
\begin{aligned} \text { The variance of } X & \text { is then: } \\
\operatorname{VAR}[X]
&=\frac{\alpha x_{m}^{2}}{\alpha-2}-\left(\frac{\alpha x_{m}^{2}}{\alpha-1}\right)^{2}=\frac{\alpha x_{m}^{2}}{(\alpha-2)(\alpha-1)^{2}} & \text { for } \alpha>2 \end{aligned}
$$

