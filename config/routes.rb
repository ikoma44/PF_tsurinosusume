Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'homes#top'

  namespace :users do
    resources :posts
    resources :my_page, only:[:show, :edit, :update]
    get '/my_page/unsubscribe' => "my_page#unsubscribe"
    patch '/my_page/withdraw' => "my_page#withdraw"
  end
end