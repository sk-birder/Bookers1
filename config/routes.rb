Rails.application.routes.draw do
  # root to:  'コントローラ名#アクション名'
  root to: 'homes#top'
  get 'homes/top' # ルートパスでの表示に変更
  post 'books' => 'books#create'
  resources :books # index, create, new, edit, show, update(PATCH), update(PUT), destroy
end