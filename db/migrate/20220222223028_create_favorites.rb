class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :dish_id
      t.integer :venue_id
      t.text :notes
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
