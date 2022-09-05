---
title: stylegan v2 doc
date: 2022-08-24
---
import training speed


```python
cudnn_benchmark = True
allow_tf32 = False
torch.backends.cudnn.benchmark = cudnn_benchmark    # Improves training speed.
torch.backends.cuda.matmul.allow_tf32 = allow_tf32  # Allow PyTorch to internally use tf32 for matmul
torch.backends.cudnn.allow_tf32 = allow_tf32        # Allow PyTorch to internally use tf32 for convolutions
```

use nvidia custom gradient fixed convolution (not detail yet)


training set keywards
``` pyhon
class_name = training.dataset.ImageFolderDataset
path = /home/zong/datasets/food-101-gan
use_labels = False
max_szie = 98000
xflip = False
resolution =  256
__len__ = 6
```

data_loader_kwargs
```python
pin_memory = True
num_workers = 3
prefetch_factor = 2
```

common_kwargs
```python
c_dim = label_dim = 0
img_resolution = 256
img_channels = 3
```

G_kwargs
```
class_name = training.networks.Generator
z_dim = 512
w_dim = 512
mapping_kwargs = {'num_layers': 2}
synthesis_kwargs = {'channels_base' :16384, channel_max: 512, num_fp16_res: 4, conv_clamp: 256}
```

mapping network

![image-20220801152802172](/home/zong/.config/Typora/typora-user-images/image-20220801152802172.png)

synthesis network

discriminate network


### resume from existing pickle

load network parameter and training kwargs

### print the nwtwork


### setup augmentation (ada paper)

augment_kwargs
```
class_name = training.augment.AugmentPipe
xflip = 1
rotate90 = 1
xint = 1
scale = 1
rotate = 1
aniso = 1
xfrac = 1
brightness = 1
contrast = 1
lumaflip = 1
hue = 1
saturation = 1
```


Collector
require_grad neet to be set before ddp
ddp distributed data parallel

Distribute model to multiple GPU

## loss


loss_kwargs
```python
class_name = training.loss.StyleGAN2Loss
r1_gamma = 0.8192 # from train.py line 173. heuristic formula
```

G_opt_kwargs
```python
class_name = torch.optim.Adam
lr = 0.0025
betas = [0, 0.99]
eps = 1e-8
```
G_reg_interval = 4

D_opt_kwargs
```python
class_name = torch.optim.Adam
lr = 0.0025
betas = [0, 0.99]
eps = 1e-8
```

D_reg_interval = 16

regularization 
mb_ratio = reg_interval / (reg_interval + 1)

### training process

G_main

G_reg

D_main

D_reg

#### training batch

sync always tru because only traiing by 1 gpu

batch_size and batch_gpu


## network structure (detail from code)

#### Discriminator

residual connection

