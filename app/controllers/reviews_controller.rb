class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [ :new, :create
  def create
    @review = @restaurant.reviews.build(review_params)
    @review.save
  end

  def new
    @review = Review.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
