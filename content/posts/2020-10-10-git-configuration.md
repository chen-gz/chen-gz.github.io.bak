---
title: Git Configuration
author: guangzong
date: 2020-10-10 23:49:00 -0400
categories: [Misc]
tags: [Linux, Git, Vim]
math: true
---

Because I am using `nvim`  as git different tool, following configuration is required.


```toml
[user]
        email = guangzong@pitt.edu
        name = Guangzong Chen
[merge]
        tool = vimdiff

[mergetool]
        keepBackup = false
    
[mergetool "vimdiff"]
        cmd = nvim -d $LOCAL $REMOTE $MERGED -c '$wincmd w' -c 'wincmd J'

[diff]
        tool = vimdiff

[difftool]
        keepBackup = false
    
[difftool "vimdiff"]
        cmd = nvim -d $LOCAL $REMOTE -c '$wincmd w'
```

