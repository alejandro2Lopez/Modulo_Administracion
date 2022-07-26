class ClientsController < ApplicationController
  before_action :set_client, only: %i[show edit update destroy]

  def index
    @q = Client.ransack(params[:q])
    @clients = @q.result
  end

  def show; end

  def new
    @client = Client.new
  end

  def edit; end

  def create
    @client = Client.new(client_params)

    if @client.save
      flash[:success] = 'Client was successfully created.'
      redirect_to client_url(@client)

    else
      flash[:danger] = 'Ha ocurrido un problema, intente nuevamente'
      redirect_to new_client_path

    end
  end

  def update
    if @client.update(client_params)
      flash[:success] = 'Client was successfully updated.'
      redirect_to client_url(@client)

    else
      flash[:danger] = 'Ha ocurrido un problema, intente nuevamente'
      redirect_to new_client_path

    end
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:block, :name, :last_name, :pasword, :email, :adress)
  end
end
