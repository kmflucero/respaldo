Rails.application.routes.draw do
  devise_for :users
   get 'search', to:'pages#search'
  root 'pages#home'
  get 'interactions', to: 'interactions#hello'
  post 'interactions', to: 'interactions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
