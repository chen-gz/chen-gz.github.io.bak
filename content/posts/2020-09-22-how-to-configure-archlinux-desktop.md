---
title: How to Configure Arch Linux desktop
author: guangzong
date: 2020-09-22 14:30:00 -0400
categories: [Linux]
tags: [Linux]
---

Assume already install Arch Linux. [guide is here](../how-to-install-archlinux)

## Network manager

```
pacman -Syu networkmanager network-manager-applet dhcpcd dhclient
systemctl enable NetworkManager
```

## touchpad

To enable touchpad tap to click  
copy configure file to /etc/X11/xorg.conf.d/

[congifure file](https://github.com/chen-gz/LinuxSettings/blob/master/libinput/30-touchpad.conf)

## backlight

```
pacman -S acpilight
```

and add user to video group  
[reference arch wiki](https://wiki.archlinux.org/index.php/Users_and_groups#Group_management)

```
gpasswd -a user group
```

## sound

install pulseaudio to support sound
```
pacman -S pulseaudio pavucontrol
```


## Chinese font
```
pacman -Syu wqy-microhei
```

## Browser

firefox and chrome both are good choise in linux system. I am using brave.

```
git clone https://aur.archlinux.org/brave-bin.git
cd brave-bin
makepkg -si
```
plugins
* [vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en)
* [Dark Mode](https://chrome.google.com/webstore/detail/dark-mode/dmghijelimhndkbmpgbldicpogfkceaj?hl=en)

## Desktop

I recommand i3, awesome, xfce4. Gnome and KDE are too heavy to me.
```
pacman -Syu i3-gaps i3status
```
configuration for i3, [i3 config](https://gist.githubusercontent.com/chen-gz/83eade557baf20a4021af321d973d8fe/raw/d0f0fdcfa03f32f9497d08689dad14c7fcbf54ec/i3_config)

file should be put in `~/.config/i3/`

file should be put in `~/.config/i3status/`

software for i3

* feh (wallpaper)
* dmenu (run program)
* picom (transparent) (fork from compton)
* transset-df (transparent patch)

## Chinese input method

fcitx will be used. (ibus also a good choise)
```
pacman -S fcitx fcitx-configtool fcitx-googlepinyin fcitx-im
```
recommand change **Configure->Global Config->Trigger Input Method** to **shift+Space**. Other keys are conflit with vim or i3.

configure file need add to `~/.xprofile`

```
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
```


## Xterm

```
pacman -S xterm
```
configure file, [xterm](https://gist.githubusercontent.com/chen-gz/ca14b60ff5f88690b03c1db0adde2191/raw/127e334cd340eb5683be09795ba9b6a1d8fe7420/.Xresources)

file should be put in `~/`
```
xrdb .Xresources
```

## Vim

use [vim-plug](https://github.com/junegunn/vim-plug) to manager plugs
install command

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

configuration in vim post

### YMC configuration

prepare software

* cmake
* clang
* python-setuptools

```
cd .vim/plugged/YouCompleteMe
./install.py --clangd-completer
```

## lightdm 

install 
```
pacman -Syu lightdm lightdm-gtk-greeter-settings
```
[autologin](https://wiki.archlinux.org/index.php/LightDM#Enabling_autologin)

```
/etc/lightdm/lightdm.conf
----
[Seat:*]
autologin-user=username
```
```
groupadd -r autologin
gpasswd -a username autologin
```
## Basic software recommand

just use follow command
```
pacmcan -S  package name
```
packages

* mupdf-gl  (pdf viwer)
* gimp      (like photoshop)
* doublecmd (file manager)
* flameshot (screen capture)
* sdcv      (translation)([Arch wiki](https://wiki.archlinux.org/index.php/Sdcv))
* udisks2   (mount external disk automatically)
* mendeley-bundle (from Aur)
* eog

## zsh

install zsh

```
pacman -Syu zsh
```

set zsh as default
```
chsh -s /bin/zsh
```

[configure file and oh-my-zsh](https://github.com/chen-gz/LinuxSettings/tree/master/zsh) (will drop)


## battery

save power 
```
pacman -Syu tlp
```


## file management
recommand using `nemo` as file manager
```
pacman -Syu nemo
```
