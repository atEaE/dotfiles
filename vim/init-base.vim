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
"!! vi互換モードで動作させない。(vi互換モードで動作させると動かないプラグインが存在するため。)
set nocompatible
"!! シンタックスハイライトを有効化する。
syntax enable
"!! 左側に行番を表示させます。
set number
"!! 補完時に補完候補を全表示する。
set wildmenu
set title
"!! 選択している行にカーソルラインを表示します。
set cursorline
"!! 行末に常にステータスバーを表示させます。
set laststatus=2
"!! マウス操作を有効にします。これにより、ホイールスクロール、ファイルセレクトが可能になります。
set mouse=a
"!! 複数ファイルの編集を可能にする
set hidden
"!! 内容が変更された場合、自動的に再読み込み
set autoread
"!! 入力中のコマンドを表示する。
set showcmd
set shellslash
"" }

"" Indent {
"!! Tab入力時にTab文字ではなく半角文字を挿入する。
set expandtab
"!! Tab幅を半角スペース4に設定する。
set tabstop=4
"!! 自動インデント幅を半角スペース4に設定する。
set shiftwidth=4
"!! 不可視文字を表示する。
set list
"" }

"" Search {
"!! 検索文字をハイライトします。
set hlsearch
"!! インクリメンタルサーチ(文字が入力されるたびに検索を行う)を有効にします。
set incsearch
"!! 大文字小文字を区別しない。
set ignorecase
"!! 大文字で検索された場合、対象を大文字に限定する。
set smartcase
"!! 行末まで検索を行ったら自動的に行頭に移動する。
set wrapscan
"" }

"" Encoding {
"!! 文字コードをUTF-8に設定する。
set encoding=utf-8
"!! 自動判別可能な文字コードの種別を設定する。(ここに設定している文字コードは文字化けせずに出力できる。)
set fileencodings=utf-8,eucjp-ms,sjis,cp932
"" }

"" Clipboard {
"!! yankのバッファとクリップボードを共有する。(これにより、yankしたものを別のWindowへ, 別のWindowのコピーをVimへという動作ができる。)
set clipboard=unnamed,unnamedplus
"" }

" }}}

" KeyMap(Insertmode map) {{{
"!! インサートモードマップ：{を入力時に自動的に左側に}を入力し、入力範囲を閉じます。
inoremap { {}<Left>
"!! インサートモードマップ：(を入力時に自動的に左側に)を入力し、入力範囲を閉じます。
inoremap ( ()<Left>
"!! インサートモードマップ：[を入力時に自動的に左側に]を入力し、入力範囲を閉じます。
inoremap [ []<Left>
"!! インサートモードマップ：'を入力時に自動的に左側に'を入力し、入力範囲を閉じます。
inoremap ' ''<Left>
"!! インサートモードマップ："を入力時に自動的に左側に"を入力し、入力範囲を閉じます。
inoremap " ""<Left>
"!! インサートモードマップ：jjの連続入力を<ESC>に置き換えます。(NORMALモードへ戻ります。)
inoremap <silent> jj <ESC>
" }}}

" KeyMap(Noramlmode map) {{{
"!! ノーマルモードマップ：Ctrl-Eにマウスホイールダウンを割り当てる。
nnoremap <CTRL-E> <ScrollWheelDown>
"!! ノーマルモードマップ：<TAB>をgtに割り当てる。
nnoremap <Tab> gt
"!! ノーマルモードマップ：<Shift-Tab>をgTに割り当てる。
nnoremap <S-Tab> gT
"!! ノーマルモードマップ：<Shift-Left>を<C-w>><CR>(画面を左に広げる)に割り当てる。
nnoremap <S-Left>  <C-w>><CR>
"!! ノーマルモードマップ：<Shift-Right>を<C-w><<CR>(画面を右に広げる)に割り当てる。
nnoremap <S-Right> <C-w><<CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>
" }}}

" Plugins {{{

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin('~/.vim/dein')

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/unite.vim')

"" NERDTree {
call dein#add('preservim/nerdtree')
"!! 隠しファイルを表示します。(0に設定すると表示しません。)
let NERDTreeShowHidden=1
"!! フォルダ閉じアイコンを'↠'に変更します。
let g:NERDTreeDirArrowExpandable = '↠'
"!! フォルダ開きアイコンを'↡'に変更します。
let g:NERDTreeDirArrowCollapsible = '↡'
"" }

"" Airline {
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
"!! Airlineテーマを'wombat'に設定
let g:airline_theme = 'wombat'
"!! ステータスラインにカレントブランチを表示する。
let g:airline#extensions#branch#enabled = 1
"!! タブラインの表示を有効にする。
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
"" }

"" Fzf {
call dein#add('junegunn/fzf', { 'build': './install --all'})
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
"" }

call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-commentary')
call dein#add('ryanoasis/vim-devicons')

call dein#add('voldikss/vim-floaterm')
"" Template {
call dein#add('mattn/vim-sonictemplate')
let g:sonictemplate_vim_template_dir = '$HOME/.vim/template'
"" }

"" Markdown {
call dein#add('previm/previm')
let g:previm_open_cmd = 'open -a Google\\ Chrome'
""  }

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

nnoremap FF :<C-u>call <SID>fzf()<CR>
