class TeamsController < ApplicationController

	def index	
		@teams = Team.all
		@user = User.find(session[:id])
		@team  = @user.team

	end

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

	def show
		@team = Team.find(params[:id])
		@roster = Roster.where(team_id: @team).all
		@user = User.find(session[:id])
	end

	def edit
		@user = User.find(session[:id])
	end

	def update
		@team_name = params[:name]
		@team_user_id = params[:user_id]
		#below code finds the team that has user's id as team's id
		@team = Team.find_by(user_id: @team_user_id)
		#updates name of team grabbed above
		@team.update(name: @team_name)

		if @team.save
			redirect_to sessions_show_path
		else
			redirect_to sessions_show_path
		end		
	end

end
