# 打ち合わせタイマー

[![Build Status](https://travis-ci.org/medi-y-sato/meetingTimer.svg?branch=master)](https://travis-ci.org/medi-y-sato/meetingTimer)

打ち合わせを 5 分前に終わらせろと震えるタイマー

# 開発メモ

## 初期設定

```sh
$ npm install
$ npm install -g parcel-bundler @vue/cli
$ vue add vuetify
```

```sh
$ npm run serve
```

## ビルド

```sh
$ npm run build
```

### travisからの自動ビルド

`gh-pages` リポジトリに `./dist/` 内部のビルド結果を push することで実現
https://medi-y-sato.github.io/meetingTimer/

## アプリの todo

- 時間の表示がダサいのでなんとかする
- 今の時間の表示がおかしすぎるのでなんとかする
- 25〜30、55〜60 分の時にタイマー押すと即時間切れになるのでなんとかする
- 音を鳴らすもしくは震えさせる(取り急ぎ一秒鳴るだけ)
- 見た目どうにかする

## manifest 指定するアイコン

48/72/96/144/168/192 の画像を用意する
画像ごとに下記エントリを足す

```json
{
  "src": "images/touch/homescreen48.png",
  "sizes": "48x48",
  "type": "image/png"
}
```

## マーケット情報

Google Play Store に公開する時のアレ

```json
  "related_applications": [
    {
      "platform": "play",
      "url": "https://play.google.com/store/apps/details?id=cheeaun.hackerweb"
    }
  ]
```
