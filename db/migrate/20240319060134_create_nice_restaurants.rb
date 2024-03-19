class CreateNiceRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :nice_restaurants do |t|
      t.string :name
      t.integer :rating, default: 0
      t.string :category

      t.timestamps
    end
  end
end
