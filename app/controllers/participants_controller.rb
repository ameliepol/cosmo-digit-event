class ParticipantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :show, :create]
  skip_before_action :verify_authenticity_token

  def show
    @event = Event.find(params[:event_id])
    @participant = Participant.find(params[:id])
  end

  def new
    @event = Event.find(params[:event_id])
    @participant = Participant.new
    @workshops = @event.workshops.visibles
  end

  def create
    @event = Event.find(params[:event_id])
    @participant = Participant.new(participant_params)
    if @participant.save
      redirect_to event_participant_path(@event, @participant)
    else
      flash[:alert] = @participant.errors.full_messages.join("; ")
      @workshops = @event.workshops.visibles
      render :new
    end
  end

  private

  def participant_params
    params.require(:participant).permit(
      :email,
      :first_name,
      :last_name,
      :company,
      :address,
      :zipcode,
      :city,
      bookings_attributes: [:id, :workshop_id]
      )
  end
end
