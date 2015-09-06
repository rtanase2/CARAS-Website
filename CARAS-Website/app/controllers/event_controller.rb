class EventController < ApplicationController
    def show
        render template: "event/#{params[:event]}"
    end
end
