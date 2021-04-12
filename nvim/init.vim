
" General {{{

"" Utility {
set nocompatible
syntax enable
set number
set wildmenu
set title
set cursorline
set laststatus=2
set mouse=a
set hidden
set autoread
set showcmd
set shellslash
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
set ignorecase
set smartcase
set wrapscan
"" }

"" Encoding {
set encoding=utf-8
set fileencodings=utf-8,eucjp-ms,sjis,cp932
"" }

"" Clipboard {
set clipboard=unnamed,unnamedplus
"" }

" }}}

" KeyMap(Insertmode map) {{{
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap <silent> jj <ESC>
" }}}

" KeyMap(Noramlmode map) {{{
nnoremap <CTRL-E> <ScrollWheelDown>
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <S-Left> <C-w>><CR>
nnoremap <S-Right> <C-w><<CR>
nnoremap <S-Up> <C-w>-<CR>
nnoremap <S-Down> <C-w>+<CR>
" }}}

" Plugins {{{

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin('~/.vim/dein')

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/unite.vim')

"" NERDTree {
call dein#add('preservim/nerdtree')
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
"" }

"" Airline {
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
let g:airline_theme = 'wombat'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
"" }

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

