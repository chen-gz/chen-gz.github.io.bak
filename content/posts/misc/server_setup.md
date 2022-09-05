---
title: setup samba and nginx server 
date: 2022-08-07
---

## samba

1. install 

```
pacman -S samba gvfs-smb
```

2. copy samba configure file

3. add user for samba
```bash
smbpasswd -a zong
```

4. setup hostname (config file in samba)

```
netbios name = gserver
wins support = yes
```


if connect using hostname, the subfolder name is required. It can not connect to the server without subfolder name.


## nginx

