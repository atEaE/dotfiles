# Neovim設定情報

## 設定ファイルの配置場所
### MacOS
`~/.config/nvim/init.vim`を配置します。  
配置する場合は、下記のようにコマンドを実行し、シンボリックリンクを作成することをお勧めします。
```sh
ln -fns ~/workspace/vim-conf/nvim/init.vim ~/.config/nvim/init.vim
```

## 各種設定値
### Set系
#### `number`
行番号表示を有効化します。

#### `hlsearch`
検索時にヒットした文字列のハイライトを有効化します。

#### `incsearch`
インクリメンタルサーチを有効化します。文字が入力されるたびに検索を行います。

#### `cursorline`
カーソルライン表示を有効化します。

#### `wildmenu`
コマンドモードで補完を使用した際に候補一覧表示を有効化します。
