---
layout: post
title: Food Clarify
date: 2020-10-06 09:44:00 -0400
categories: [Machine Learning]
tags: [classification]
author: guangzong
---

For each image k have 200 tag and confidence level.

| image | tag1        | confidence level | ... | tag200        | confidence level |
|-------|-------------|-----------------|-----|---------------|-----------------|
| 1     | tag1_1_name | p1_2            |     | tag200_1_name | p1_200          |
| 2     | tag1_2_name | p2_1            |     | tag200_2_name | p2_200          |
| ...   |             |                 |     |               |                 |
| n     | tag1_n_name | pn_1            |     | tag200_n_name | pn_200          |


Totally, 3641 tag appeared in all picture.
Pict the tag with the highest frequency.

construct the vector 

| image | tag1 | tag2 | ... | tag310 | tag311 |
|-------|------|------|-----|--------|--------|
| 1     | p1_1 | p1_2 |     | p1_310 | p1_310 |
| 2     | p2_1 | p2_2 |     | p2_310 | p2_310 |
| ...   |      |      |     |        |        |
| n     | pn_1 | pn_2 |     | pn_310 | pn_310 |

e.g. P\_k\_i = P(tag1 \| image  k) which is given by `clairifai`.

New idae, instead of using condence level from `clairifai`.
we using $p_{i}^{k}$ as svm input 

$P(food = 1 \| image\ k)$ only consider tag  $i$.

$$
p_{i}^{k} = 
P(food = 1, tag\ i = 1| image\ k) +
P(food = 1, tag\ i = 0| image\ k)
$$

Approximately equal to

$$
p = p(i|k) * p(food = 1, tag = 1) + (1-p(k|i) * p_food
$$

The code I am using
```python
tmp_x[useful_tag.index(tag_tmp)] = float(row[i+1].strip()) * tag_food_correlation_dict[tag_tmp] + (1-float(row[i+1].strip())) * p_food
```

## result 
1. using $$p_{i}^{k}$$ as svm input 
2. ![result1](https://raw.githubusercontent.com/chen-gz/picBed/master/result1.png)
3. previous result

