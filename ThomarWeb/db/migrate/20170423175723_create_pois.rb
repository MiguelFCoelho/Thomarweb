class CreatePois < ActiveRecord::Migration[5.0]
  def change
    create_table :pois do |t|
      t.text :name
      t.text :description
      t.text :image
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
