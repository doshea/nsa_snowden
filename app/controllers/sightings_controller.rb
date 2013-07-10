class SightingsController < ApplicationController

  #Example method to show that you can make whatever methods you want, doing whatever AJAXy stuff you want
  def whatever
    #you can do anything you want on the server here
    #because I'll call this expecting JS, it will render the whatever.js.erb template by default
  end


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






