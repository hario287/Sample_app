Rails.application.routes.draw do
 # get 'lists/new'
 # get 'top' => 'homes#top'
 # post 'lists' => 'lists#create'
 # get 'lists' => 'lists#index'
 # get 'lists/:id' => 'lists#show', as: 'list'
   #as:オプションを追加することで,
   #「'lists#show'の設定を、listとして利用できる」の意味
   #ルーティング(名前付きルート)
 # get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
   # editアクションへのルーティング

 # patch 'lists/:id' => 'lists#update', as: 'update_list'
  #新規投稿のHTTPメソッドは、POSTを使いました。
  #一方、更新の場合はPATCHで指定します。

 # delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'
  #この後コントローラに実装するdestroyアクション用に、
  #ルーティングを追加します。
  #HTTPメソッドはDELETE、URLはlists/:idです。
  #名前付きパスは、destroy_listと設定します。


  ###上記のルーティングの記述をもっと短縮できる書き方が
  ###resourcesメソッド。ルーティングを一括して自動生成してくれる。
  get 'top' => 'homes#top'
  resources :lists
  end
