class SongsController < ApplicationController

	def index
		@songs = Song.all
	end

	def create
		song = Song.create(title: params[:title], composer: params[:composer], arranger: params[:arranger])

		response = {
			song: song
		}
		render json: response
	end


end
