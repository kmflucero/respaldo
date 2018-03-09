Rails.application.routes.draw do
  get 'dogs/ingreso'
  post 'dogs/respuesta'
  root 'dogs#ingreso'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
