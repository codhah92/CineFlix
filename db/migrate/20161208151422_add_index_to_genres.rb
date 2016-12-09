class AddIndexToGenres < ActiveRecord::Migration
  def change
    add_index :genres, :name
  end
end
