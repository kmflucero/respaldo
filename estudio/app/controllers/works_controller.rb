class WorksController < ApplicationController
 before_action :authenticate_user!, except: :index
 before_action :set_tarea, only: [:show, :edit, :update, :destroy]

	def index
  	@works = Work.all
  	 end
end
