class RemoveImagepapperclipFromMonument < ActiveRecord::Migration[5.0]
  def change
    remove_column :monuments, :image_file_name
    remove_column :monuments, :image_content_type
    remove_column :monuments, :image_file_size
    remove_column :monuments, :image_updated_at
  end
end
