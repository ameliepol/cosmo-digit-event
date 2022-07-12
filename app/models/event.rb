class Event < ApplicationRecord
  belongs_to :user
  has_many :workshops
  has_many :bookings
  has_many :questions

  validates :start_at, presence: true
  # validates :end_at, presence: true
  # validates :name, presence: true

  enum emailing_status: { confirmation: 0, alert_one_month_before: 1, alert_fifteen_days_before: 2, alert_seven_days_before: 3, alert_one_day_before: 4 }
end
