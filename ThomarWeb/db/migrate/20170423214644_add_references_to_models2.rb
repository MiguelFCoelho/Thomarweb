class AddReferencesToModels2 < ActiveRecord::Migration[5.0]
  def change
    add_reference :beacons, :monument, index: true, foreign_key: true
    add_reference :monuments, :category, index: true, foreign_key: true
    add_reference :pois, :monument, index: true, foreign_key: true
    add_reference :accesses, :beacon, index: true, foreign_key: true
    add_reference :beacons, :poi, index: true
  
  end
end
