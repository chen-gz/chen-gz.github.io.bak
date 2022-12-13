---
title: safe remove drive command
date: 2021-01-24
categories: [Linux]
tags: [Linux]
author: guangzong
---

install `udisks2`

### unmount

udisksctl unmout -b /dev/sd****

### safe remove

udisksctl power-off -b /dev/sdb*
