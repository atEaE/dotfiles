                                      
"                           __      __(_)_ __ ___  _ __ ___
"                           \ \    / /  | '_ ` _ \| '__/ __|
"                             \ \/ /  | | | | | | | |  | (__
"                            (_) _/   |_|_| |_| |_|_|  \___|

" General {{{

"" Utility {
set number
set wildmenu
set title
set cursorline
"" }

set expandtab
set laststatus=2

"" Search {
set hlsearch
set incsearch
"" }

"" Encoding {
set encoding=utf-8
set fileencodings=utf-8,eucjp-ms,sjis,cp932
"" }

"" Clipboard {
set clipboard=unnamed,unnamedplus
"" }

" }}}


if &compatible
  set nocompatible
endif

" Plugins {{{

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin('~/.vim/dein')

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/unite.vim')
call dein#add('preservim/nerdtree')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('junegunn/fzf', { 'build': './install --all'})
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
call dein#add('tpope/vim-fugitive')

if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

call dein#end()

" }}}

filetype plugin indent on

" vim-airline/vim-airline {{{
let g:airline_theme = 'wombat'

" extensions
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
" }}}

"シンタックスハイライトを有効化 
" :help :syntax-enable で内容を調べることができます。
syntax enable

