class CompanyAdmin::DashboardController < ApplicationController

  def show
    # @user = current_user
    # @event = Event.last
    # @bookings = Booking.includes(:workshop).where(workshop: {event: @event})
    @participants = Participant.all
    @workshops = Workshop.all
    @questions = Question.all

    respond_to do |format|
      format.html
      format.csv { send_data @participants.to_csv, filename: "participants-#{Date.today}.csv" }
    end
  end
end
