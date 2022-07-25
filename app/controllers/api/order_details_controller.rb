module Api
  class OrderDetailsController < ApplicationController
    before_action :set_order_detail, only: %i[show edit update destroy]
    skip_before_action :verify_authenticity_token
    def index
      @order_details = OrderDetail.all
      render 'api/order_details/index', status: :created
    end

    def show; end

    def new
      @order_detail = OrderDetail.new
    end

    def edit; end

    def create
      puts params[:isConfirm]
      if params[:isConfirm] == 1
        @ords = OrderDetail.all
        @order_dils = @ord.map do |order_dil|
          @order_d = OrderDetail.find_by(client_id: params[:client_id])
          @dishess = + @order_d.dish.name, ',', @dishess
          @order_d.client.name
          @order_d.destroy
        end
        puts @dishess, params[:cost]
      else
        @order_detail = OrderDetail.new(order_detail_params)
        if @order_detail.save
          render 'api/order_details/index', status: :created
        else
          render json: @order_detail.errors, status: :unprocessable_entity
        end
      end
    end

    def destroy
      @order_detail.destroy
      render 'api/order_details/index', status: :created
    end

    private

    def set_order_detail
      @order_detail = OrderDetail.find(params[:id])
    end

    def order_detail_params
      params.require(:order_detail).permit(:dish_id, :client_id, :isConfirm, :cost)
    end
  end
end
