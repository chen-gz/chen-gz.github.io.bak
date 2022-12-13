---
title: Using RUST and GTK In Windows
author: guangzong
date: 2020-08-28 18:30:00 -0400
categories: [Misc]
tags: [Rust, Gtk]
math: true
---

## Purpose 

The reason I writing this post is because none of documente give right process to bulid gtk in Windows. I spent a lot to build and simple gtk problem in Windows.


## Two Useful Link

1. <https://github.com/rust-lang/rustup/issues/846>
2. <https://www.reddit.com/r/rust/comments/86kmhu/compiling_rust_windows_gtk_stepbystep/>

## Installation And Build Project

step to step using rust and gtk in Windows

1. Install rust using default setting. [**Rust Downlaod Link**](https://static.rust-lang.org/rustup/dist/i686-pc-windows-gnu/rustup-init.exe).
2. Go to http://www.msys2.org/ and install msys (x86_64). [**Downlaod Link**](https://repo.msys2.org/distrib/x86_64/msys2-x86_64-20200720.exe)
3. Run these commands inside MSYS (not Windows cmd!)
```console
pacman -S mingw-w64-x86_64-gtk3
pacman -S mingw-w64-x86_64-toolchain
```
4. Make the needed environment variable linkings inside Windows cmd 
```console
SET GTK_LIB_DIR=C:\msys64\mingw64\lib
SET PATH=%PATH%;C:\msys64\mingw64\bin
SETX GTK_LIB_DIR %GTK_LIB_DIR%
SETX PATH %PATH%
```
5. Add `gnu/gtk` compatible target to rustup in Windows cmd
```console
rustup target add x86_64-pc-windows-gnu
```
6. Install rust gnu toolchain.
```console
rustup toolchain install stable-x86_64-pc-windows-gnu
```
7. set rust toolchain to GNU
```console
rustup set default-host x86_64-pc-windows-gnu
```
8. Build your porject.
```console
cargo build
```
9. Remove command line window in gui application.
add following line to the top of your `main.rs` 
```rust
#![windows_subsystem = "windows"]
``` 
