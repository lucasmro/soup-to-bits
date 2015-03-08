class SoupsController < ApplicationController
	before_action :fetch_soup, only: [:show, :edit, :update, :destroy]

	def show
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

	def new

	end

	def edit

	end

	def update

	end

	def destroy

	end

	private

	def fetch_soup
		@soup = Soup.find(params[:id])
	end

end
