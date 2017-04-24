class RemoveRefFromCategories < ActiveRecord::Migration[5.0]
  def change
    remove_index :categories, name: "index_categories_on_monument_id"
    remove_column :categories, :monument_id, :integer
  end
  end

