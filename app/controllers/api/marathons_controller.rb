class Api::MarathonsController < ApplicationController
  before_action :set_marathon, only:[:show, :update, :destroy]
  def index
    render json: Marathon.all
  end

  def show
    render json: @marathon
  end

  def create
    @marathon = Marathon.new(marathon_params)
    if(@marathon.save)
      render json: @marathon
    else
      render json: {errors:@marathon.errors.full_messages}, status: 422
    end
  end

  def update
    if(@marathon.update)
      render josn: @marathon
    else
      render json: {errors:@marathon.errors.full_messages}, status: 422
    end
  end

  def destroy
    render json: @marathon.destroy
  end

  private 

  def set_marathon
    @marathon = Marathon.find(params[:id])
  end

  def marathon_params
    params.require(:marathon).permit(:name,:distance,:time,:date)
  end

end
