class NiceRestaurantsController < ApplicationController
  def index
    @nice_restaurants = NiceRestaurant.all
  end

  def show
    
  end
end
