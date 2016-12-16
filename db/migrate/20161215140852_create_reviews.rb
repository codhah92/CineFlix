class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :serie_id, null: false, index: true
      t.integer :user_id, null: false, index: true
      t.integer :rating, null: false, index: true
      
      t.timestamps null: false
    end
  end
end
