class RestaurantsController < ApplicationController

  def top
   @restaurants = Restaurant.where(stars: 3)
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

end
