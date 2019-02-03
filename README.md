# linebot_provisioning
LINEのBOTサーバを自動で（省力化して）構築するために、手元のUbuntu 14.04仮想マシンにuWSGIサーバをたてるまでをAnsibleで構築する例。この例では、サイト自体は別のgithubリポジトリ（以下）にある前提。

```
git@github.com:tacchang001/bot_fx_helloworld.git
```

これがうまくいけば、あとはちょこっと変えるだけでDTI VPSにAnsibleでサクッとサイトを構築できる（はず）。

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

##  エラー対応

### Internal Error

uWSGI単体でサーバは機能しているか？


```bash
# https://qiita.com/morinokami/items/e0efb2ae2aa04a1b148b
uwsgi --socket /tmp/uwsgi.sock --module wsgi --chmod-socket=666
```
