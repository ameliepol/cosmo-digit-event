class CompanyAdmin::DashboardController < ApplicationController

  def show
    # @user = current_user
    @bookings = Booking.includes(:workshop).where(workshop: {event: @event})
    @participants = Participant.all
    # @participants = Participant.includes(:bookings).where(bookings: {status: "confirmed"})
    @event = Event.last
    @workshops = Workshop.visibles.order(start_at: :asc)
    @questions = Question.all
  end

  private

  def participant_params
    params.require(:participant).permit(
    :email,
    :first_name,
    :last_name,
    :company,
    :organization,
    :position,
    :city,
    :request,
    :zipcode,
    :newsletter_subscription,
    :accepted_conditions,
    bookings_attributes: [:id, :workshop_id, :status])
  end

end
