class ParticipantMailer < ApplicationMailer

  def confirmation(participant)
    @participant = participant
    # @bookings = @participant.bookings
    # @bookings_by_date = @bookings.group_by{|b| b.workshop.start_at.to_date}
    attachments.inline['email_confirmation.png'] = File.read('app/assets/images/email_confirmation.png')
    mail(to: @participant.email, subject: "Inauguration Aquilogia Saint-Jean-de-Luz - Confirmation d'inscription") do |format|
      format.html { render(layout: 'mailer') }
    end
  end

  # def participant_question(question)
  #   @question = question
  #   attachments.inline['logo_site_erasmus.png'] = File.read('app/assets/images/logo_site_erasmus.png')
  #   mail(to: @question.email, subject: "Conférence Erasmus + Bilan et Perspectives - Vos questions") do |format|
  #     format.html { render(layout: 'mailer') }
  #   end
  # end

  # def alert_before(participant, time)
  #   @participant = participant
  #   @time = time
  #   attachments.inline['papillon-blanc.png'] = File.read('app/assets/images/papillon-blanc.png')
  #   mail(to: @participant.email, subject: "La Conférence Erasmus + Bilan et Perspectives a lieu dans #{@time}") do |format|
  #     format.html { render(layout: 'mailer') }
  #   end
  # end

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
