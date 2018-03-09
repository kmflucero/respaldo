Rails.application.routes.draw do
  get 'pages/envio'
  get 'pages/recibo'
  root 'pages#envio'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
