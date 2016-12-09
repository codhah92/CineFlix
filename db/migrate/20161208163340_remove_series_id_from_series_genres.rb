class RemoveSeriesIdFromSeriesGenres < ActiveRecord::Migration
  def change
    remove_column :series_genres, :series_id, :integer
    add_column :series_genres, :serie_id, :integer
    add_index :series_genres, :serie_id
  end
end
