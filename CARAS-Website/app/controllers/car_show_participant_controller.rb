class CarShowParticipantController < ApplicationController
	def home
	end
	
	def new
		@carShowParticipant = CarShowParticipant.new
	end
	
	def create
		@carShowParticipant = CarShowParticipant.new(carShowParticipant_params)
		if @carShowParticipant.save
			redirect_to '/car-show'
		else
			render 'new'
		end
	end
	
	private
		def carShowParticipant_params
			params.require(:carShowParticipant).permit(:paid, :name, :address, :email, :year, :make, :signed, :submission_time)
		end
end
