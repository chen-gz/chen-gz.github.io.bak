---
title: Linux shutdown execute script
author: Guangzong Chen
date: 2021-02-28 14:27:00 -0500
categories: [Misc]
tags: [Linux]
math: true
mermaid: true
---
create file `<service_name>.service` at `/etc/systemd/system/multi-user.target.wants/`

Example file
```
[Unit]
Description=unmount network disks before shutdown

[Service]
Type=oneshot
RemainAfterExit=true
ExecStop=/usr/local/bin/un_mount_script.sh

[Install]
WantedBy=multi-user.target

```

then do `systemctl enable <service_name> --now`
