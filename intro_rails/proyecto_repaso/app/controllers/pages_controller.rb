class PagesController < ApplicationController
  def index
  	@users = User.all
  end
  def create_user
  	nombres = %w(Franco Felipe Luis Fernanda Daniel Matias)
    paises = %w(Chile Argentina Paraguay Venezuela honduras dinamarca)
    edades = [20,25,23,25,63,43]
    User.create(name: nombres.sample, age: edades.sample, country: paises.sample)
    redirect_to root_path, notice: ' Se ha creado un usuario correctamente'
  end
  def delete_user
  	user = User.last
  	user.destroy if !user.nil?
	  if user.nil?
	    redirect_to root_path, notice: 'No hay registro de usuario!'
	  else
	    redirect_to root_path, notice: 'Se ha eleminindo el usuario con exito'
	  end
   end
   def create_custom_user
   	user_name = params['user_name']
   	user_age = params['user_age'].to_i
   	user_country = params['user_country']
    User.create(name: user_name, age: user_age, country: user_country)
   	
	redirect_to root_path, notice: 'El usuario se ha ingresado con exito'
   end
end
