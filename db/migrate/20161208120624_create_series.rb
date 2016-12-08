class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :title, null: false, index: true
      t.integer :year, null: false
      t.text :description, null: false
      t.integer :avg_rating, default: 0
      t.string :image_type
      t.string :image_name
      t.integer :image_size
      
      t.timestamps null: false
    end
  end
end
