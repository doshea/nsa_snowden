class Sighting < ActiveRecord::Base
  attr_accessible :image, :latitude, :location, :longitude, :remote_image_url

  mount_uploader :image, SightingPicUploader

  geocoded_by :location
  before_save :geocode
end
