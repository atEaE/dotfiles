"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
"!! 注意:このinit-base.vimは、init.vimのbaseになるファイルです。
"!! このファイルを編集するだけでは、init.vimには反映されません。
"!! 最後に必ず、`build.sh`を実行しましょう！
"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
"!!                           __      __(_)_ __ ___  _ __ ___
"!!                           \ \    / /  | '_ ` _ \| '__/ __|
"!!                             \ \/ /  | | | | | | | |  | (__
"!!                            (_) _/   |_|_| |_| |_|_|  \___|

" General {{{

"" Utility {
set number
set wildmenu
set title
set cursorline
set laststatus=2
set mouse=a
"" }

"" Indent {
set expandtab
set tabstop=4
set shiftwidth=4
set list
"" }

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

if &compatible
  set nocompatible
endif

" }}}

" KeyMap(noremap) {{{
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

inoremap <silent> jj <ESC>
" }}}

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
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-commentary')
call dein#add('ryanoasis/vim-devicons')


"" Template {
call dein#add('mattn/vim-sonictemplate')
let g:sonictemplate_vim_template_dir = '$HOME/.vim/template'
"" }

"" Markdown {
call dein#add('previm/previm')
let g:previm_open_cmd = 'open -a Google\ Chrome'
"" }

"" LSP {
call dein#add('prabirshrestha/async.vim')
call dein#add('prabirshrestha/asyncomplete.vim')
call dein#add('prabirshrestha/asyncomplete-lsp.vim')
call dein#add('prabirshrestha/vim-lsp')
call dein#add('mattn/vim-lsp-settings')
call dein#add('mattn/vim-lsp-icons')
"" }

"" go {
call dein#add('mattn/vim-goimports')
"" }

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

"!! シンタックスハイライトを有効化 
"!! :help :syntax-enable で内容を調べることができます。
syntax enable

