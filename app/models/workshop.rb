class Workshop < ApplicationRecord
  belongs_to :event
  has_many :bookings, dependent: :destroy

  scope :visibles, -> { where(visible: true) }

  # scope :dayone, -> { where(start_at: DateTime.new(2021, 01, 14)) }
  # scope :daytwo, -> { where(start_at: DateTime.new(2021, 01, 18)) }

  def to_s
    "#{self.start_at.strftime("%H:%M")} -> #{self.end_at.strftime("%H:%M")} : #{self.name} - #{self.speaker} "
  end

end
