class Workshop < ApplicationRecord
  belongs_to :event
  has_many :bookings, dependent: :destroy

  scope :visibles, -> { where(visible: true) }

  def to_s
    "#{self.start_at.strftime("%Hh%M")} - #{self.end_at.strftime("%Hh%M")} : #{self.name}
    #{self.description}"
  end

  CSV_HEADER = %w[Ateliers Inscriptions]
  def self.to_csv
    CSV.generate do |csv|
      csv << CSV_HEADER
      all.each do |workshop|
        workshop.bookings.each do |booking|
          csv << [
            workshop.name,
            workshop.bookings.size
          ]
        end
      end
    end
  end
end
