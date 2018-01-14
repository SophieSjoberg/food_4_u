class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @menus = Menu.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
