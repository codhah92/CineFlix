class AddColumnToFavorites < ActiveRecord::Migration
  def change
    remove_column :favorites, :series_id, :integer
    add_column :favorites, :serie_id, :integer
  end
end
