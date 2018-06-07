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
