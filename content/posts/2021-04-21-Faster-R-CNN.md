---
title: Faster R-CNN
author: Guangzong Chen
date: 2021-04-21 20:00:00 -0400
categories: [Machine Learning]
tags: [ML, RCNN]
math: true
mermaid: true
---

There is already a post about Faster R-CNN paper. Previous one is R-CNN note just for myself.

In this post I will explain the idea of Faster R-CNN and make it very easy to understand.

[paper link](https://arxiv.org/pdf/1506.01497.pdf)

The most idea alrady post on Fast R-CNN. The different is Faster R-CNN using RPN instead of selective search. The main idea of RPN is using sliding window and fast R-CNN sibling output layer to do region proposal.

![](https://raw.githubusercontent.com/chen-gz/picBed/master/20210421204241.png)
