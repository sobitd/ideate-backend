class AddCategoryIdToNotes < ActiveRecord::Migration[7.0]
  def change
    add_column :notes, :category_id, :integer
  end
end
