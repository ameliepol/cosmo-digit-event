require 'test_helper'

class ParticipantMailerTest < ActionMailer::TestCase
  test "confirmation" do
    mail = ParticipantMailer.confirmation
    assert_equal "Confirmation d'inscription", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "participant_question" do
    mail = ParticipantMailer.participant_question
    assert_equal "Vos questions", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
