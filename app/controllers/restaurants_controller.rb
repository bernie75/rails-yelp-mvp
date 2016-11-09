class RestaurantsController < ApplicationController

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def top
   @restaurants = Restaurant.where(stars: 3)
  end

  def update if @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
    else render :edit
    end
  end

  def index
    @restaurants = Restaurant.all
  end

  def name
  end

  def adresse
  end

  def phone_number
  end

  def category
  end

  def review:text
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

end
