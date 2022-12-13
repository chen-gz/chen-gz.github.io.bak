---
author: zong
date: 2020-11-12
title: Kalman Filter 卡尔曼滤波
categories: [Math]
math: true
---

## 参考资料
* [kalman-filter](https://github.com/chen-gz/picBed/blob/master/Kalman-filter.pdf)

## 前言
卡尔曼滤波器是一个非常神奇的滤波器。卡尔曼滤波器就是一个状态估计器，与状态观测器的最大区别不大。
可以认为卡尔曼滤波器就是一个变系数的状态估计器。这里的系数成为卡尔曼增益。以纪念卡尔曼在1960年发表的文章中所作出的突出贡献。

卡尔曼滤波器是在最小均方根误差意义下对状态变量的最优估计。在不同的参考资料中会给出不同的推导。

本人看过两个不同的推导。
先对这两种方法的思路给出简单的描述
1. 直接给出均方根的表达式，然后对卡尔曼增益求导，这样就可以得到均方根取得极值时，最优的卡尔曼增益。
2. 使用函数逼近的想法，因为在过去时刻测量的数据具有无关性，因此使用新息的线性组合来表示状态变量，为了达到均方根最小的目的，就是选择合适系数，在这个想法的基础上，把公式变成递推公式就得到了卡尔曼滤波的公式。

## 结论

在这里先直接的给出卡尔曼滤波公式。
<!--下面会给出两个表达形式。-->
<!--一种是普遍流传的形式，另一种表达形式参数具有更明确的意义。-->

这里的模型是最简单的状态空间模型
\begin{equation}
\pmb{x}_{n} = \pmb{A}\pmb{x}_{n-1} + \pmb{\omega}_{n-1} \\\
\pmb{y}_{n} = \pmb{B}\pmb{x}_{n} + \pmb{v}_{n}
\end{equation}
其中$\pmb{A}$是$\pmb{x}_{n-1}$到$\pmb{x}_n$的过渡矩阵,$\pmb{B}_n$是测量矩阵。动态噪声$\pmb{\omega}$和测量噪声$\pmb{v}$满足均值为0的高斯分布，且相互独立。
\begin{equation}
\begin{aligned}
Q_{\omega} &=E\left[w_{k} w_{k}^{T}\right] \\\
Q_{v} &=E\left[v_{k} v_{k}^{T}\right]
\end{aligned}
\end{equation}

卡尔曼滤波方程如下

1. 卡尔曼增益
\begin{equation}
K_{k}=P_{k|k-1} B^T (B P_{k|k-1} B^T+Q_v)^{-1}
\end{equation}
2. 滤波方程
\begin{equation}
\hat{x}_{k|k}=\hat{x}_{k|k-1}+K_{k} (y_{k}-B \hat{x}_{k|k-1})
\end{equation}
3. 预测误差协方差矩阵
\begin{equation}
P_{k|k}=(I-K_{k} B) P_{k|k-1}
\end{equation}
4. 预报方程
\begin{equation}
\begin{array}{c}
\hat{x}_{k+1|k}=A \hat{x}_{k|k} \\\
P_{k+1|k}=A P_{k|k} A^T +Q_{\omega}
\end{array}
\end{equation}

初始条件
1. $\hat{x}_{0|0} = E[x_1]$
2. $P_{0|0} = Q_{v}$

**补充**
1. 预测误差协方差矩阵P的定义
\begin{equation}
P_{k}=E[e_{k} e_{k}^{T}]=E[(x_{k}-\hat{x}_{k|k-1})(x_{k}-\hat{x}_{k|k-1})^{T}]
\end{equation}
2. 如果有控制变量的输入，就将上面模型中的$A$变成一个动态的变量而不作为一个常量，在$X$中添加1的维度，控制变量写在矩阵$A$的最后一列。也就是齐次向量的形式。

## 代码

在这个代码中设定了一个$x$的变化，然后用卡尔曼滤波对$x$进行估计，估计得到的结果和原来$x$的值显示在同一张图上。


<script src="https://gist.github.com/chen-gz/43e2e6451b0bf3fab8eb7954e86884ac.js"></script>

## 推导过程

啥时候有需要了在补。
