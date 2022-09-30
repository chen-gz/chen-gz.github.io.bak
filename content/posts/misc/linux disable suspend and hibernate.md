---
title: Linux disable suspend and hibernate
date: 2022-09-08
author: guangzong
tags: [Linux]
---

Following command disable suspend and hibernate function in Linux.

```
# systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
```

