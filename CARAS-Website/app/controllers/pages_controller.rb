class PagesController < ApplicationController
	def show
		if params[:lang] == nil
			params[:lang] = 'en'
		end

		@page;
		for page in Page.all
			if params[:page] == page.pageType and params[:lang] == page.lang
				@page = page
			end
		end

		if valid_page?
			render template: "pages/#{params[:page]}"
		else 
			render file: "public/404.html", status: :not_found
		end
	end

	private
	def valid_page?
		File.exists?(
			Pathname.new(Rails.root + 
			"app/views/pages/#{params[:page]}.html.erb"))
	end
end
