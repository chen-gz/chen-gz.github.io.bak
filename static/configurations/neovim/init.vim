call plug#begin('~/.local/share/nvim/plugged')
    Plug 'ycm-core/YouCompleteMe'
    Plug 'vim-airline/vim-airline'
    Plug 'github/copilot.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'airblade/vim-gitgutter'

    Plug 'tmsvg/pear-tree'
    Plug 'dstein64/vim-startuptime'
    
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'Yggdroot/indentLine'
    Plug 'sheerun/vim-polyglot'
    "Plug 'puremourning/vimspector'
     Plug 'airblade/vim-gitgutter'
    Plug 'Chiel92/vim-autoformat'
    " Plug 'sbdchd/neoformat'
    Plug 'dense-analysis/ale'
    
    Plug 'tomasr/molokai'             "colorscheme
    Plug 'morhetz/gruvbox'            "colorscheme
    Plug 'sickill/vim-monokai'      "colorscheme
    Plug 'chriskempson/base16-vim'  "colorscheme
    Plug 'gryf/wombat256grf'        "colorscheme
    Plug 'NLKNguyen/papercolor-theme' "colorscheme
    Plug 'doums/darcula'
    "
    Plug 'Yggdroot/LeaderF'
    
    " " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " " Plug 'Shougo/deoplete-clangx'
    if has('nvim')
        Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/defx.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
	Plug 'kristijanhusak/defx-icons'
call plug#end()

source /home/zong/.config/nvim/defx.vim
source /home/zong/.config/nvim/keymap.vim
source /home/zong/.config/nvim/helloworld.vim
" colorscheme molokai
colorscheme darcula
set conceallevel=0
set termguicolors
"set clipboard+=unnamedplus
set clipboard=unnamedplus
set number
set mouse=a
set shiftwidth=4
syntax on

set guifont=Source\ Code\ Pro\ 11

set expandtab "convert tabs to spaces
set tabstop=4
"set scroll
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
set splitright
set encoding=utf-8
set fileencoding=utf-8
set nocompatible
set showmatch
set completeopt-=preview
set listchars=tab:>-,trail:-,nbsp:+
hi MatchParen cterm=none ctermbg=green ctermfg=blue


let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1

let g:cpp_concepts_highlight = 1

let g:cpp_no_function_highlight = 1
