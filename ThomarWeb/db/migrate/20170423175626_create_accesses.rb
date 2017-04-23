class CreateAccesses < ActiveRecord::Migration[5.0]
  def change
    create_table :accesses do |t|
      t.datetime :date
      t.text :nationality
      t.text :os

      t.timestamps
    end
  end
end
