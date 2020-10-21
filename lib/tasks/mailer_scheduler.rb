class MailerScheduler < ParticipantMailer

  namespace :mailer_scheduler do
    desc "This task is called by the Heroku scheduler add-on to send reminder mail to participants"
    task :send_emails_to_participants_before_event => :environment do
      alert_one_month_before = (Event.first.start_at - 30.days).to_date
      alert_fifteen_days_before = (Event.first.start_at - 15.days).to_date
      alert_seven_days_before = (Event.first.start_at - 7.days).to_date
      alert_one_day_before = (Event.first.start_at - 1.days).to_date
      participants = Participant.includes(:bookings).where(bookings: {status: "confirmed"})

      if Time.now.to_date == alert_one_month_before
        participants.each do |participant|
          ParticipantMailer.alert_before(participant, "1 mois").deliver_now
        end
      elsif Time.now.to_date == alert_fifteen_days_before
        participants.each do |participant|
          ParticipantMailer.alert_before(participant, "15 jours").deliver_now
        end
      elsif Time.now.to_date == alert_seven_days_before
        participants.each do |participant|
          ParticipantMailer.alert_before(participant, "7 jours").deliver_now
        end
      elsif Time.now.to_date == alert_one_day_before
        participants.each do |participant|
          ParticipantMailer.alert_before(participant, "1 jour").deliver_now
        end

      end
    end
  end
end
