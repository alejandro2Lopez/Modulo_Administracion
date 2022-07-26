module Api
  class DishesController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_dish, only: %i[show edit update destroy]
    
    def index
      @q = Dish.ransack(params[:q])
      @dishes = @q.result
    end

    def show; end

    def new
      @dish = Dish.new
    end

    private

    def set_dish
      @dish = Dish.find(params[:id])
    end

    def dish_params
      params.require(:dish).permit(:name, :description, :cost, :isEnable, :image)
    end
  end
end
