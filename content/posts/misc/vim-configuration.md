---
title: Vim Configuration 
date: 2020-10-08 23:54:00 -0400
author: guangzong
tags: [Linux, vim]
---

## install neovim 
install `neovim` and `python-pynvim`.  Install `python-pynvim` in order to support python

## basic settings

show line number

```
set number
```

show invisible characters

```
set list
set listchars=tab:>-
```

share system clipboard.  in Archlinux package `xclip` is required 

```
set clipboard=unnamedplus
```


convert tab to space 

```
set expandtab
```

spell check

```
set spell spelllang=en_us
```

## plug-in

plug-in manager [`vim-plug`](https://github.com/junegunn/vim-plug)

I am using neovim, so following command used to install vim-plug.
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

put plug-in name between `begin` and `end`
```
call plug#begin('~/.config/nvim/plugin')

call plug#end()
```

1. theme to make eye more comfortable
```
Plug 'morhetz/gruvbox'
colorscheme gruvbox
set background=dark
```
2. powerful completion
```
Plug 'zxqfl/tabnine-vim'
```
3. reformation document. If using python, package `autopep8` is required.
```
Plug 'Chiel92/vim-autoformat'
```

4. transparent vim background
```
highlight Normal guibg=NONE ctermbg=None
```

5.  For sidebar, font `nerd-fonts-hack` is required.

```vim
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'

call defx#custom#option('_', {
                        \ 'winwidth': 30,
                        \ 'split': 'vertical',
                        \ 'show_ignored_files': 0,
                        \ 'buffer_name': 'defxplorer',
                        \ 'toggle': 1,
                        \ 'resume': 1
                        \ })

" Toggle Defx using Ctrl + Space
map <C-space> :Defx<CR>

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
        " Define mappings
        nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')
        nnoremap <silent><buffer><expr> c defx#do_action('copy')
        nnoremap <silent><buffer><expr> m defx#do_action('move')
        nnoremap <silent><buffer><expr> p defx#do_action('paste')
        " nnoremap <silent><buffer><expr> l defx#do_action('open')
        nnoremap <silent><buffer><expr> v defx#do_action('open', 'vsplit')
        nnoremap <silent><buffer><expr> P defx#do_action('preview')
        nnoremap <silent><buffer><expr> o defx#do_action('open_or_close_tree')
        nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
        nnoremap <silent><buffer><expr> N defx#do_action('new_file')
        nnoremap <silent><buffer><expr> M defx#do_action('new_multiple_files')
        nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns', 'mark:indent:icon:filename:type:size:time') nnoremap <silent><buffer><expr> S
                                \ defx#do_action('toggle_sort', 'time') nnoremap <silent><buffer><expr> d
                                \ defx#do_action('remove')
        nnoremap <silent><buffer><expr> r defx#do_action('rename')
        nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')
        nnoremap <silent><buffer><expr> x defx#do_action('execute_system')
        nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
        nnoremap <silent><buffer><expr> .  defx#do_action('toggle_ignored_files')
        nnoremap <silent><buffer><expr> ; defx#do_action('repeat')
        nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
        nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
        nnoremap <silent><buffer><expr> q defx#do_action('quit')
        nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
        nnoremap <silent><buffer><expr> *  defx#do_action('toggle_select_all')
        nnoremap <silent><buffer><expr> j  line('.') == line('$') ? 'gg' : 'j'
        nnoremap <silent><buffer><expr> k  line('.') == 1 ? 'G' : 'k'
        nnoremap <silent><buffer><expr> <C-l> defx#do_action('redraw')
        nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
        nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')
endfunction 

```

6. tabsize

```
set tabstop=4
set shiftwidth=4
set expandtab
```

7. setup mouse

   ```
   set mouse=a
   ```
   
8. setup encoding

   ```
   set encoding=UTF-8
   ```

9. terminal use `Esc` to return normal mode

   ```
   tnoremap <Esc> <C-\><C-n>
   ```

10. setup invisible character

    ```
    set list 
    set listchars=tab:>-,space:·
    ```

11. leader e to open file menu

    ```
    nmap <silent> <Leader>e :Defx -columns=icons:indent:filename:type <cr>
    ```

12. [configure file](https://gist.github.com/chen-gz/ebb8b879915b62f0a5d28ad46f542751)

