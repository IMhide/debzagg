class AddPicturesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profil_picture_data, :jsonb
    add_column :users, :cover_picture_data, :jsonb
  end
end
