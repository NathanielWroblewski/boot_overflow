class UsersController < ApplicationController
	
  def new
    @user = User.new
  end

	def create
    @user = User.new(params[:user])
    if @user.save
      session[:id] = @user.id
      redirect_to @user
    else
      render :new
    end
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
		redirect_to '/'
	end 
  
  def login

  end

  def authenticate
  	authenticate_user(params) 
  end

  def logout
  	session.clear
  	redirect_to '/'
  end

end
