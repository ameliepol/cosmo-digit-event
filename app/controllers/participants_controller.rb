class ParticipantsController < ApplicationController

  def show
    @participant = Participant.find(params[:id])
  end

  def new
    @event = Event.find(params[:event_id])
    @participant = Participant.new
  end

  def create
    @event = Event.find(params[:event_id])
    @participant = Participant.new
    if @participant.save
      redirect_to event_participant_path(@participant)
    else
      render 'participant#new'
    end
  end

  def edit
    @participant = Participant.find(params[:id])
    @event = @event.participant
  end

  def update
    @participant = Participant.find(params[:id])
    @event = @event.participant
    @event.participant.update(participant_params)
    redirect_to event_participant_path(@participant)
  end

  private

  def participant_params
    params.require(:participant).permit(:email, :first_name, :last_name, :company, :address, :zipcode, :city)
  end
end
