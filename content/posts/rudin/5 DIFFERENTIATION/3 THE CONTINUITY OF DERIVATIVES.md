---
title: THE CONTINUITY OF DERIVATIVES
date: 2022-07-28

---

We have already seen [Example 5.6(b)] that a function $f$ may have a derivative $f^{\prime}$ which exists at every point, but is discontinuous at some point. However, not every function is a derivative. In particular, derivatives which exist at every point of an interval have one important property in common with functions which are continuous on an interval: Intermediate values are assumed (compare Theorem 4.23). The precise statement follows.

**5.12 Theorem** Suppose $f$ is a real differentiable function on $[a, b]$ and suppose $f^{\prime}(a)<\lambda<f^{\prime}(b)$. Then there is a point $x \in(a, b)$ such that $f^{\prime}(x)=\lambda$.

A similar result holds of course if $f^{\prime}(a)>f^{\prime}(b)$.

Proof Put $g(t)=f(t)-\lambda t$. Then $g^{\prime}(a)<0$, so that $g\left(t_{1}\right)<g(a)$ for some $t_{1} \in(a, b)$, and $g^{\prime}(b)>0$, so that $g\left(t_{2}\right)<g(b)$ for some $t_{2} \in(a, b)$. Hence $g$ attains its minimum on $[a, b]$ (Theorem 4.16) at some point $x$ such that $a<x<b$. By Theorem 5.8, $g^{\prime}(x)=0$. Hence $f^{\prime}(x)=\lambda$. Corollary If $f$ is differentiable on $[a, b]$, then $f^{\prime}$ cannot have any simple discontinuities on $[a, b]$.

But $f^{\prime}$ may very well have discontinuities of the second kind.

