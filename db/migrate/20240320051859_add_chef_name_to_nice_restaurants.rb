class AddChefNameToNiceRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :nice_restaurants, :chef_name, :string
  end
end
