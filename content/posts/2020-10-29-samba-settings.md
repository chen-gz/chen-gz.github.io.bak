---
title: Some Usefull Samba Settings
author: zong
date: 2020-10-29
categories: [Linux]
tags: [Linux]
math: true
---

enable windows user to change the permission 
```
dos filemod = yes 
```

fix time synchronize issue

```
time server = yes
dos filetimes = yes
fake directory create times = yes
dos filetime resolution = yes
```
