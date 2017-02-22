class RecipesController < ApplicationController
	def new
	end

	def create
		render plain: params[:recipe].inspect
	end

	def show
		render plain: params[:id].inspect
	end
end
