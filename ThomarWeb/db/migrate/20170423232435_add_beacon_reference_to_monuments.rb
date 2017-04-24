class AddBeaconReferenceToMonuments < ActiveRecord::Migration[5.0]
  def change
    add_reference :monuments, :beacon, index: true
  end
end
