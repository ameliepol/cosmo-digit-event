class MailerScheduler < ParticipantMailer

  namespace :mailer_scheduler do
    desc "This task is called by the Heroku scheduler add-on to send reminder mail to participants"
    task :send_emails_to_participants_before_event => :environment do
      alert_one_month_before = (Event.first.start_at - 30).to_date
      alert_fifteen_days_before = (Event.first.start_at - 15).to_date
      alert_seven_days_before = (Event.first.start_at - 7).to_date
      alert_one_day_before = (Event.first.start_at - 1).to_date
      participants = Participants.all
      participants.each do |participant|
        ParticipantMailer.reminder(participant).deliver_now
      end
    end
  end
end
