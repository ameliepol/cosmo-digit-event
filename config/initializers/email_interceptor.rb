if Rails.env.staging? || Rails.env.development?
  require "email_interceptor"
  ActionMailer::Base.register_interceptor(EmailInterceptor)
end
