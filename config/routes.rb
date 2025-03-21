Rails.application.routes.draw do
  root to: 'homes#top' # ルートパスでの表示に変更
  get 'homes/top'
  post 'books' => 'books#create'
  resources :books # index, create, new, edit, show, update(PATCH), update(PUT), destroy
end