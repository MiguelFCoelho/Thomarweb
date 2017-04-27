class AddPapperclipRefToMonument < ActiveRecord::Migration[5.0]
  def up
    add_attachment :monuments, :image
  end

  def down
    remove_attachment :monuments, :image
  end
end
