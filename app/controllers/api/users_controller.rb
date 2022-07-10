class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user, only: %i[ show edit update destroy ]
  
  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def edit; end

  def create
    @user = User.new(user_params)

    if @user.save
      render 'api/users/show', status: :created
    else
      render :new, status: :unprocessable_entity 
    end
    
  end

  def update

    if @user.update(user_params)
      render 'api/users/show', status: :ok
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @user.destroy
    
    render 'api/users/show', status: :ok
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :password, :mail, :address, :role)
    end
end
