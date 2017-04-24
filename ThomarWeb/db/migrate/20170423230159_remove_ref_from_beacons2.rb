class RemoveRefFromBeacons2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :beacons, :poi_id, :integer
  end
end
