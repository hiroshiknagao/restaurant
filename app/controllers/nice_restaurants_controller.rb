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
    @nice_restaurant = NiceRestaurant.new(nice_restaurant_params)
    if @nice_restaurant.save
      redirect_to nice_restaurant_path(@nice_restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @nice_restaurant = NiceRestaurant.find(params[:id])
  end

  def update
    @nice_restaurant = NiceRestaurant.find(params[:id])
    if @nice_restaurant.update(nice_restaurant_params)
      redirect_to nice_restaurant_path(@nice_restaurant)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def nice_restaurant_params
    params.require(:nice_restaurant).permit(:name, :address, :rating, :category)
  end
end
