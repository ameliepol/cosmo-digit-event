class CompanyAdmin::DashboardController < ApplicationController

  def show
    # @user = current_user
    # @event = Event.last
    # @bookings = Booking.includes(:workshop).where(workshop: {event: @event})
    @participants = Participant.all
    # @import_participants = Participant::Import.new
    @workshops = Workshop.all
    # @import_workshops = Workshop::Import.new
    @questions = Question.all
    # @import_questions = Question::Import.new

    respond_to do |format|
      format.html
      format.csv { send_data @participants.to_csv, filename: "participants-#{Date.today}.csv" }
      format.csv { send_data @workshops.to_csv, filename: "workshops-#{Date.today}.csv" }
    end
  end
end
