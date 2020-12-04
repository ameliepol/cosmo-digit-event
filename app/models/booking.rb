class Booking < ApplicationRecord
  belongs_to :participant, inverse_of: :bookings
  belongs_to :workshop

  enum status: { confirmed: 0, cancelled: 1 }

  scope :order_by_workshop_date, -> { includes(:workshop).order("workshops.start_at") }

end
