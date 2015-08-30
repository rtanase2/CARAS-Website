class VolunteerController < ApplicationController
	def new
		@volunteer = Volunteer.new
	end
	
	def create
		@volunteer = Volunteer.new(volunteer_params)
		if @volunteer.save
			redirect_to '/volunteer-en'
		else
			render 'new'
		end
	end
	
	private
		def  volunteer_params
			params.require(:volunteer).permit(:name)
		end
end
