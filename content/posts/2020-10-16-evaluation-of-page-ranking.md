---
layout: post
title:  Evaluation of Page Ranking
date: 2020-10-16 18:39:00 -0400
categories: [Algorithm]
tags: [Algorithm]
math: true
---

## Problem Description

After graduation, you decide to join Google. As a leading search engine company, an important problem Google faces is to evaluate the quality of a ranking of web pages. Many measures can capture this quality. In this question, we will consider the *number of inverse pairs*. Concretely, suppose you are asked o evaluate the ranking of $n$ web pages. Web page $i$ is ranked at position $i$ on a search outcome page by Google. You are given $t_i$ as the number of times that web page $i$ was visited in the past. For any *pair* of pages $i, j$, we call it an inverse pair if $i < j$ but $t_i < t_j$, i.e., page $i$ is ranked before page j but actually was visited less in the past.

Given any input sequence $t_1, t_2, · · · , t_n$ (non-negative integers), you are asked to design an $O(n \log n)$ time algorithm to correctly output the *number of inverse* pairs in this sequence.

## Guideline

If using basic idea to compare all pair, $(1,2)$, $(1,3)$, ..., $(1,n)$, (2,3), ...,$(2,n)$,.... The time will $O(n^2)$. Somehow we need to improvement the time complexity.

When we saw the algorithm time complexity is $O(n \log n )$ that means we can sort the array first. Base on $t$. Then we know the rank exactly position. 

| origin rank | 1 | 2 | 3 | 4 | 5 |
|-------------|---|---|---|---|---|
| visit       | 3 | 2 | 4 | 1 | 5 |
| new rank    | 3 | 4 | 2 | 5 | 1 |

consider another format

| new rank    | 1 | 2 | 3 | 4 | 5 |
|-------------|---|---|---|---|---|
| origin rank | 5 | 3 | 1 | 2 | 4 |

sweep left to right. 

encounter 5 that means 4 inverse pair.

the table become

| new rank    |      | 1    | 2    | 3    | 4    |
| ----------- | ---- | ---- | ---- | ---- | ---- |
| origin rank |      | 3    | 1    | 2    | 4    |

encounter 3 that means 2 inverse pair.

the table become

| new rank    |      |      | 1    | 2    | 3    |
| ----------- | ---- | ---- | ---- | ---- | ---- |
| origin rank |      |      | 1    | 2    | 3    |

encounter 1 that means (0) inverse pair.

| new rank    |      |      |      | 1    | 2    |
| ----------- | ---- | ---- | ---- | ---- | ---- |
| origin rank |      |      |      | 1    | 2    |

encounter 1 that means (0) inverse pair.

| new rank    |      |      |      |      | 1    |
| ----------- | ---- | ---- | ---- | ---- | ---- |
| origin rank |      |      |      |      | 1    |

encounter 1 that means (0) inverse pair.

Using C++ set, then the insert, find only $O(\log n)$.

