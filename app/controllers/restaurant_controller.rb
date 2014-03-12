class RestaurantController < ApplicationController
  def new
    @restaurant=Restaurant.new
  end
  def create
    @restaurant=Restaurant.new(params[:restaurant].permit(:restaurant_name,:area,:address,:mobile_number))
    if @restaurant.save
    redirect_to restaurant_path 
    else
    rendor new_welcome_path
    end 
  end
  def show
  end
end
