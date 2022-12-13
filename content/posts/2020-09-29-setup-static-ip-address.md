---
layout: post
title: Setup Static Ip Address
date: 2020-09-29 22:01:00 -0400
categories: [Linux]
tags: [Linux, Network]
author: guangzong
---

Add following content to `/etc/systemd/network/10-static.network`

The service `systemd-networkd` is required.

[https://wiki.archlinux.org/index.php/systemd-networkd]

```bash
[Match]
Name=enp37s0 # may be wlan0 for wireless. Using ip addr to check
[Network]
DNS=0.0.0.0
Address=192.168.0.200/24
Gateway=192.168.0.255
```
