class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :location
      t.integer :latitude
      t.integer :longitude
      t.text :image

      t.timestamps
    end
  end
end
