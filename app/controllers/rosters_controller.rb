class RostersController < ApplicationController

	def new
		@roster = Roster.new
	end

	def create
		@roster_player_id = params[:id]
		#below code returns session id as number
		@user_id = session[:id]
		#uses session id to return specific user
		@user = User.find(@user_id)
		@team = @user.team
		
		@player = Player.find(@roster_player_id)
		#adds player to list of players on team
		@team.players << @player
		if @team.save
			redirect_to sessions_show_path
		else
			redirect_to sessions_show_path
		end
	end

	def show
		@roster = Roster.find(params[:id])
	end

end
