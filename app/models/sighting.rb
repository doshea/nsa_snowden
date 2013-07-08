class Sighting < ActiveRecord::Base
  attr_accessible :image, :latitude, :location, :longitude
end
