---
title: Logistic Regression
author: Guangzong Chen
date: 2020-02-10 05:12:52 -0500
categories: [Machine Learning]
tags: [LR, ML]
math: true
mermaid: true
---

<embed src="/assets/post_pdf/2020-02-11-logistic-regression.html" width="100%" height="700px"/>

For many logistic regression note they will put cost function as

$$
J = - \frac{1}{N} l(\theta)
$$

I am not doing this here, basicaly we can use gradien ascent to to maximized cost function in the notes instread of gradient decent.
Ther are almost the same. I alos want to comment \\(1/m\\) here, for gradient descent algorithm, what we care about is gradient descent direction. We will choose learning rate to change gradient descent speed. If \\(1/m\\) did put in the cost function, it will as same as learn rate \\(alpha/m\\). So for algorithm actually they are same.

If we using library to implement this algorithm, maybe we need to read the documnt to distinguish how they implement this algorithm in order to choose proper learning rate.

my Matlab implementation

```matlab
alpha = 0.5; % learning rate
feature_size = 2; 
iter = 1000; 
theta = zeros(feature_size, 1);
theta = [1 1]';
x = [0 1;
     1 1];
y = [0 1]';

costs = zeros(1, iter);
for i = 1:iter
    costs(i) = my_cost( x, y, theta);
    partical_cost = my_part_cost(x, y, theta);
    theta = theta - alpha .* partical_cost;
end
plot(costs)


function  y = my_sigmoid(x)
    y = 1 ./(1 + exp(-x));
end

function cost = my_cost( x, y, theta)
cost = y' .* (theta' * x) - log(1 + exp(theta' * x));
cost = sum(cost); % this one is for maximize
cost = -cost;     % for minimize
end

function part_cost = my_part_cost(x, y, theta)
part_cost = sum(x .* (y' - my_sigmoid(theta' * x)),2); % for maximize cost function
part_cost = -part_cost;  % for minimize cost function
end

```

And also provide other algorithm to implement logistic regression.
Here is two mathod to implement logistic regreesion, Newton Method and Stochastic gridient descent.

Newton method is based on hessian metric, Hessian method actually is second order derivation.
Newton method will converge much faster than gradient descent. But the probelm of Newton method is it need to compute invert of hessian matrix. So if the feature size is really large it will require lot of computation.(computation is slow)

Hessian max is how as bellow 

$$
hessian = \frac{\nabla^{2} !(\theta)}{\partial \theta}=-\sum_{i=1}^{n} \tilde{x}_{i} \tilde{x}_{i}^{T} g\left(\theta^{T} \tilde{x}_{i}\right)\left(1-g\left(\theta^{T} \tilde{x}_{i}\right)\right)
$$

update rule
$$
x^{j+1}=x^{j}-\left.\left(\nabla^{2} f(x)\right)^{-1} \nabla f(x)\right|_{x=x^{j}}
$$
Code for Newton method. Just replace line 19-24 by following code section.
```
for i = 1:iter
    costs(i) = my_cost( x, y, theta);
    hessian = x .* my_sigmoid((theta' * x)) * x';
    partical_cost = my_part_cost(x, y, theta); 
    theta = theta - inv(hessian) * partical_cost;
end
```
Stochastic gradient is useful when batch is too large. But Stochastic will take much more iteration to converge. I would not privide stochastic gradient decent code here. It is easy. Just randomly pick an sample and do gradient decent base on this sample.


> Materials from Dr. Can
