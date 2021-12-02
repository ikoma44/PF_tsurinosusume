Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'homes#top'

  namespace :users do
    resources :posts
    resources :my_pages, only:[:show, :edit, :update]
    get '/my_pages/unsubscribe' => "my_page#unsubscribe"
    patch '/my_pages/withdraw' => "my_page#withdraw"
  end
end