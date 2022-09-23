class Api::ParticipantsController < ApplicationController
  before_action :set_marathon, except:[:index_all]
  before_action :set_participant, only:[:show, :update, :destroy]
  def index_all
    render json: Participant.all
  end
  def index
    render json: @marathon.participants.all
  end

  def show
    render json: @participant
  end

  def create
    @participant = @marathon.participants.new(participant_params)
    if(@participant.save)
      render json: @participant
    else
      render json: {errors:@participant.errors.full_messages}, status: 422
    end
  end

  def update
    if(@participant.update)
      render josn: @participant
    else
      render json: {errors:@participant.errors.full_messages}, status: 422
    end
  end

  def destroy
    render json: @participant.destroy
  end

  private 

  def set_marathon
    @marathon = Marathon.find(params[:marathon_id])
  end

  def set_participant
    @participant = @marathon.participants.find(params[:id])
  end

  def participant_params
    params.require(:participant).permit(:name,:age,:marathon_id)
  end

end
