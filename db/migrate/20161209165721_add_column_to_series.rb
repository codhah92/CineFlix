class AddColumnToSeries < ActiveRecord::Migration
  def change
    add_column :series, :movie, :boolean, default: false
    remove_column :series, :image_type, :string
    remove_column :series, :image_name, :string
    remove_column :series, :image_size, :integer
  end
end
