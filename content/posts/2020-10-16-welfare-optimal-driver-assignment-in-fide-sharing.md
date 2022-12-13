---
layout: post
title:  Welfare-Optimal Driver Assignment in Ride Sharing
date: 2020-10-16 22:32:00 -0400
categories: [Algorithm]
tags: [Algorithm]
---

## Problem Description

After graduation, you decide to join ride sharing company Uber. An important problem of Uber is to assign drivers to different locations in order to maximize the *sum* of all driver’s payoffs, also called the *welfare*. Suppose there are n drivers to be assigned to *l* locations. How much payoff a driver can receive at location *k* will depend on how many drivers in total are at *k* since they compete with each other. Formally, any driver will receive payoff  $r_k(n_k) > 0$ at location $k$ if location $k$ is assigned $n_k$ drivers in total, where $n_k$ may equal $0, 1, 2,..., n$. A driver assignment can be represented as $(n1; · · · ; nl)$ where $\sum_{k=1}^l n_k \leq n$ and $n_k ≥ 0$ is the number of drivers assigned to location $k$.

Given input $r_{k}(i)\  k=1, \cdots, l , i=0, \cdots, n$
you are asked to design an $O(n^{2} l)$ time  algorithm to compute the driver assignment to maximize the total welfare $\sum_{k=1}^{l} r_{k}(n_{k}).$ 
Please describe the pseudo code, and prove the correctness and running time of your algorithm.

## Guideline

Formula the problem first. 

$$
\max \sum_{k=0}^{l} r_{k}\left(n_{k}\right) \\
n_{1}+n_{2}+\cdots+n_{l} \leqslant n \\
n_{i}\geqslant0 \text { for } i=0,1, \cdots, l
$$

Then we define $f_{i} (n)$

$$
f_{i} (n)=\max \sum_{k=0}^{i} r_{k}(n_{k})  \\ 
\sum_{k=0}^{i} n_{k} =n
$$

We can easily find max  value in function $f_{i}$ by time complexity $O(n)$.

In order to find the final result.  we  need to find $f_{i}$, $i$ from  1 to $l$.

Finally The answer is max value in function $f_l$. 

To find a $f_i$ we need time $O(n^2)$. Totally we have number $l$ of $f_i$ need to find. So the time complexity is $O(n^2l)$. To get the answer we need $O(n)$. Totally complexity is $O(n^2l + n ) = O(n^2l)$
