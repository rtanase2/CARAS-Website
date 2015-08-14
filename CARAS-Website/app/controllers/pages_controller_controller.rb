class PagesControllerController < ApplicationController
	# Definte english pages
	def about_us_en
	end
	def meet_the_team_en
	end
	def events_en
		 @events = Event.all
	end
	def contact_us_en
	end
	def gallery_en
	end
	def volunteer_en
	end
	def donate_en
	end
	def tamale_fest_2015_en
	end

	# Define spanish pages
	def about_us_es
	end
	def meet_the_team_es
	end
	def events_es
		 @events = Event.all
	end
	def contact_us_es
	end
	def gallery_es
	end
	def volunteer_es
	end
	def donate_es
	end
	def tamale_fest_2015_es
	end
end
