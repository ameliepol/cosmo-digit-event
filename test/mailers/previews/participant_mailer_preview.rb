# Preview all emails at http://localhost:3000/rails/mailers/participant_mailer
class ParticipantMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/participant_mailer/confirmation
  def confirmation
    participant = Participant.first
    ParticipantMailer.confirmation(participant)
  end

    def participant_question
    question = Question.first
    ParticipantMailer.participant_question(question)
  end

end
