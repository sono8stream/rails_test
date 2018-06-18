## リンク
link_to リンクテキスト, リンク先のパス
### パスの指定
* 名前付きパス

  形式: コントロール_アクション_path (= '/コントロール/アクション')

  例) article_edit_path = '/article/edit'

  config/routes.rb内で個別に設定する必要あり

  > get 'コントロール名/アクション'

* リソースベースで指定した場合

  config/routes.rb内

  > resources :コントロール名

  自動的にパスが設定される(Getting started withのarticleはこの形式)

### パスの確認方法

  > $ rake routes

## hamlの書式
  "-"や"="だけでなく、"."や":"もエスケープシーケンス"\\"とともに用いる

## coffeeScript実行

事前にNode.jsをインストールしておくこと

## アニメーションライブラリTweenMaxの導入

Gemfile内に

> gem 'greensock-rails'

bundle install実行

application.js内に

> //= require 'greensock/TweenMax'

アニメーションの書き方は[こちら](http://www.mdesign-works.com/blog/web/tween-max/)を参考に

## BootStrap 4 導入時のjsエラー解決法

Gemfile内の

> gem 'duktape'

を削除し、bundle update

## sorcery導入
### db:migrateでエラーが生じる場合
migrationファイルの1行目を

> class SorceryCore < ActiveRecord::Migration[4.2]

にする(エラーメッセージの通り)

## ページ移動時にjQueryが作動しないときの解決法

turboLinkにより、ページ移動時にjQueryが作動しない。

そこで、Rails5ではスクリプトを実行させるタイミングに応じて以下を書いて機能を実装する。

- 初回読み込み、リロード、ページ切り替えのとき
> $(document).on 'turbolinks:load', -> 

- 初回読み込み、ページ切り替えのとき(リロード時は動かない)
> $(document).on 'turbolinks:render', -> 

- ページ遷移前に行いたいとき(ページ切り替え、リロード時は動かない)
> $(document).on 'turbolinks:request-start', ->
