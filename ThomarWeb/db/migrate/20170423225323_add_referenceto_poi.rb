class AddReferencetoPoi < ActiveRecord::Migration[5.0]
  def change
    add_reference :pois, :beacon, index: true
end
end
