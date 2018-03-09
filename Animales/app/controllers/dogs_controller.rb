class DogsController < ApplicationController
  def ingreso
   @perro =Dog.last
  end

  def respuesta

    nuevo_perro = params[:nuevo_perro]
    @d = Dog.new(name: nuevo_perro)
    if @d.save
      redirect_to dogs_ingreso_path, notice: ' Se almacenó el registro con éxito!'
    else
      rendirect_to dogs_ingreso_path, notice: 'No se pudo almacenar el registro...'
    end
  end
end
