ActionMailer::Base.smtp_settings = {
  :address => 'smtp.postmarkapp.com',
  :port => 587,
  :domain => ENV['DOMAIN'],
  :user_name => "apikey",
  :password => ENV['POSTMARK_PASSWORD'],
  :authentication => :plain,
  :enable_starttls_auto => true
}
