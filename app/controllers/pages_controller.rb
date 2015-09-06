class PagesController < ApplicationController
	def show
		if params[:lang] == nil
			params[:lang] = 'en'
		end

		if valid_page?
			render template: "pages/#{params[:page].downcase}-#{params[:lang]}"
		else 
			render file: "public/404.html", status: :not_found
		end
	end

	private
	def valid_page?
		File.exists?(
			Pathname.new(Rails.root + 
			"app/views/pages/#{params[:page].downcase}-#{params[:lang]}.html.erb"))
	end
end
