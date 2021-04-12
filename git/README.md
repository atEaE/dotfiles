# Git関連設定

## Global gitignoreを有効にする。
```sh
git config --global core.excludesfile ~/.gitignore_global
```

実行後、globalの`.gitconfig`を確認し、下記の設定が存在することを確認する。
UserHomeディレクトリに配置されていること。
```.gitconfig
[core]
	excludesfile = ~/.gitignore_global
```
