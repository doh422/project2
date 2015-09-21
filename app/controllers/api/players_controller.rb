module API

	class PlayersController < ApplicationController

		def index
			render json: Player.all
		end

		def show
			render json: Player.find(params[:id])
		end

		def create
			player = Player.new(player_params)

			if player.save
				render json: player, status: 201, location: [:api, player]
			else
				render json: player.errors, status: 422
			end
		end

		def update
			player = Player.find(params[:id])

			if player.update(player_params)
				head 204
			else
				render json: player.errors, status: 422
			end
		end

		private
		def player_params
			params.require(:player).permit(:name,:position,:r_team)
		end

	end

end