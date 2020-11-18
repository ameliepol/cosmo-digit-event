class CompanyAdmin::DashboardController < ApplicationController

  def show
    # @user = current_user
    @bookings = Booking.includes(:workshop).where(workshop: {event: @event})
    @participants = Participant.includes(:bookings).where(bookings: {status: "confirmed"})
    @event = Event.last
    @workshops = @event.workshops.visibles
    @bookings = Booking.includes(:workshop)
    @questions = Question.all
  end

  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy
    redirect_to company_admin_dashboard_path
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
    :accepted_conditions,
    bookings_attributes: [:id, :workshop_id, :status])
  end

end
