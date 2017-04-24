class AddUuidToAccess < ActiveRecord::Migration[5.0]
  def change
    add_column :accesses, :uuid, :text
  end
end
