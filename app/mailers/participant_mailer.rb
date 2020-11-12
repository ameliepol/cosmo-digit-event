class ParticipantMailer < ApplicationMailer

  def confirmation(participant)
    @participant = participant
    @bookings = @participant.bookings
    @bookings_by_date = @bookings.group_by{|b| b.workshop.start_at.to_date}
    attachments.inline['logo_site_erasmus.png'] = File.read('app/assets/images/logo_site_erasmus.png')
    mail(to: @participant.email, subject: "Erasmus+ - Confirmation d'inscription") do |format|
      format.html { render(layout: 'mailer') }
    end
  end

  def question(participant)
    @event = Event.find(params[:event_id])
    @question = Question.find(params[:id])
    @participant = participant
    @bookings = @participant.bookings
    @bookings_by_date = @bookings.group_by{|b| b.workshop.start_at.to_date}
    attachments.inline['logo_site_erasmus.png'] = File.read('app/assets/images/logo_site_erasmus.png')
    mail(to: @participant.email, subject: "Erasmus+ - Confirmation d'inscription") do |format|
      format.html { render(layout: 'mailer') }
    end
  end

  def alert_before(participant, time)
    @participant = participant
    @time = time
    # attachments.inline['papillon-blanc.png'] = File.read('app/assets/images/papillon-blanc.png')
    mail(to: @participant.email, subject: "La Conférence annuelle Erasmus + a lieu dans #{@time}") do |format|
      format.html { render(layout: 'mailer') }
    end
  end

  # def alert_fifteen_days_before(participant)
  #   @participant = participant
  #   # attachments.inline['papillon-blanc.png'] = File.read('app/assets/images/papillon-blanc.png')
  #   mail(to: @participant.email, subject: "La Conférence annuelle Erasmus + a lieu dans 15 jours") do |format|
  #     format.html { render(layout: 'mailer') }
  #   end
  # end

  # def alert_seven_days_before(participant)
  #   @participant = participant
  #   # attachments.inline['papillon-blanc.png'] = File.read('app/assets/images/papillon-blanc.png')
  #   mail(to: @participant.email, subject: "La Conférence annuelle Erasmus + a lieu dans 7 jours") do |format|
  #     format.html { render(layout: 'mailer') }
  #   end
  # end

  #   def alert_one_day_before(participant)
  #   @participant = participant
  #   # attachments.inline['papillon-blanc.png'] = File.read('app/assets/images/papillon-blanc.png')
  #   mail(to: @participant.email, subject: "La Conférence annuelle Erasmus + commence demain") do |format|
  #     format.html { render(layout: 'mailer') }
  #   end
  # end
end
