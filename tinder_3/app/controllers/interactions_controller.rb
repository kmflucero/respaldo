class InteractionsController < ApplicationController
  	def create
		Interaction.create!( user_one_id: current_user.id, 
		user_two_id: params[:user_two_id],
		like: params[:like])
	    redirect_to search_path
	end
end
