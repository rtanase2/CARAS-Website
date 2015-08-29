class PagesController < ApplicationController
	def show

		if params[:lang] == nil
			params[:lang] = 'en'
			print "inHEre"
		end

		if valid_page?
			render template: "pages/#{params[:page]}-#{params[:lang]}"
			print "validNil"
		else 
			render file: "public/404.html", status: :not_found
			print "#{params[:page]} #{params[:lang]}"
		end

	end

	private
	def valid_page?
		File.exists?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}-#{params[:lang]  || 'en'}.html.erb"))
	end
end
