---
layout: post
title: Linear Regression And Roc
date: 2020-10-22
categories: [Machine Learning]
tags: [ML]
author: Zong
---

## Receiver Operating Characteristic

###  *[contingency table](https://en.wikipedia.org/wiki/Contingency_table)* or *[confusion matrix](https://en.wikipedia.org/wiki/Confusion_matrix)*,

![image-20201022185345033](https://raw.githubusercontent.com/chen-gz/picBed/master/image-20201022185345033.png)

$$
recall = TPR = \frac{T P}{T P+F N}
$$

$$
\mathrm{FPR}=\frac{\mathrm{FP}}{\mathrm{FP}+\mathrm{TN}}
$$



### receiver operating example

![img](https://raw.githubusercontent.com/chen-gz/picBed/master/1024px-ROC_space-2.png)



## Linear Regression

using linear function to minimize the cost function.

Seems like linear kernel SVM. The difference is SVM only consider support vector, linear regression will consider all samples. 



## Experiment Result

|      | Food | No   |
| ---- | ---- | ---- |
| Food | 723  | 62   |
| No   | 838  | 2265 |

for threshold =  0.1 



### Result distribution (Histogram will be better)

![image-20201022192311836](https://raw.githubusercontent.com/chen-gz/picBed/master/image-20201022192311836.png)

### ROC curve

![image-20201022192432434](https://raw.githubusercontent.com/chen-gz/picBed/master/image-20201022192432434.png)

