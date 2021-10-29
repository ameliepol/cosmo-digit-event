class ParticipantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :show, :create, :destroy]
  skip_before_action :verify_authenticity_token

  def show
    # @event = Event.find(params[:event_id])
    @event = Event.last
    @participant = Participant.find(params[:id])
    # @bookings = @participant.bookings
    # @bookings_by_date = @bookings.group_by{|b| b.workshop.start_at.to_date}
  end

  def new
    # @event = Event.find(params[:event_id])
    @event = Event.last
    @participant = Participant.new
    # @bookings = @participant.bookings
    # @bookings_by_date = @bookings.group_by{|b| b.workshop.start_at.to_date}
    # workshops_grouped = Workshop.visibles.order(start_at: :asc).group_by{|w| w.start_at.to_date}.values
    # @workshops_1 = workshops_grouped[0]
    # @workshops_2 = workshops_grouped[1]
    # @workshops_3 = workshops_grouped[2]
  end

  def create
    # @event = Event.find(params[:event_id])
    @event = Event.last
    @participant = Participant.new(participant_params)
    # @bookings = @participant.bookings
    # @bookings_by_date = @bookings.group_by{|b| b.workshop.start_at.to_date}
    if @participant.save
      redirect_to event_participant_path(@event, @participant)
    else
      # workshops_grouped = Workshop.visibles.order(start_at: :asc).group_by{|w| w.start_at.to_date}.values
      # @workshops_1 = workshops_grouped[0]
      # @workshops_2 = workshops_grouped[1]
      # @workshops_3 = workshops_grouped[2]
      flash[:alert] = @participant.errors.messages.values.join("; ")
      # @workshops = @event.workshops.visibles
      render :new
    end

  end

  private

  def participant_params
    parameters = params.require(:participant).permit(
      :email,
      :first_name,
      :last_name,
      :organization,
      :position,
      :city,
      :newsletter_subscription,
      :accepted_conditions)
    #   bookings_attributes: [:id, :workshop_id, :status])
    # parameters["bookings_attributes"].reject! { |_, v| v["status"] != "confirmed" }
    # parameters
  end

  def active_navbar_link
    set_active_navbar_link(2)
  end

end
