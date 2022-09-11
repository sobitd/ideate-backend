class AddUserIdAndNoteId < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :user_id, :integer
    add_column :categories, :note_id, :integer
  end
end
