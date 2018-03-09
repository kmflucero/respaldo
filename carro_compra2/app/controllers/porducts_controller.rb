class PorductsController < ApplicationController
  def index
  	@products = Product.all
  	 end
end
