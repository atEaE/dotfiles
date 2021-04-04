"                                      _
"                           __      __(_)_ __ ___  _ __ ___
"                           \ \    / /  | '_ ` _ \| '__/ __|
"                             \ \/ /  | | | | | | | |  | (__
"                            (_) _/   |_|_| |_| |_|_|  \___|

" General {{{

set number
set hlsearch
set incsearch
set wildmenu
set cursorline
set laststatus=2

" }}}


if &compatible
  set nocompatible
endif

" Plugins {{{

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin('~/.vim/dein')

call dein#add('Shougo/unite.vim')
call dein#add('preservim/nerdtree')

call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

call dein#end()

" }}}

filetype plugin indent on


"シンタックスハイライトを有効化 
" :help :syntax-enable で内容を調べることができます。
syntax enable


