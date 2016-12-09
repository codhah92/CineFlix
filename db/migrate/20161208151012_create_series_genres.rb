class CreateSeriesGenres < ActiveRecord::Migration
  def change
    create_table :series_genres do |t|
      t.integer :series_id, index: true
      t.integer :genre_id, index: true
      
      t.timestamps null: false
    end
  end
end
