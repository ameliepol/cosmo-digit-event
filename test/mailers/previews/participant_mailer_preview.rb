# Preview all emails at http://localhost:3000/rails/mailers/participant_mailer
class ParticipantMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/participant_mailer/confirmation
  def confirmation
    participant = Participant.first
    ParticipantMailer.confirmation(participant)
  end

end
