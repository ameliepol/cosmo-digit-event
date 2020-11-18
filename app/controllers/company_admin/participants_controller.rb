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

  def destroy
    @event = Event.last
    @participant = Participant.find(params[:id])
    @participant.destroy
    redirect_to company_admin_dashboard_path
  end

  # def index
  #   @event = Event.find(params[:event_id])
  #   @participants = Participant.includes(:bookings).where(bookings: {status: "confirmed"})
  #   @workshops = @event.workshops.visibles
  #   # @bookings = @participants.bookings
  #   @bookings_by_date = @participants.bookings.group_by{|b| b.workshop.start_at.to_date}


  #   respond_to do |format|
  #     format.html
  #     format.csv { send_data @participants.to_csv, filename: "participants-#{Date.today}.csv" }
  #   end
  # end

private

  def participant_params
    params.require(:participant).permit(
    :email,
    :first_name,
    :last_name,
    :company,
    :organization,
    :position,
    :accepted_conditions,
    bookings_attributes: [:id, :workshop_id, :status])
  end

end
