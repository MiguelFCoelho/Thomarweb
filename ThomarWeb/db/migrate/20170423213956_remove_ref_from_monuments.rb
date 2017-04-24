class RemoveRefFromMonuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :monuments, :poi_id, :integer
    remove_column :monuments, :beacon_id, :integer
  end
end


