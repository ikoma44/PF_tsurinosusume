Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'homes#top'

  namespace :users do
    resources :posts do
      collection do
        delete 'destroy_all'
      end
    end
  end
end