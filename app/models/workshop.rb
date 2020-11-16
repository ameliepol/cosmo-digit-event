class Workshop < ApplicationRecord
  belongs_to :event
  has_many :bookings, dependent: :destroy

  scope :visibles, -> { where(visible: true) }

  def to_s
    "#{self.start_at.strftime("%Hh%M")} - #{self.end_at.strftime("%Hh%M")} : #{self.name}
    #{self.description}"
  end

  # def self.to_csv
  #   attributes = %w{name bookings}
  #   CSV.generate(headers: true) do |csv|
  #     csv << attributes

  #     all.each do |workshop|
  #       csv << workshop.attributes.values_at(*attributes)
  #     end
  #   end
  # end

  def self.to_csv
    CSV.generate(headers: true) do |csv|
      csv << attributes = %w{name bookings}

      all.each do |workshop|
        workshop.bookings.each do |booking|
          csv << workshop.attributes.merge(booking.attributes).values_at(*attributes)
        end
      end
    end
  end
end
