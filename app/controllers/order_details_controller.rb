class OrderDetailsController < ApplicationController
  before_action :set_order_detail, only: %i[ show edit update destroy ]
  before_action :set_clients
  before_action :set_dishes

  def index
    @order_details = OrderDetail.all
  end

  def show; end

  def new
    @order_detail = OrderDetail.new
  end

  def edit;end

  def create
    @order_detail = OrderDetail.new(order_detail_params)

      if @order_detail.save
        redirect_to order_detail_url(@order_detail), notice: t('application.was_successfuly_created')
      else
        render :new, status: :unprocessable_entity 
      end
  end

  def update
      if @order_detail.update(order_detail_params)
        redirect_to order_detail_url(@order_detail), notice: t('application.was_successfuly_updated')
      else 
        render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @order_detail.destroy
      redirect_to order_details_url, notice: t('application.was_successfuly_deleted') 
  end

  private
    def set_order_detail
      @order_detail = OrderDetail.find(params[:id])
    end

    #def order_detail_params
     # params.fetch(:order_detail, {})
    #end

    def order_detail_params
      params.require(:order_detail).permit(:order_date, :state, :client_id, :dish_id)
    end

    def set_clients
      @clients = Client.all.map{ |client| ["#{client.name}", client.id] }      
    end

    def set_dishes
      @dishes = Dish.all.map{ |dish| ["#{dish.name} #{dish.description} - #{dish.cost} -#{dish.isEnable}", dish.id] }
    end


end
