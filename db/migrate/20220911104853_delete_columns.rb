class DeleteColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :user_id, :integer
    remove_column :categories, :note_id, :integer
  end
end
