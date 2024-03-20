class ReviewsController < ApplicationController

  def new
    @nice_restaurant = NiceRestaurant.find(params[:nice_restaurant_id])
    @review = Review.new
  end

  def create
    @nice_restaurant = NiceRestaurant.find(params[:nice_restaurant_id])
    @review = Review.new(review_params)
    @review.nice_restaurant = @nice_restaurant
    if @review.save
      redirect_to nice_restaurant_path(@nice_restaurant )
    else
      redner :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to nice_restaurant_path(@review.nice_restaurant)

  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
