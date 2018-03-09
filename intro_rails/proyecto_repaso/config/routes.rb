Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/create_user'
  get 'pages/delete_user'
  get 'pages/create_custom_user'

  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
