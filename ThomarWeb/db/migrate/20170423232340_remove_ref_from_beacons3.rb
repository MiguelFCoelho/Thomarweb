class RemoveRefFromBeacons3 < ActiveRecord::Migration[5.0]
  def change
    remove_column :beacons, :monument_id, :integer
  end
end
