class ReviewsController < ApplicationController

  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      flash[:success] = "Review successfully created"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
