---
title: How To Install Archlinux
author: Guangzong
date: 2020-09-11 15:30:00 -0400
categories: [Linux]
tags: [Linux ]
---

## Setup network

In new version of installer image, `wifi-menu` instead by `iwctl`.

using `iwctl` get into iwctl command window
scan the network
```
station wlan0 scan
```
get the network 
```
station wlan0 get-networks
```
connect to the network
```
station wlan0 connect <ssid>
```

after connect wireless network, use ping to test network
```
ping google.com
```




## Synchronised time

``` 
timedatectl set-ntp true
```

## Change mirrorlist 

choose one close to you
```
vim /etc/pacman.d/mirrorlist
```

## Partition

use `lsblk` to check disks and decide which one want to be installed archlinux system.

use fdisk to partion

### Create partition table

enter partition tool
```
fdisk /dev/sda
```

create **gpt** partition table
```
g<Enter>
```

### creat partiton

```
n<Enter>
```
create new partion
```
+200M
```
determine the size of partion
same as above.

## Reformat partition and mount

### reformat
format EFI partition
```
mkfs.fat -F32 /dev/sda1 
```

format normal partition
```
mkfs.ext4 /dev/sda2
```

### mount

```
mount /dev/sda2 /mnt
mkdir -p /mnt/boot/EFI
mount /dev/sda1 /mnt/boot/EFI
```

`lsblk` to check result

## Install basic operator system

```
pacstrap -i /mnt base base-devel linux linux-firmware
```

## Configure basic system

### fstab

```
genfstab -U /mnt >> /mnt/etc/fstab
```
to check, it should have 2 or 3 disk information
```
cat /mnt/etc/fstab
```

### change to new system

```
arch-chroot /mnt /bin/bash
```
in this mode everything should be configure correctly one time, otherwice you will get trouble after reboot.

install vim first, need an editor
``` 
pacman -Syu vim
```

### language setting

select language in locale.gen
```
vim /etc/locale.gen
```

```
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
```

### Timezone

```
ln -sf /usr/share/zoneinfo/...... /etc/localtime
```
set hardware time
```
hwclock --systohc --utc
```

### boot and grub

install boot tools 
```
pacman -S  dosfstools grub efibootmgr
```

install grub and generator grub configure
```
grub-install --target=x86_64-efi --efi-directory=/boot/EFI --recheck
grub-mkconfig -o /boot/grub/grub.cfg
```

### set root password and add user

set root password
```
passwd
```
add new user *username* should be name you want
```
useradd -m -g users -s /bin/bash username
```
set new user password 
```
passwd  username
```

### before reboot

install wireless support 
```
pacman -Syu iwd dhcpcd
```

install xorg
```
pacam -S xrog
```
