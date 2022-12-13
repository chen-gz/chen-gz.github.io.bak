---
title: Draw a rectangle on image
author: Guangzong Chen
date: 2021-04-18 13:28:00 -0400
categories: [Misc]
tags: [matplot]
math: true
mermaid: true
---

from the stackoverflow[https://stackoverflow.com/questions/37435369/matplotlib-how-to-draw-a-rectangle-on-image]


```python 
import matplotlib.pyplot as plt
import matplotlib.patches as patches
from PIL import Image

im = Image.open('stinkbug.png')

# Create figure and axes
fig, ax = plt.subplots()

# Display the image
ax.imshow(im)

# Create a Rectangle patch
rect = patches.Rectangle((50, 100), 40, 30, linewidth=1, edgecolor='r', facecolor='none')

# Add the patch to the Axes
ax.add_patch(rect)

plt.show()
```
