class SoupsController < ApplicationController
	def show
		@soup = Soup.find(params[:id])
	end
end
