class AddVenueReferenceToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :favorites, :venues
    add_index :favorites, :venue_id
    change_column_null :favorites, :venue_id, false
  end
end
