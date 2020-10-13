class Workshop < ApplicationRecord
  belongs_to :event
  has_many :bookings, dependent: :destroy

  scope :visibles, -> { where(visible: true) }

  def to_s
    "#{self.start_at.strftime("%H:%M")} -> #{self.end_at.strftime("%H:%M")} : #{self.name} - #{self.speaker} "
  end

end
