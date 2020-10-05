class AddTagToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :tag, :string
  end
end
