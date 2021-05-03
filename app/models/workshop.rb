class Workshop < ApplicationRecord
  belongs_to :event
  has_many :bookings, dependent: :destroy

  scope :visibles, -> { where(visible: true) }

  def to_s
    "#{self.start_at.strftime("%Hh%M")} - #{self.end_at.strftime("%Hh%M")} : #{self.name}
    #{self.description}"
  end

  CSV_HEADER = %w[Atelier Nom Prénom Email Organisation Fonction]
  def self.to_csv
    @workshops = Workshop.visibles.order(start_at: :asc)

    CSV.generate(col_sep: ";") do |csv|
      csv << CSV_HEADER
      @workshops.each do |workshop|
        workshop.bookings.each do |booking|
          csv << [
            workshop.name,
            booking.participant.last_name,
            booking.participant.first_name,
            booking.participant.email,
            booking.participant.organization,
            booking.participant.position
          ]
        end
      end
    end
  end
end
