# VSCode 設定ファイル

VSCodeは、`workspace`別もしくは、`user(global`に設定ファイルを持つことができる。  
使用するOSによって、格納場所が異なるため注意する。最新の情報は、[こちらの公式サイト](https://code.visualstudio.com/docs/getstarted/setting)の情報を参考にする。  

## 設定ファイルの同期

設定ファイルの同期は、VSCodeに標準で搭載された[Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync)を使用すること。  
注意点として、同期前に`settings.json`や`keybindins.json`を大幅に変更してしまうと、Mergeおよび同期が不可能になってしまうため、VSCodeのSetupを行う際はまず第一に、設定ファイルの同期を行うこと。　　

## 設定ファイルの配置場所

- Windows : `%APPDATA%\Code\User\settings.json`
- Mac OS : `$HOME/Librar/Application Support/Code/User/settings.json`
- Linux : `$HOME/.config/Code/User/settings.json`

設定ファイルが保存されているフォルダには、`keybidings.json`も合わせて配置できる

## Neovim拡張との併用を踏まえてKeymapping

### VSCode標準ショートカット

| key     | action                    |
| :------ | :------------------------ |
| cmd + : | パンくずリストにFocusする |

### 全モード共通Mapping

| key      | action                   |
| :------- | :----------------------- |
| ctrl + p | Suggestion Prev(Up)      |
| ctrl + n | Suggestion Next(Down)    |
| ctrl + p | QuickAccess Prev(Up)     |
| ctrl + n | QuickAccess Next(Down)   |
| ctrl + p | CommandPallet Prev(Up)   |
| ctrl + n | CommandPallet Next(Down) |

### InsertモードMapping

| key  | action                         |
| :--- | :----------------------------- |
| k    | Cursor Up                      |
| j    | Cursor Down                    |
| h    | Cursor Left                    |
| l    | Cursor Right                   |
| j j  | InsertモードからNormalモードへ |
| Esc  | InsertモードからNormalモードへ |

### NormalモードMapping

| key       | action                                            |
| :-------- | :------------------------------------------------ |
| y y       | 1行 Yank(Copy)                                    |
| p         | 次の行にPut(Paste)                                |
| shift + p | 上の行にPut(Paste)                                |
| d d       | 1行 Delete(Cut)                                   |
| r         | カーソル下の文字を置き換える(Replace)             |
| shift + r | 置換モードに移行する。(EscでNへ)                  |
| w         | wordsの前方に移動. (word由来)                     |
| e         | words前方の単語の終わりに移動 (由来はend of word) |
| b         | words後方の単語の終わりに移動 (由来はbackword)    |
| g g       | Editorの先頭へ移動                                |
| shift + g | Editorの終末へ移動                                |
| /         | 前方検索                                          |
| ?         | 後方検索 (Shift + /なので"/"逆と覚える)           |

### CommandモードMapping

| key  | action                    |
| :--- | :------------------------ |
| w    | ActiveEditor Save         |
| wq   | ActiveEditor Save & Close |
| e    | QuickAccess Open          |

## Neovim Extensinos追加時のエラー回避について

Neovim ExtensionsをInstallした際に、InstallされているNeovimのVersionによっては、拡張機能がただしく機能しない場合がある。  
2021/5/5現在では、`v0.5.0-nightly`以上が推奨されているため注意が必要。

```sh
# brewでInstallしているNeovimのUninstall
brew unlink neovim
brew uninstall neovim

# neovimのリポジトリからHEADを直接Install
brew install --HEAD neovim

```
