class CompanyAdmin::DashboardController < ApplicationController

  def show
    # @user = current_user
    # @event = Event.last
    # @bookings = Booking.includes(:workshop).where(workshop: {event: @event})
    @participants = Participant.all
    @workshops = Workshop.all
  end
end
