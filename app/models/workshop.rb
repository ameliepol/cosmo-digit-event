class Workshop < ApplicationRecord
  belongs_to :event
  has_many :bookings, dependent: :destroy

  scope :visibles, -> { where(visible: true) }

  def to_s
    "#{self.start_at.strftime("%H:%M")} - #{self.end_at.strftime("%H:%M")} : #{self.name}
    #{self.speaker}
    #{self.description}"
  end

  def self.to_csv
    attributes = %w{workshop bookings}
    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |workshop|
        csv << workshop.attributes.values_at(*attributes)
      end
    end
  end
end
