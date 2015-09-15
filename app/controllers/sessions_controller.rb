class SessionsController < ApplicationController

	def new
		@user = User.find(session[:id])
	end

	def create
		@user = User.find_by(email: params[:email]).try(:authenticate, params[:password])

		if @user
			session[:id] = @user.id
			flash[:success] = 'you are signed in!'
			if @user.team
				redirect_to sessions_show_path
			else
				redirect_to new_team_path
			end
		else
			flash[:error] = 'unable to sign you in'
			redirect_to root_path
		end
	end

	def show
		@user = User.find(session[:id])
		@team  = @user.team
		# @players = find(params[:id])
	end

	#logout
	def destroy
		session[:id] = nil
		flash[:error] = 'you have been logged out'
		redirect_to login_path
	end

end
