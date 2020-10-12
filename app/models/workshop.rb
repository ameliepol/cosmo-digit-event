class Workshop < ApplicationRecord
  belongs_to :event
  has_many :bookings, dependent: :destroy

  scope :visibles, -> { where(visible: true) }

  def to_s
    "#{self.name} : #{self.start_at} -> #{self.end_at}"
  end
end
