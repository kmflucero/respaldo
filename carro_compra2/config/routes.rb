Rails.application.routes.draw do
  get 'products/index'
  root 'products#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
