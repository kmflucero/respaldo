Rails.application.routes.draw do
	  resources :posts
  get 'works/index'
  get 'works/about'
  devise_for :users
  root "tareas#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
