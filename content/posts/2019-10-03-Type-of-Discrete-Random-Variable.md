---
title: Type of Discrete Random Variable
categories: [Math]
author: zong
date: 2019-10-03
tags: [Probability, Math, Random Variable]
---

## Uniform Random Variable

For each $k$ in $S_{X},$ we have $p_{X}(k)=\frac{1}{M}$.

<!--more-->
$X \sim$ Uniform $(a, b),$ if its PMF has the following form:
$$
p_{X}(x)=\left\{\begin{array}{ll}{\frac{1}{b-a+1}} & {\text { if } x=a, a+1, \cdots, b} \\ {0} & {\text { otherwise }}\end{array}\right.
$$

* $E[X] =  \frac{a+b}{2}$
* $\operatorname{Var}[X]=\frac{(b-a+1)^{2}-1}{12}=\frac{(b-a)(b-a+2)}{12}$

## Bernoulli Random Variable 

Used for experiments with two outcomes of interest: The success or failure of an experiment

$X \sim$ Bernoulli $(p),$ if its **PMF** has the following form:

$$
p_{X}(x)=\left\{\begin{array}{ll}{1-p} & {\text { if } x=0} \\ {p} & {\text { if } x=1} \\ {0} & {\text { otherwise }}\end{array}\right.
$$

* $S_X = \{0,1\}$
* Mean: $E[X] = p$
* $VAR[X]=p(1-p)$


## Binomial Random Variable

Used for experiments that involve $n$ independent trials of the Bernoulli experiment:

$X \sim$ Binomial $(n, p)$, if its **PMF** has the following form:
$$
p_{X}(x)=\left\{\begin{array}{ll}{\left(\begin{array}{l}{n} \\ {x}\end{array}\right) p^{x}(1-p)^{n-x}} & {\text { if } x=\{0,1, \cdots, n\}} \\ {0} & {\text { otherwise. }}\end{array}\right.
$$

* Mean: $E[X] = np$

* Variance: $Var[X] = np(1-p)$

## Geometric Random Variable

$X \sim$ Geometric $(p),$ if its PMF has the following form:
$$
p_{X}(x)=\left\{\begin{array}{ll}{p(1-p)^{x-1}} & {\text { if } x=1,2,3, \cdots} \\ {0} & {\text { otherwise }}\end{array}\right.
$$

* Mean: $E[x] = \frac{1}{p}$
* Variance: $Var[X] = \frac{1-p}{p^2}$
* **notice that if $x$ begin from $0$, the mean is $E(x) = \frac{1-p}{p}$.**

## Pascal Random Variable(Negtive binomial Distribution)

For an infinite sequence of Benoulli trials each with probability $p$, the Pascal random variable is the number of trials up to and including the $k$th success.

To derive the Pascal $PMF$, we consider the scenario of finding the $k$ th success in the $x$ th trial: there are exactly $(k-1)$ successes in the previous $(x-1)$ trials, and the $k$ th success occurs in the $x$ th trial. The probability of this event is:

$$
P\{X=x\}=\left(\begin{array}{l}{x-1} \\ {k-1}\end{array}\right) p^{k-1}(1-p)^{(x-1)-(k-1)} \cdot p
$$

$X \sim$ Pascal $(k, p),$ if its PMF has the following form:
$$
p_{X}(x)=\left\{\begin{array}{ll}{\left(\begin{array}{c}{x-1} \\ {k-1}\end{array}\right) p^{k}(1-p)^{(x-1)-(k-1)} \text { if } x=k, k+1, k+2, \cdots} \\ {0} & {\text { otherwise. }}\end{array}\right.
$$

* Mean:  $E[X]=\frac{k}{p}$ 
* Variance:  $\operatorname{Var}[X]=\frac{k(1-p)}{p^{2}}$.

## Poisson Random Variable

Used to describe phenomenon that occur randomly in time. While the time of each occurrence is completely random, there is a known average number of occurrences per unit time.

In many applications, we are interested in counting the number of occurrences of an event in a certain time period or in a certain region in space. The Poisson random variable arises in situations where the events occur “completely at random” in time or space.

$X \sim$ Poisson $(\alpha),$ if its PMF has the following form:
$$
p_{X}(x)=\left\{\begin{array}{ll}{\frac{\alpha^{x}}{x !} e^{-\alpha}} & {\text { if } x=0,1,2, \cdots} \\ {0} & {\text { otherwise. }}\end{array}\right.
$$
where the parameter $\alpha>0$.

**When dealing with problems involving time $t$ with an arrival rate of $\lambda$ for an event, the Poisson probability of $x$ arrivals in time $t$ is found by setting the Poisson parameter $\alpha=\lambda t$**

* $E[X] = \alpha$
* $Var[X] = \alpha$

## Zipf Random Variable
Used to account for the relative popularity of a few members of a population and the relative uncertainty of other members of a population:

$X \sim \operatorname{Zipf}(\alpha, L),$ if its $PMF$ has the following form:
$$
p_{X}(x)=\left\{\begin{array}{ll}{\frac{1}{c_{L}} \frac{1}{x^{\alpha}}} & {\text { if } x=0,1,2, \cdots L} \\ {0} & {\text { otherwise }}\end{array}\right.
$$
where the parameter $c_{L}$ is a normalization factor, and $\alpha \geq 0$

For $\alpha=1,$ the Zipf random variable has

* $\text { Mean: } E[X]=\frac{L}{c_{L}}$ 
* $\text { Variance: } \operatorname{Var}[X]=\frac{L(L+1)}{2 c_{L}}-\frac{L^{2}}{c_{L}^{2}}$



