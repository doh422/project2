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

	# def assign
	# 	@player_name = params[:name]
	# 	@player_position = params[:position]
	# 	@player_r_team = params[:r_team]
	# 	@player_team_id = params[:team_id]
	# 	@player_user_id = params[:user_id]
	# 	@player = Player.updates({team_id: @player_team_id, user_id: @player_user_id})	

	# 	if @player.save
	# 		redirect_to sessions_show_path
	# 	else
	# 		redirect_to sessions_show_path
	# 	end
	# end

end
