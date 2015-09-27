class CookOffParticipantController < ApplicationController
	def home
	end
	
	def new
		@cookOffParticipant = CookOffParticipant.new
	end
	
	def create
		@cookOffParticipant = CookOffParticipant.new(cookOffParticipant_params)
		if @cookOffParticipant.save
			redirect_to '/tamale-cook-off'
		else
			render 'new'
		end
	end
	
	private
		def cookOffParticipant_params
			params.require(:cookOffParticipant).permit(:region_of_tamale, :name, :fillings_ingredients, :company_org, :contact_person, :phone_number)
		end
end
