class PagesController < ApplicationController
  def index
  	@nombres = ['Kevin Lucero','Heraldo','Ignacio','Daniel']
  	@nombre = 'Kevin Luceo'
  end

  def about
  end
end
