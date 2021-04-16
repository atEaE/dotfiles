# ansible
構成管理ツール

## Install要件
Ansibleは、Python2(ver2.7)もしくは、Python3(ver3.5)がインストールされていればどのマシンでも実行可能。  
詳細な[詳細なInsall要件](https://docs.ansible.com/ansible/2.9_ja/installation_guide/intro_installation.html)を参照すること。

### MacへのInstall
2021年4月現在、MacへのInstallは`pip`経由のInstallが推奨されているため、pipからInstallする。  
ただし、`pip`を最新の状態へUpgradeされてから行うこと。

1. `pip`のUpgrade
   ```sh
   pip install --upgrade pip
   ```
