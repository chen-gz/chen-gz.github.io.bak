---
title: Setup VPNC
date: 2020-10-06 17:58:00 -0400
categories: [Linux]
tags: [Linux, Vpnc]
author: guangzong
---

## Install
```
pacman -Syu vpnc
```

## Configuration
copy follwing configuration to `/etc/vpnc/<name>.conf`
```
IPSec gateway vpn.pitt.edu
IPSec ID sam_users
IPSec secret ooL6ohho
Xauth username guc25
```
