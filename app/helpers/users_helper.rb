module UsersHelper


	def current_user
		if session[:id]
			@current_user ||= User.find(session[:id])
		end
	end

	def new_user(details)
		user = User.new(name: details[:name], username: details[:username])
		user.password = details[:password]
		user.password_confirmation = details[:password_confirmation]
		if user.save
			session[:id] = user.id
			redirect '/profile'
		else
			flash[:notice] = "Password did not match confirmation"
		end
	end

	def authenticate_user(info)
		@user = User.find_by_email(info[:email])
		if @user && @user.authenticate(info[:password])
			session[:id] = @user.id
			redirect '/profile'
		else
			flash[:notice] = "Bad password"
		end
	end

end
