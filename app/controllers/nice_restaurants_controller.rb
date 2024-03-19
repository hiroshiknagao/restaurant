class NiceRestaurantsController < ApplicationController
  def index
    @nice_restaurants = NiceRestaurant.all
  end

  def show
    @nice_restaurant = NiceRestaurant.find(params[:id])
  end

  def new
    @nice_restaurant = NiceRestaurant.new
  end

  def create
    raise
  end
end
