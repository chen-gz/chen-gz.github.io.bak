---
layout: post
title: Setup Caddy
date: 2020-10-02 16:02:00 -0400
categories: [Linux]
tags: [Linux, Caddy]
author: guangzong
---


## caddy configure file
Install caddy 
for now caddy2 not in archlinux official repository, should using aur to install 

follwing key is require when i was install (data: 2020-10-02)

```
gpg --keyserver pool.sks-keyservers.net --receive-keys 29D0817A67156E4F25DC24782A349DD577D586A5
```

After install we need to setup caddy. configure file locate in `/etc/caddy/Caddyfile`.

My configure show as follow. 
```
guangzong.xyz:443 {  # i am only using 443 port
    tls chen-gz@outlook.com
    root * path_to_you_website_file
    file_server
}
```

For me, my file are locate in user account. So go to `/etc/lib/systemd/system/caddy.service`
change `ProtectHome` to `read-only`
