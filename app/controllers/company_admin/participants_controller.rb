class CompanyAdmin::ParticipantsController < ApplicationController

  def index
    @event = Event.last
    # @participants = Participant.includes(:bookings).where(bookings: {status: "confirmed"})
    @pagy, @participants = pagy(Participant.all, items: 100)
    @all_participants = Participant.all
    @workshops = @event.workshops.visibles
    @bookings = Booking.includes(:workshop)
    @bookings_by_date = @bookings.group_by{|b| b.workshop.start_at.to_date}

    respond_to do |format|
      format.html
      format.csv { send_data @all_participants.to_csv, filename: "participants-#{Date.today}.csv" }
    end
  end

  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy
    redirect_to company_admin_participants_path
  end


private

  def participant_params
    params.require(:participant).permit(
      :email,
      :first_name,
      :last_name,
      :organization,
      :oid_code,
      :service,
      :position,
      :city,
      # :region,
      :newsletter_subscription,
      :accepted_conditions)
    # bookings_attributes: [:id, :workshop_id, :status])
  end

end
