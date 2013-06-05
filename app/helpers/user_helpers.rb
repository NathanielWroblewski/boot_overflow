module UserHelper


	def current_user
		if session[:id]
			@current_user ||= User.find(session[:id])
		end
	end

	def new_user(details)
		user = User.new(name: details[:name], username: details[:username])
		user.password = details[:password]
		user.password_confirmation = details[:password_confirmation]
		user.save
		return user
	end

	def authenticate_user(info)
		@user = User.find_by_email(info[:email])
		if @user.authenticate(info[:password])
			session[:id] = @user.id
			redirect '/profile'
		else
			raise "Bad password"
		end
	end

end