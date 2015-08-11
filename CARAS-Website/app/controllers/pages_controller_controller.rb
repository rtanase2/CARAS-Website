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
	def blog_en
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
	def blog_es
	end
end
