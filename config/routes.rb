Rails.application.routes.draw do
  get 'lists/new'
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
   #as:オプションを追加することで,
   #「'lists#show'の設定を、listとして利用できる」の意味
   #ルーティング(名前付きルート)

  post 'lists' => 'lists#create'
  # .../lists/1 や .../lists/3 に該当する.
  #URLが/lists/1の場合、アクション内にparams[:id] と記述すると、id=1を取り出せます

  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
