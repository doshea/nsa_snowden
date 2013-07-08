class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :location
      t.float :latitude
      t.float :longitude
      t.text :image

      t.timestamps
    end
  end
end
