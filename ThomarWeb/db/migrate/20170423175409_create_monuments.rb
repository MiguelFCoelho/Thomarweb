class CreateMonuments < ActiveRecord::Migration[5.0]
  def change
    create_table :monuments do |t|
      t.text :name
      t.text :description
      t.text :image
      t.float :longitude
      t.float :latitude
      t.text :address

      t.timestamps
    end
  end
end
