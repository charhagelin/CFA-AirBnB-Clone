class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :capacity
      t.integer :bathrooms
      t.boolean :pets
      t.boolean :smoking
      t.boolean :bath
      t.boolean :wifi
      t.boolean :share
      t.boolean :parties
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
