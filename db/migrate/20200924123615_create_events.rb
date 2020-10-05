class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :kind
      t.string :address
      t.datetime :start_at
      t.datetime :end_at
      t.string :name

      t.timestamps
    end
  end
end
