class ParticipantMailer < ApplicationMailer
  def confirmation(participant)
    @participant = participant
    mail(to: @participant.email, subject: "Confirmation d'inscription")
  end
end
