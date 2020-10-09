class ParticipantMailer < ApplicationMailer

  def confirmation(participant)
    @participant = participant
    mail(to: @participant.email, subject: "Confirmation d'inscription")
  end

  def alert_one_month_before(participant)
    @participant = participant
    # attachments.inline['papillon-blanc.png'] = File.read('app/assets/images/papillon-blanc.png')
    mail(to: @participant.email, subject: "La Conférence annuelle Erasmus + a lieu dans 1 mois") do |format|
      format.html { render(layout: 'alert_one_month_before') }
    end
  end

  def alert_fifteen_days_before(participant)
    @participant = participant
    # attachments.inline['papillon-blanc.png'] = File.read('app/assets/images/papillon-blanc.png')
    mail(to: @participant.email, subject: "La Conférence annuelle Erasmus + a lieu dans 15 jours") do |format|
      format.html { render(layout: 'alert_fifteen_days_before') }
    end
  end

  def alert_seven_days_before(participant)
    @participant = participant
    # attachments.inline['papillon-blanc.png'] = File.read('app/assets/images/papillon-blanc.png')
    mail(to: @participant.email, subject: "La Conférence annuelle Erasmus + a lieu dans 7 jours") do |format|
      format.html { render(layout: 'alert_seven_days_before') }
    end
  end

    def alert_one_day_before(participant)
    @participant = participant
    # attachments.inline['papillon-blanc.png'] = File.read('app/assets/images/papillon-blanc.png')
    mail(to: @participant.email, subject: "La Conférence annuelle Erasmus + commence demain") do |format|
      format.html { render(layout: 'alert_one_day_before') }
    end
  end
end
