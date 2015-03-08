class SoupsController < ApplicationController
	def show
		@soup = Soup.find(params[:id])

		respond_to do |format|
			format.html
			format.json { render json: @soup }
		end
	end

	def index
		@soups = Soup.all

		respond_to do |format|
			format.json { render json: @soups }
		end
	end
end
