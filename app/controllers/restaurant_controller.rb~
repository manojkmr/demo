class RestaurantController < ApplicationController
  def index	
    @restaurants=Restaurant.all
  end
  def new
    @restaurant=Restaurant.new
  end
  def create
    @restaurant=Restaurant.new(params[:restaurant].permit(:restaurant_name,:area,:address,:mobile_number))
    if @restaurant.save
      redirect_to @restaurant 
    else
      render new_welcome_path
    end 
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
