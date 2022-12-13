---
title: R-CNN paper notes
author: Guangzong Chen
date: 2021-02-18 19:49:00 -0500
categories: [Machine Learning]
tags: [ML, RCNN]
math: true
mermaid: true
---
[paper link](http://arxiv.org/abs/1311.2524)

![Object detection system overview](https://raw.githubusercontent.com/chen-gz/picBed/master/20210218195118.png)

Our system (1) takes an input image, (2) extracts around 2000 bottom-up region proposals, (3) computes features for each proposal using a large convolutional neural network (CNN), and then (4) classifies each region using class-specific linear SVMs.


## General Idea and Reason (what and why)

extent CNN to object detection
> To what extent do the CNN classification results on ImageNet generalize to object detection results on the PASCAL VOC Challenge?

sliding window for face and pedestrians detection but not for object detection (RCNN)
> An alternative is to build a
sliding-window detector. CNNs have been used in this way
for at least two decades, typically on constrained object cat-
egories, such as faces [32, 40] and pedestrians [35]. **In order
to maintain high spatial resolution, these CNNs typically
only have two convolutional and pooling layers**. We also
considered adopting a sliding-window approach. However,
units high up in our network, which has five convolutional
layers, have very large receptive fields (195 × 195 pixels)
and strides (32×32 pixels) in the input image, which makes
precise localization within the sliding-window paradigm an
open technical challenge.

recognition using regions (propose 2000 region)
> Instead, we solve the CNN localization problem by oper-
ating within the **“recognition using regions”** paradigm [21],
which has been successful for both object detection [39] and
semantic segmentation [5].

reshpae the region then put into linear SVMs and why call it R-CNN
> with category-specific linear SVMs. We use a simple tech-
nique (affine image warping) to compute a fixed-size CNN
input from each region proposal, regardless of the region’s
shape. Figure 1 presents an overview of our method and
highlights some of our results. Since our system combines
region proposals with CNNs, we dub the method R-CNN:
Regions with CNN features.

label data scare, huge CNN training dataset and scare detection training data
> A second challenge faced in detection is that labeled data
is scarce and the amount currently available is insufficient
for training a large CNN. The conventional solution to this
problem is to use unsupervised pre-training, followed by su-
pervised fine-tuning (e.g., [35]). The second principle con-
tribution of this paper is to show that supervised pre-training
on a large auxiliary dataset (ILSVRC), followed by domain-
specific fine-tuning on a small dataset (PASCAL), is an
effective paradigm for learning high-capacity CNNs when
data is scarce. In our experiments, fine-tuning for detection
improves mAP performance by 8 percentage points. After

## Detail

Feature extraction and CNN structure
>We extract a 4096-dimensional fea-
ture vector from each region proposal using the Caffe [24]
implementation of the CNN described by Krizhevsky et
al. [25]. Features are computed by forward propagating
a mean-subtracted 227 × 227 RGB image through five con-
volutional layers and two fully connected layers. We refer
readers to [24, 25] for more network architecture details.

wrapping the proposed region
> Prior to warping, we dilate the tight bounding box so that
at the warped size there are ex- actly p pixels of warped
image context around the original box (we use p = 16). The Details are in Appendix A.

CNN
> training by ILSVRC2012 classification  suing image-level annotations only.

fine tunning (SGD = 0.001 1/10th of te initail pre-training rate)
> Domain-specific fine-tuning. To adapt our CNN to the
new task (detection) and the new domain (warped proposal
windows), we continue stochastic gradient descent (SGD)
training of the CNN parameters using only warped region
proposals.
Aside from replacing the CNN’s ImageNet-
specific 1000-way classification layer with a randomly ini-
tialized (N + 1)-way classification layer (where N is the
number of object classes, plus 1 for background), the CNN
architecture is unchanged.  For VOC, N = 20 and for
ILSVRC2013, N = 200.  


overlap (IoU threshold is important!)

>Less clear is how to label a region that partially overlaps a car. We resolve this issue with an IoU overlap threshold, below which
regions are defined as negatives. The overlap threshold, 0.3,
was selected by a grid search over {0, 0.1, . . . , 0.5} on a
validation set. We found that selecting this threshold care-
fully is important. Setting it to 0.5, as in [39], decreased
mAP by 5 points. Similarly, setting it to 0 decreased mAP


abbreviations

mAP   mean Average Precision  
SIFT  Scale-invariant feature transform (2004) D. Lowe.Distinctive image features from scale-invariantkeypoints. IJCV, 2004  
HOG   Histogram of oriented gradients  
IoU   intersection over Union

**TODO**
- [ ] Scale-invariant feature transform. D. Lowe.Distinctive image features from scale-invariantkeypoints. IJCV, 2004  
- [ ] N. Dalal and B. Triggs. Histograms of oriented gradients for human detection. In CVPR, 2005. 1
- [ ] Neocognitron: A Self-organizing Neural Network Model for a Mechanism of Pattern Recognition Unaffected by Shift in Position
- [ ] C. Gu, J. J. Lim, P. Arbel´aez, and J. Malik. Recognition using regions. In CVPR, 2009. 2
- [ ] P. Sermanet, K. Kavukcuoglu, S. Chintala, and Y. LeCun.  Pedestrian detection with unsupervised multi-stage feature learning. In CVPR, 2013. 2
