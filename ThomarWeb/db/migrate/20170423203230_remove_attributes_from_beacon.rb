class RemoveAttributesFromBeacon < ActiveRecord::Migration[5.0]
  def change
    remove_column :beacons, :longitude, :float
    remove_column :beacons, :latitude, :float
    remove_column :beacons, :image, :text
    remove_column :beacons, :description, :text
  end
end
