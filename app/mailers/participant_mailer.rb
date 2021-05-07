class ParticipantMailer < ApplicationMailer

  def confirmation(participant)
    @participant = participant
    @bookings = @participant.bookings
    @bookings_by_date = @bookings.group_by{|b| b.workshop.start_at.to_date}
    attachments.inline['logo_grdr_et_uasz.png'] = File.read('app/assets/images/logo_grdr_et_uasz.png')
    attachments.inline['logos.png'] = File.read('app/assets/images/logos.png')
    attachments.inline['logo_AFD.png'] = File.read('app/assets/images/logo_AFD.png')
    attachments.inline['logo_UE.png'] = File.read('app/assets/images/logo_UE.png')
    attachments.inline['logo_FAP.png'] = File.read('app/assets/images/logo_FAP.png')
    attachments.inline['logo_CFSI.png'] = File.read('app/assets/images/logo_CFSI.png')
    attachments.inline['logo_OIM.png'] = File.read('app/assets/images/logo_OIM.png')
    attachments.inline['logo_Expertise_France.png'] = File.read('app/assets/images/logo_Expertise_France.png')
    mail(to: @participant.email, subject: "Les Jeudis du Littoral Ouest Africain - Confirmation d'inscription") do |format|
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
