class SightingsController < ApplicationController
  
  def index
    render json: SightingSerializer.new(Sighting.all)
  end
  def show
    sighting = Sighting.find(params[:id])
    options = {
      include: %i[bird location]
    }
    render json: SightingSerializer.new(sighting, options)
  end
end
