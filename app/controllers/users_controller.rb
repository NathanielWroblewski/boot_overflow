class UsersController < ApplicationController
		include UserHelper
	
	def create
		@user = new_user(params[:user])
		session[:id] = @user.id
		redirect '/profile'
	end

	def new
	end

	def edit
		# fill in form with details of current_user
	end

	def show
		# show current_user
	end

	def update
		current_user.update_attributes(params[:user])
	end

	def destroy
		# flash something
		current_user.destroy
		redirect '/'
	end 


end