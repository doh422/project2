class TeamsController < ApplicationController

	def new
		@user = User.find(session[:id])
	end

	def create
		@team_name = params[:name]
		@team_user_id = params[:user_id]
		@team = Team.create({name: @team_name, user_id: @team_user_id})

		if @team.save
			redirect_to sessions_show_path
		else
			redirect_to sessions_show_path
		end
	end

	def edit
	end

	def update
	end

end