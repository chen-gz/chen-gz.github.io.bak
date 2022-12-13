---
title: Neural Network Random Initialization
author: Guangzong Chen
date: 2021-02-24 15:17:00 -0500
categories: [Machine Learning]
tags: [ML, NN]
math: true
mermaid: true
---

The neural network should initialization with very small and random value.



There are two reason.



* if initialization with same value, the same layer neural will have some value no matter how much iteration.
* because of sigmoid function, it is not sensitive when value is large. So neural should be initialized with small value.
