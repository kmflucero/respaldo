Rails.application.routes.draw do
  resources :posts
  resources :tags
  resources :movies do
   member do
   	post 'add_tag'
   	delete 'remove_tag/:tag_id', to: 'movies#remove_tag', as: 'remove_tag'
   end
  end
  root 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
