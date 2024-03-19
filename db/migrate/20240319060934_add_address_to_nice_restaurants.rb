class AddAddressToNiceRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :nice_restaurants, :address, :string
  end
end
