class PagesController < ApplicationController
	def home() end
		before_action :authenticate_user!
	def search
	   @user = User.where.not(id: current_user.id).sample
	   #render json: @user.to_json
	end
end
