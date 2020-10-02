class ParticipantsController < ApplicationController

  def show
    @event = Event.find(params[:event_id])
    @participant = Participant.find(params[:id])
  end

  def new
    @event = Event.find(params[:event_id])
    @participant = Participant.new
  end

  def create
    @event = Event.find(params[:event_id])
    @participant = Participant.new(participant_params)
    @participant.event = @event
    if @participant.save
      redirect_to event_participant_path(@event, @participant)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:event_id])
    @participant = Participant.new(participant_params)
    @participant.event = @event
    if @participant.save
      redirect_to event_participant_path(@event, @participant)
    else
      render :new
    end
  end

  # def update
  #   @participant = Participant.find(params[:id])
  #   @event = @event.participant
  #   @event.participant.update(participant_params)
  #   redirect_to event_participant_path(:event_id)
  # end

  private

  def participant_params
    params.require(:participant).permit(:email, :first_name, :last_name, :company, :address, :zipcode, :city, :workshop)
  end
end
