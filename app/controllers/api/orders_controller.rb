module Api
class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]

  
  def index
    @orders = Order.all
  end

  
  def show; end

  def new
    @order = Order.new
  end

  def edit; end

  def create
    @order = Order.new(order_params)
    
      if @order.save
        render 'api/orders/index', status: :created
      else
        render json: @order.errors, status: :unprocessable_entity 
      end    
  end


  def update
    
      if @order.update(order_params)
        render 'api/orders/index', status: :created
      else
        render json: @order.errors, status: :unprocessable_entity 
      end
    
  end


  def destroy
    @order.destroy
    render 'api/orders/index', status: :created
  end

  private

    def set_order
      @order = Order.find(params[:id])
    end


    def order_params
      params.require(:order).permit(:dishesDesc, :cost, :state, :date)
    end
end
end
