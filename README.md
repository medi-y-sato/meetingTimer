# 開発メモ

## 初期設定

```sh
$ npm install
$ npm install -g parcel-bundler @vue/cli
$ vue add vuetify 
```

```sh
$ parcel index.html
```


## アプリのtodo

* 時間の表示がダサいのでなんとかする
* 今の時間の表示がおかしすぎるのでなんとかする
* 25〜30、55〜60分の時にタイマー押すと即時間切れになるのでなんとかする
* 音を鳴らすもしくは震えさせる(取り急ぎ一秒鳴るだけ)
* 見た目どうにかする


## manifest指定するアイコン

48/72/96/144/168/192の画像を用意する
画像ごとに下記エントリを足す

````json
    {
      "src": "images/touch/homescreen48.png",
      "sizes": "48x48",
      "type": "image/png"
    }
````


## マーケット情報
Google Play Storeに公開する時のアレ

```json
  "related_applications": [
    {
      "platform": "play",
      "url": "https://play.google.com/store/apps/details?id=cheeaun.hackerweb"
    }
  ]
```
