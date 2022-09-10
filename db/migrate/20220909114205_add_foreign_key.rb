class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :bio
    add_column :notes, :user_id, :integer
  end
end
