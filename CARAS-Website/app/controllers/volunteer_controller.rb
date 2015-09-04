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
			params.require(:volunteer).permit(:minor, :name, :email, :address, :city, :zip, :phone, :age, :volunteer_in_school, :school_name, :school_phone, :start_date, :start_Date, :available_days, :available_mornings, :available_evenings, :availability_by_day, :type_of_service, :name_org, :event, :parent_name, :signed_parent, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :time_start_sun, :time_start_mon, :time_start_tues, :time_start_wed, :time_start_thurs, :time_start_fri,  :time_start_sat, :time_end_sun, :time_end_mon, :time_end_tues, :time_end_wed, :time_end_thurs, :time_end_fri, :time_end_sat)
		end
end
