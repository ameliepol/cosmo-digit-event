class CompanyAdmin::ParticipantsController < ApplicationController

  def index
    @participants = Participant.includes(:bookings).where(bookings: {status: "confirmed"})

    respond_to do |format|
      format.html
      format.csv { send_data @participants.to_csv, filename: "participants-#{Date.today}.csv" }
    end
  end
end
