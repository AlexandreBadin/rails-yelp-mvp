class RestaurantsController < ApplicationController
  # GET "restaurants"
  def index
    @restaurants = Restaurant.all
  end

  #GET "restaurants/new"
  def new
    @restaurant = Restaurant.new
  end

  # POST "restaurants"
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  # GET "restaurants/3"
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  
  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
  
end
