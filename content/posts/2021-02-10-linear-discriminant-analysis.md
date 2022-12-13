---
title: Linear Discriminant Analysis
author: Guangzong Chen
date: 2021-02-10 05:12:52 -0500
categories: [Machine Learning]
tags: [LDA, ML]
math: true
mermaid: true
---

<iframe src="/assets/post_pdf/2020-02-10-linear-discriminant-analysis.html" width="100%" height="700px"></iframe>

my Matlab implementation

```matlab
clc;
clear all;
load('/home/zong/Downloads/dataLDA-1/dataLDA/trainTrain.mat')
load('/home/zong/Downloads/dataLDA-1/dataLDA/testLDA.mat')
% X and Y here is training data 
Y = Ytrain;
X = Xtrain;
[featrue_size, sample] = size(Xtrain);
pi_0 = length(find(Y==0))/size(Y,2);
pi_1 = length(find(Y==1))/size(Y,2);
% mean
u_0 = mean(X(:,find(Y==0)),2);
u_1 = mean(X(:,find(Y==1)),2);

% covariance by my code (psudo, not exactly convariance)
covv = ((X(:,find(Y==0)) - u_0)*(X(:,find(Y==0)) - u_0)' + (X(:,find(Y==1)) - u_1)*(X(:,find(Y==1)) - u_1)')/200;

a = inv(covv) * (u_0 - u_1);
b = -0.5*u_0'*inv(covv)*u_0 + 0.5*u_1'*inv(covv)*u_1 + log(pi_0/pi_1);



% predict result
classifierOutput = a' * Xtest + b;
classifierOutput(find(classifierOutput>0)) = 0;
classifierOutput(find(classifierOutput<0)) = 1;
classperf(Ytest,classifierOutput) 

%replace covariance 2!!!!!!!!!!!!!!!!!!!!!!!!!!!!
covv = trace(covv) / featrue_size * eye(featrue_size);
a = inv(covv) * (u_0 - u_1);
b = -0.5*u_0'*inv(covv)*u_0 + 0.5*u_1'*inv(covv)*u_1 + log(pi_0/pi_1);

disp("  ")
% predict result
classifierOutput = a' * Xtest + b;
classifierOutput(find(classifierOutput>0)) = 0;
classifierOutput(find(classifierOutput<0)) = 1;
classperf(Ytest,classifierOutput)
```

> Materials from Dr. Can
