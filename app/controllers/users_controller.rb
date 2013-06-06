class UsersController < ApplicationController
		include UsersHelper
	
	def create
		@user = new_user(params[:user])
	end

	def new
		@user = User.new
	end

	def edit
	end

	def show
	end

	def update
		current_user.update_attributes(params[:user])
	end

	def destroy
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
