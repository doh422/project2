module API

	class RostersController < ApplicationController
		def index
			render json: Roster.all
		end
	end
end
