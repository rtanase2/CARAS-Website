class EventController < ApplicationController
    def show
        if valid_page?
            @event = Event.where(:event_type => params[:event].downcase)
                         .where(:language => params[:lang].downcase)[0]
        else
            render file: "public/404.html", status: :not_found
        end
    end

    private
    def valid_page?
        return Event.where(:event_type => params[:event].downcase)
                    .where(:language => params[:lang].downcase)[0]
    end
end
