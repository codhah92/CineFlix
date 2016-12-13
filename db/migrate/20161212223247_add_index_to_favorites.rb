class AddIndexToFavorites < ActiveRecord::Migration
  def change
    add_index :favorites, :serie_id
  end
end
