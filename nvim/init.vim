if &compatible
  set nocompatible
endif

" dein.vimの実態が存在するファイルパスを追加
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Package Install場所のRootフォルダを追加
call dein#begin('~/.vim/dein')

" Pacakge管理開始
call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

call dein#end()

filetype plugin indent on


"シンタックスハイライトを有効化 
" :help :syntax-enable で内容を調べることができます。
syntax enable

" 検索結果のハイライト
set hlsearch

" インクリメンタルサーチの有効化(文字入力ごとに検索する)`
set incsearch

" 行番号の設定
set number

" カーソルを表示
set cursorline

" 最下行にステータス行を表示する
set laststatus=2

" コマンド補完時に候補一覧を表示
set wildmenu
