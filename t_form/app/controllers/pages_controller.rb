class PagesController < ApplicationController
  def envio
  end

  def recibo
  	numero_uno = params[:numero_uno].to_i
  	numero_dos = params[:numero_dos].to_i
  	@suma = numero_uno + numero_dos
  end
end
