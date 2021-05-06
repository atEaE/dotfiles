# VSCode 設定ファイル

VSCodeは、`workspace`別もしくは、`user(global`に設定ファイルを持つことができる。  
使用するOSによって、格納場所が異なるため注意する。最新の情報は、[こちらの公式サイト](https://code.visualstudio.com/docs/getstarted/setting)の情報を参考にする。  

## 設定ファイルの配置場所

- Windows : `%APPDATA%\Code\User\settings.json`
- Mac OS : `$HOME/Librar/Application Support/Code/User/settings.json`
- Linux : `$HOME/.config/Code/User/settings.json`

設定ファイルが保存されているフォルダには、`keybidings.json`も合わせて配置できる

## Neovim拡張用のKeyMapping

### [Mac Keymappimg]

### 全モード共通Mapping

|    key     |             action             |
| :--------- | :----------------------------- |
| ctrl + p   | Suggestion Prev(Up)            |
| ctrl + n   | Suggestion Next(Down)          |
| ctrl + p   | QuickAccess Prev(Up)           |
| ctrl + n   | QuickAccess Next(Down)         |
| ctrl + p   | CommandPallet Prev(Up)         |
| ctrl + n   | CommandPallet Next(Down)       |

### InsertモードMapping

|    key     |             action             |
| :--------- | :----------------------------- |
|  k         | Cursor Up                      |
|  j         | Cursor Down                    |
|  h         | Cursor Left                    |
|  l         | Cursor Right                   |
|  j j       | InsertモードからNormalモードへ    |
|  Esc       | InsertモードからNormalモードへ    |

### NormalモードMapping

|    key     |             action             |
| :--------- | :----------------------------- |
|  y y       | 1行 Yank(Copy)                 |
|  p         | 次の行にPut(Paste)              |
|  shift + p | 上の行にPut(Paste)              |
|  d d       | 1行 Delete(Cut)                |

### CommandモードMapping

|    key     |             action             |
| :--------- | :----------------------------- |
|  w         | ActiveEditor Save              |
|  wq        | ActiveEditor Save & Close      |
