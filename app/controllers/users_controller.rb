class UsersController < ApplicationController


	def create
		@user_name = params[:name]
		@user_email = params[:email]
		@user_password = params[:password]
		@user = User.create({name: @user_name, email: @user_email, password: @user_password})

		if @user.save
			flash[:success] = "You've successfully created an account"
			redirect_to teams_new_path
		else
			flash[:error] = "Please try again"
			render :new
		end
	end

	def new
		@users = User.new
	end

	private
	def user_params
		params.require(:user).permit(:name,:email,:password,:password_confirmation)
	end

end
