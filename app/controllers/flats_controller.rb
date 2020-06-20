class FlatsController < ApplicationController

    def index
      @flats = Flat.geocoded # returns flats with coordinates
  
      @markers = @flats.map do |flat|
        {
          lat: flat.latitude,
          lng: flat.longitude
        }
      end
    end 

    def show 
      @flat = Flat.find(params[:id])
    end


     def new 
       @flat = Flat.new
     end


end 