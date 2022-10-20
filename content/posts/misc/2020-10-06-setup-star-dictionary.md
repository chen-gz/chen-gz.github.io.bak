---
title: Setup Star and GoldenDict Dictionary
date: 2020-10-06 14:57:00 -0400
categories: [Linux]
tags: [Linux, Software]
author: Guangzong
---

Refer to [archlinux wiki](https://wiki.archlinux.org/index.php/Sdcv) and [archlinux wiki - goldendict](https://wiki.archlinux.org/title/GoldenDict)

## Install

```
pacman -Syu Sdcv
```

Once you have the appropriate files you can extract them into `/usr/share/stardict/dic`.

Following command can be used.

```sh 
mkdir -p /usr/share/stardict/dic && cd /usr/share/stardict/dic

wget "https://github.com/chen-gz/picBed/raw/master/langdao-ec-gb.dict.dz" &&
wget "https://raw.githubusercontent.com/chen-gz/picBed/master/langdao-ec-gb.idx" &&
wget "https://raw.githubusercontent.com/chen-gz/picBed/master/langdao-ec-gb.ifo" 
```

Dictionary files

1. [dict](https://github.com/chen-gz/picBed/raw/master/langdao-ec-gb.dict.dz)
2. [index](https://github.com/chen-gz/picBed/blob/master/langdao-ec-gb.idx)
2. [info](https://raw.githubusercontent.com/chen-gz/picBed/master/langdao-ec-gb.ifo)


