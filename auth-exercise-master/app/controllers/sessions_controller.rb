class SessionsController < ApplicationController

	def new
	end

	#POST /login
	#{ email: leo@leo.com", password: "password"}
	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to '/'
		else
			redirect_to '/login'	
		end
	end
	#DELETE
	def destroy
		session.clear

		redirect_to '/'
	end
end
