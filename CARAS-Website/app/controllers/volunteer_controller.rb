class VolunteerController < ApplicationController
	def new
		@volunteer = Volunteer.new
		@events = Array.new
		for event in Event.all
			if params[:lang].downcase == event.language
				@events << event
			end
		end
	end
	
	def create
		if params[:lang] == nil
			params[:lang] = 'en'
		end
		@volunteer = Volunteer.new(volunteer_params)
		if @volunteer.save
			redirect_to '/volunteer?lang=' << params[:lang]
		else
			render 'new'
		end
	end
	
	private
		def  volunteer_params
			params.require(:volunteer).permit(:name, :email, :address, :city, :zip, :phone, :age, :volunteer_in_school, :school_name, :school_phone, :start_date, :start_Date, :available_days, :available_mornings, :available_evenings, :availability_by_day, :type_of_service, :name_org, :event, :parent_name, :signed_parent)
		end
end
