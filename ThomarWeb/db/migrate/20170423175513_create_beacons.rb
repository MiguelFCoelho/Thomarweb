class CreateBeacons < ActiveRecord::Migration[5.0]
  def change
    create_table :beacons do |t|
      t.text :uuid
      t.text :manufacturer
      t.text :battery
      t.float :longitude
      t.float :latitude
      t.text :image
      t.text :description

      t.timestamps
    end
  end
end
