---
title: ABSOLUTE CONVERGENCE
date: 2022-07-17
---

The series $\Sigma a_{n}$ is said to converge absolutely if the series $\Sigma\left|a_{n}\right|$ converges.
**3.45 Theorem** If $\Sigma a_{n}$ converges absolutely, then $\Sigma a_{n}$ converges.

Proof The assertion follows from the inequality
$$
\left|\sum_{k=n}^{m} a_{k}\right| \leq \sum_{k=n}^{m}\left|a_{k}\right|
$$
**3.46 Remarks** For series of positive terms, absolute convergence is the same as convergence.

If $\Sigma a_{n}$ converges, but $\Sigma\left|a_{n}\right|$ diverges, we say that $\Sigma a_{n}$ converges nonabsolutely. For instance, the series
$$
\sum \frac{(-1)^{n}}{n}
$$
converges nonabsolutely (Theorem 3.43).
The comparison test, as well as the root and ratio tests, is really a test for absolute convergence, and therefore cannot give any information about nonabsolutely convergent series. Summation by parts can sometimes be used to handle the latter. In particular, power series converge absolutely in the interior of the circle of convergence.

We shall see that we may operate with absolutely convergent series very much as with finite sums. We may multiply them term by term and we may change the order in which the additions are carried out, without affecting the sum of the series. But for nonabsolutely convergent series this is no longer true, and more care has to be taken when dealing with them.
