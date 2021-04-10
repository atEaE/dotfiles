# Neovim設定情報

## 設定ファイルの配置場所
### MacOS
`~/.config/nvim/init.vim`を配置します。  
配置する場合は、下記のようにコマンドを実行し、シンボリックリンクを作成することをお勧めします。
```sh
ln -fns ~/workspace/vim-conf/nvim/init.vim ~/.config/nvim/init.vim
```

## Plugin詳細
#### 1. Unite.vim
#### 2. NERDTree
#### 3. vim-airline
#### 4. vim-airline-themes
#### 5. ryanoasis/vim-devicons
PluginをInstallするだけではiconは表示されない。iconの元となるFontsを事前にInstallしておく必要がある。  
事前にFontsをInstallしておかないと、`?`で文字化けしてしまう。  
![unknown-icons](./imgs/unknown-icons.png)  
FontsのInstall方法は、[nerd-fonts](https://github.com/ryanoasis/nerd-fonts#font-installation)を参照する。  
1. FontsのInstall  
    macOS  
    ```sh
    cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
    ```

2. Fontsの適用  
    Neovimは、Ternminal上で動作するため、InstallしたFontsをTerminalに対して適用しておく必要がある。
    iTerm2 > Preferences > Profilesdsas

## `vim-lsp`の使用方法
`golang`のフォーマットに伴って,`vim-lsp`を導入している。
### 1. 言語サーバーのInstall方法
Installしたい言語のファイルを開いた状態で、`:LspInstallServer`を実行する。

### 2. 言語サーバーのUnInstall方法
不要になった言語サーバーは、`:LspUninstallServer [server-name]`で、Uninstallできる。

## 設定値詳細
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

### Map系
#### map
`map`コマンドは、あるキー入力を別のキーに割り当てることができる。
```vim
:map j k
```
この場合は、[j]キーを入力したら、[k]キーを押した時の機能を実行する。ということを指している。
```vim
:map <C-a> <C-x>
```
この場合は、`CTRL-A`を入力したときに、`CTRL-X`を実行するという感じ。
> ちなみにここで登場する、`CTRL-A`は、コマンド状態で入力すると、カーソルが数値もしくはアルファベットに当たっている場合、1インクリメントさせることができる。  
> `CTRL-X`はその逆で、1デクリメントさせることができる。
> つまり上のマップは、`CTRL-A`に`CTRL-X`を割り当てているので、1インクリメントどころか、1デクリメントするというなんとも意地悪なマップ。


#### noremap


