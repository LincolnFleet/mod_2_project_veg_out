class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.string  :title
      t.text    :content
      t.integer :rating
      t.string  :price_range
      t.string  :favorite_dish

      t.timestamps
    end
  end
end
