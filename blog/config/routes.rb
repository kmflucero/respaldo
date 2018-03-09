Rails.application.routes.draw do
  resources :posts do
     resources :comments, only: :create
     resources :products, only: [:create, :destroy]
  end 
  # resources :post, only: [:index] do  #posts/index
  # 	member do #member da el id 
  # 		post 'completar'
  # 	end
  # 	collection do 
  # 	get 'list'
  # 	end
  #end
   root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
