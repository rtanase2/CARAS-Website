class PagesController < ApplicationController
	def show
		if params[:lang] == nil
			params[:lang] = 'en'
		end

		@page
		@events = Array.new
		for event in Event.all
			if params[:lang].downcase == event.language
				@events << event
			end
		end

		for page in Page.all
			if params[:page].downcase == page.pageType and params[:lang] == page.lang
				@page = page
			end
		end

		if valid_page?
			render template: "pages/page-template"
		else 
			render file: "public/404.html", status: :not_found
		end
	end

	private
	def valid_page?
		return @page != nil
	end
end
