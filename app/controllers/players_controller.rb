class PlayersController < ApplicationController

	def index
		@players = Player.all
	end

	def show
		@user_id = session[:id]
		@player = Player.find(params[:id])
		@team = Team.where(user_id: @user_id)
	end

end
