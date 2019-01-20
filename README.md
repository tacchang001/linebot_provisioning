# linebot_provisioning
LINEのBOTサーバをAnsibleで構築する

## sshキー

```
 ssh-copy-id -i ~/.ssh/公開鍵.pub ユーザ@192.168.56.111
```

## YML文法チェック

```
 ansible-playbook $1 --syntax-check
```

## 実行

```
 ansible-playbook -i hosts site.yml --private-key ~/.ssh/秘密鍵 --ask-become-pass -vvv
```
