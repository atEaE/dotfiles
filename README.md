# Vim 
`vim` と `neovim`用の設定ファル情報を管理します。

## Plugin Manager のInstall
### 1.Dein.vimのInstall
Plugin ManagerはDein.vimを使用します。下記の方法でInstallしてください。

```shell
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh -o /tmp/installer.sh
sh /tmp/installer.sh ~/.vim/dein
```

### 2. `.vimrc` or `.vim.init`にスクリプトを追加
自前の設定ファイルを持っている方は不要です。  
下記のスクリプトを追加する。(最新のスクリプトは[こちら](https://github.com/Shougo/dein.vim/blob/master/README.md)を確認する。)

```vim
if &compatible
  set nocompatible
endif

" Required:
" dein.vimの実態を追加します。
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" PackageのRootフォルダを指定します。
call dein#begin('~/.vim/dein')

" Let dein manage dein
call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
" call dein#install()
"endif
```

### 3. DeinのInstall
最後にvimを開いて、コマンドモードで下記のコマンドを実行する。  
(Errorが発生する場合、`.vimrc` or `init.vim`に記載してスクリプトが間違っている可能性が高いので修正する。)
```vim
:call dein#install()
```

## 2. Deinを使ったPluginの管理方法
### Install
PluginのInstallはコマンドモードで下記のコマンドを入力する。
```vim
:call dein#install()
```

### Update
PlubinのUpdateはコマンドモードで下記のコマンドを入力する。
```vim
:call dein#update()
```

### List
Pluginの参照を行う際はコマンドモードで下記のコマンドを入力する。
```vim
:Unite dein
```
