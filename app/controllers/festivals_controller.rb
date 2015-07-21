class FestivalsController < ApplicationController
  # before_action :require_login
  before_action :set_festival, only: [:show, :edit, :update, :destroy]


	def index
		@festivals = Festival.all

	end

	def new
	end


  def create
  end


	def show
		@festival = Festival.find(params[:id])
	end

	def edit
	end

	def destroy
	end

	private

  def set_festival
		@festival = Festival.find(params[:id])
	end

	def festival_params
		params.require(:festival).permit(:event, :address, :date, :pic)
	end

end
