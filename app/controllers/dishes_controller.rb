class DishesController < ApplicationController
  before_action :set_dish, only: %i[show edit update destroy]

  def index
    @q = Dish.ransack(params[:q])
    @dishes = @q.result
  end

  def show; end

  def new
    @dish = Dish.new
  end

  def edit; end

  def create
    @dish = Dish.new(dish_params)

    if @dish.save
      flash[:success] = 'Dish was successfully created.'
      redirect_to dish_url(@dish)
    else
      flash[:danger] = 'Check the information'
      redirect_to new_dish_path
    end
  end

  def update
    if @dish.update(dish_params)
      flash[:success] = 'Dish was successfully edited.'
      redirect_to dish_url(@dish)
    else
      flash[:danger] = 'Check the information'
      redirect_to new_dish_path
    end
  end

  def destroy
    @dish.destroy

    flash[:success] = 'Dish was successfully destroyed.'
    redirect_to dishes_url
  end

  private

  def set_dish
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:name, :description, :cost, :isEnable, :image)
  end
end
