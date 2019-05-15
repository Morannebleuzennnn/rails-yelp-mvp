class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save
    redirect_to restaurants_path
  end

  private

  def set_restaurants
    @restaurant = Restaurant.find(params[:id])
  end

  def task_params
    params.require(:restaurant).permit(:title, :details, :completed)
  end
end
