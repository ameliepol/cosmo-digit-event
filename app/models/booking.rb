class Booking < ApplicationRecord
  belongs_to :participant
  belongs_to :workshop

  enum status: { confirmed: 0, cancelled: 1 }

end
