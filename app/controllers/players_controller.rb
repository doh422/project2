class PlayersController < ApplicationController

	def index
		# @playerz = Player.all

		if params[:query]
	  		search_field = params[:search].to_sym

	  		query = params[:query]
	  		player_list = Player.all
	  		@players = []
	        	player_list.each do |player|
	            	if player[search_field].downcase.include? query.downcase
	                	@players << player
	            	end
	        	end
  		else 
    		@players = Player.page(params[:page]).per(50).padding(0)
    	end
	end

	def show
		@user_id = session[:id]
		@player = Player.find(params[:id])
		@team = Team.find_by(user_id: @user_id)
		#conditional returns boolean if player is/isn't already on team
		if @team.players.include?(@player)
			@present = true
		else
			@present = false
		end
	end

end
