class CompanyAdmin::ParticipantsController < ApplicationController

  def index
    # @participants = Participant.all

    respond_to do |format|
      format.html
      format.csv { send_data Participant.to_csv, filename: "participants-#{Date.today}.csv" }
    end
  end
end