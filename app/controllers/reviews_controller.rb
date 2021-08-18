class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    @review.restaurant = @restaurant
  end

  def create
    # we need `restaurant_id` to associate review with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    
    @review = Review.new(review_params)

    # Give the review the correct restaurant id. We've given it a rating and content, now it just needs an id.
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @restaurant = @review.restaurant
    @review.destroy
    redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    # You only need to put in here information that comes from your form
    params.require(:review).permit(:rating, :content)
  end
end
