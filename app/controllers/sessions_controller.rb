class SessionsController < ApplicationController

	def new
		@user = User.find(session[:id])
	end

	def create
		@user = User.find_by(email: params[:email]).try(:authenticate, params[:password])

		if @user
			session[:id] = @user.id
			redirect_to users_show_path
		else
			redirect_to root_path
		end
	end

	#logout
	def destroy
		session[:user_id] = nil
		redirect_to users_login_path
	end

end
