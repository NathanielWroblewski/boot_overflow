class UsersController < ApplicationController
		include UserHelper
	
	def create
		@user = new_user(params[:user])
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
  
  def login

  end

  def authenticate
  	authenticate_user(params[:user]) 
    puts "*" * 100
    puts "yay!" 
  end

  def logout
  	session.clear
  	redirect '/'
  end

end
