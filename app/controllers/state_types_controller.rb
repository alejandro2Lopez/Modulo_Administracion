class StateTypesController < ApplicationController
  before_action :set_state_type, only: %i[ show edit update destroy ]

  def index
    @state_types = StateType.all
  end

  def show; end

  def new
    @state_type = StateType.new
  end

  def edit; end

  def create
    @state_type = StateType.new(state_type_params)
      if @state_type.save
        redirect_to state_type_url(@state_type), notice: "State type was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
  end

  def update
      if @state_type.update(state_type_params)
        redirect_to state_type_url(@state_type), notice: "State type was successfully updated."
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @state_type.destroy

      redirect_to state_types_url, notice: "State type was successfully destroyed."
  end

  private
    def set_state_type
      @state_type = StateType.find(params[:id])
    end

    def state_type_params
      params.require(:state_type).permit(:type)
    end
end
