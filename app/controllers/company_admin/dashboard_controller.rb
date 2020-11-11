class CompanyAdmin::DashboardController < ApplicationController

  def show
    # @user = current_user
    @bookings = Booking.includes(:workshop).where(workshop: {event: @event})
    @participants = Participant.includes(:bookings).where(bookings: {status: "confirmed"})
    @event = Event.last
    @workshops = @event.workshops.visibles
    @bookings = Booking.includes(:workshop)
    @questions = Question.all


    respond_to do |format|
      format.html
      format.csv { send_data @participants.to_csv, filename: "participants-#{Date.today}.csv" }
    end
  end
end
