class AddColumnToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :episode_number, :integer
  end
end
