class UsersController < ApplicationController

  	def search

		if params[:search].present?
			@users = User.search(params[:search])
		else
			@users = User.all
		end
  	end


	def show
		@user = User.find(params[:id])
	end
  
end
