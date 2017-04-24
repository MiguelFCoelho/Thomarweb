class AddReferencesToModels < ActiveRecord::Migration[5.0]
  def change
    add_reference :beacons, :access, index: true, foreign_key: true
    add_reference :monuments, :beacon, index: true, foreign_key: true
    add_reference :monuments, :poi, index: true, foreign_key: true
    add_reference :categories, :monument, index: true, foreign_key: true
    add_reference :beacons, :poi, index: true, foreign_key: true
  end
end
