---
title: VC generalization bound
author: Guangzong Chen
date: 2021-03-04 12:46:00 -0500
categories: [Machine Learning]
tags: [ML]
math: true
mermaid: true
---

If we treated the growth function as an effective number of hypotheses, and replaced \\(M\\) in the generalization bound (2.1) with \\(m_{\mathcal{H}}(N),\\) the resulting bound would be

$$
E_{\mathrm{out}}(g) \stackrel{?}{\leq} E_{\mathrm{in}}(g)+\sqrt{\frac{1}{2 N} \ln \frac{2 m_{\mathcal{H}}(N)}{\delta}}
$$

It turns out that this is not exactly the form that will hold. The quantities in red need to be technically modified to make (2.11) true. The correct bound, which is called the VC generalization bound, is given in the following theorem; it holds for any binary target function \\(f,\\) any hypothesis set \\(\mathcal{H},\\) any learning algorithm \\(\mathcal{A},\\) and any input probability distribution \\(P\\).


Theorem 2.5 (VC generalization bound). For any tolerance \\(\delta>0\\),

$$
E_{\text {out }}(g) \leq E_{\text {in }}(g)+\sqrt{\frac{8}{N} \ln \frac{4 m_{\mathcal{H}}(2 N)}{\delta}}
$$

with probability \\(\geq 1-\delta\\).

## Sample Complexity 

The sample complexity denotes how many training examples \\(N\\) are needed to achieve a certain generalization performance. The performance is specified by two parameters, \\(\epsilon\\) and \\(\delta .\\) The error tolerance \\(\epsilon\\) determines the allowed generalization error, and the confidence parameter \\(\delta\\) determines how of ten the error tolerance \\(\epsilon\\) is violated. How fast \\(N\\) grows as \\(\epsilon\\) and \\(\delta\\) become smaller \\(^{4}\\) indicates how much data is needed to get good generalization.

We can use the VC bound to estimate the sample complexity for a given learning model. Fix \\(\delta>0,\\) and suppose we want the generalization error to be at most \\(\epsilon\\). From Equation (2.12), the generalization error is bounded by \\(\sqrt{\frac{8}{N} \ln \frac{4 m_{\mathcal{H}}(2 N)}{\delta}},\\) and so it suffices to make \\(\sqrt{\frac{8}{N} \ln \frac{4 m_{\mathcal{H}}(2 N)}{\delta}} \leq \epsilon .\\) It follows that

$$
N \geq \frac{8}{\epsilon^{2}} \ln \left(\frac{4 m_{\mathcal{H}}(2 N)}{\delta}\right)
$$

suffices to obtain generalization error at most \\(\epsilon\\) (with probability at least \\(1-\delta)\\). This gives an implicit bound for the sample complexity \\(N,\\) since \\(N\\) appears on both sides of the inequality. If we replace \\(m_{\mathcal{H}}(2 N)\\) in (2.12) by its polynomial upper bound in (2.10) which is based on the the VC dimension, we get a similar bound

$$
N \geq \frac{8}{\epsilon^{2}} \ln \left(\frac{4\left((2 N)^{d_{\mathrm{vc}}}+1\right)}{\delta}\right)
$$

which is again implicit in \\(N\\). We can obtain a numerical value for \\(N\\) using simple iterative methods.

## Penalty for Model Complexity 

Sample complexity fixes the performance parameters \\(\epsilon\\) (generalization error) and \\(\delta\\) (confidence parameter) and estimates how many examples \\(N\\) are needed. In most practical situations, however, we are given a fixed data set \\(\mathcal{D},\\) so \\(N\\) is also fixed. In this case, the relevant question is what performance can we expect given this particular \\(N\\). The bound in (2.12) answers this question:
with probability at least \\(1-\delta\\),

$$
E_{\mathrm{out}}(g) \leq E_{\mathrm{in}}(g)+\sqrt{\frac{8}{N} \ln \left(\frac{4 m_{\mathcal{H}}(2 N)}{\delta}\right)}
$$

If we use the polynomial bound based on \\(d_{\mathrm{vc}}\\) instead of \\(m_{7 t}(2 N),\\) we get another valid bound on the out-of-sample error,

$$
E_{\mathrm{out}}(g) \leq E_{\mathrm{in}}(g)+\sqrt{\frac{8}{N} \ln \left(\frac{4\left((2 N)^{d_{\mathrm{vc}}+1}\right)}{\delta}\right)}
$$
