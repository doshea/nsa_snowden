class SightingsController < ApplicationController
  def index
    @sightings = Sighting.all
  end
  def show
    @sighting = Sighting.find(params[:id])
  end
  def new
    @sighting = Sighting.new
  end
  def create
    @sighting = Sighting.new(params[:sighting])
    if @sighting.save
      redirect_to sightings_path #redirect to index page
    else
      render :new
    end
  end
  def edit
    @sighting = Sighting.find(params[:id])
  end
  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update_attributes(params[:sighting])
      respond_to do |format|
        format.js
        format.html { redirect_to sightings_path }
      end
    else
      render :edit
    end
  end

end






