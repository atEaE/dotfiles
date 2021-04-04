# Vim Configuration
`vim` と `neovim`用の設定ファル情報を管理します。

## 1. Plugin Manager のInstall
Plugin ManagerはDein.vimを使用します。下記の方法でInstallしてください。

```shell
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh -o /tmp/installer.sh
sh /tmp/installer.sh ~/.vim/dein
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
