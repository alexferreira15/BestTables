class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find_by_id(1)
  end
end
