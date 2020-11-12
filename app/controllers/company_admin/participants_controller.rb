class CompanyAdmin::ParticipantsController < ApplicationController

  def index
    @event = Event.last
    @participants = Participant.includes(:bookings).where(bookings: {status: "confirmed"})
    @workshops = @event.workshops.visibles
    @bookings = Booking.includes(:workshop)


    respond_to do |format|
      format.html
      format.csv { send_data @participants.to_csv, filename: "participants-#{Date.today}.csv" }
    end
  end
end
