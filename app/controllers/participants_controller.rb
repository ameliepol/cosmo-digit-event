class ParticipantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :show, :create]
  skip_before_action :verify_authenticity_token

  def show
    @event = Event.find(params[:event_id])
    @participant = Participant.find(params[:id])
    @bookings = @participant.bookings
  end

  def new
    @event = Event.find(params[:event_id])
    @participant = Participant.new
    # @workshops = @event.workshops.visibles
    workshops_grouped = Workshop.visibles.order(start_at: :asc).group_by{|w| w.start_at.to_date}.values
    @workshops_1 = workshops_grouped[0]
    @workshops_2 = workshops_grouped[1]
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
    parameters = params.require(:participant).permit(
      :email,
      :first_name,
      :last_name,
      :company,
      :address,
      :zipcode,
      :city,
      bookings_attributes: [:id, :workshop_id, :status]
      )
    parameters["bookings_attributes"].reject! { |_, v| v["status"] != "confirmed" }
    parameters
  end
end
