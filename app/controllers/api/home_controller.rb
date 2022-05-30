module Api
    class HomeController < ApplicationController
        before_action :set_starlinks
        
        def index
            @starlinks =  @service_stars.general
            render json: @starlinks[112].values[1..5]
        end
        
        private
        
        def set_starlinks
            @service_stars = SpaceLinks.new
        end

    end
end

