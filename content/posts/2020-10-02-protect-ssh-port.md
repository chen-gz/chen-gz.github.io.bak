---
layout: post
title: Protect SSH Port
date: 2020-10-02 14:43:00 -0400
categories: [Linux]
tags: [Linux, Security]
author: guangzong
---

## disable password login

generate ssh key and put ssh publick to server.

the location of server ssh key

```bash
${USER_HOME}/.ssh/authorized_keys
```

open `/etc/ssh/sshd_config` as root user.

uncomment foloowing lines and becareful about the option should be no
```
AuthorizedKeysFile .ssh/authorized_keys
PasswordAuthentication no
```

## disable using root login the system

in file `/etc/ssh/sshd_config` the option `PermitRootLogin` should be no 
```
PermitRootLogin no 
```


## change login port to protect nmap scan

in `/etc/ssh/sshd_config` uncomment `Port 22` change to another port like `Port 2020`

when loging the system should use 
```
ssh usename@hostname -p portnumber
```
