class PagesController < ApplicationController
  def envio
  end

  def calcular
  	numero_uno = params[:numero_uno].to_i
    numero_dos = params[:numero_dos].to_i
    @suma = numero_uno + numero_dos
    calc = Calculator.new(numer_one: numero_uno, numer_two: numero_dos, total: @suma)
	if calc.save
	    redirect_to pages_envio_path, notice: ' Se almacenó el registro con éxito!'
	else
	  	rendirect_to pages_envio_path, notice: 'No se pudo almacenar el registro...'
    end
  end

  def recibo
    numero_uno = params[:numero_uno].to_i
    numero_dos = params[:numero_dos].to_i
    @suma = numero_uno + numero_dos
    calc = Calculator.new(numer_one: numero_uno, numer_two: numero_dos, total: @suma)
	if calc.save
	    @mensaje = ' Se almacenó el registro con éxito!'
	else
	  	@menasje = 'No se pudo almacenar el registro...'
	end	

  end
end
