class DishesController < ApplicationController
  before_action :set_dish, only: %i[show edit update destroy]

  def index
    # starting search

    if params[:query].present?
      @dishes = Dish.search(params[:query])
    else
      @dishes = Dish.all
    end
    # Search ended
    #geo_location  # --> geo location of the dish on the map (private)
    @markers = @dishes.geocoded.map do |dish|
      {
        lat: dish.latitude,
        lng: dish.longitude,
        info_window: render_to_string(partial: 'info_window', locals: { dish: dish }),
        image_url: helpers.asset_url('green_marker3.png')
      }
    end
  end

  def show
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.user = current_user
    if @dish.save
      redirect_to dishes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @dish = Dish.update(dish_params)
    redirect_to dishes_path
  end

  def destroy
    @dish.destroy
    redirect_to dishes_path
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :price, :image, :description, :quantity, :address)
  end

  def set_dish
    @dish = Dish.find(params[:id])
  end

  # def geo_location
  #   @markers = @dishes.geocoded.map do |dish|
  #     {
  #       lat: dish.latitude,
  #       lng: dish.longitude,
  #       info_window: render_to_string(partial: 'info_window', locals: { dish: dish }),
  #       image_url: helpers.asset_url('green_marker3.png')
  #     }
  #   end
  # end
end
