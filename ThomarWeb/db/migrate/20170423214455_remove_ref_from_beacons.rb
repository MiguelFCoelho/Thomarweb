class RemoveRefFromBeacons < ActiveRecord::Migration[5.0]
  def change
    remove_column :beacons, :access_id, :integer
    remove_column :beacons, :poi_id, :integer
  end
end
