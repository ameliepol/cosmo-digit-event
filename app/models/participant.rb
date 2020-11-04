class Participant < ApplicationRecord
  has_many :bookings, inverse_of: :participant
  has_many :workshops, through: :bookings
  accepts_nested_attributes_for :bookings,
                                reject_if: proc { |attributes| attributes[:workshop_id].blank? },
                                allow_destroy: true
  after_create :send_confirmation_email

  ORGANIZATION = ["Enseignement scolaire", "Enseignement & formations professionnels",
  "Enseignement supérieur", "Education des adultes"]

  validates :company, presence: true
  validates :email, presence: true
  # validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true

  def self.to_csv
    attributes = %w{last_name first_name company email workshops}
    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |participant|
        csv << participant.attributes.values_at(*attributes)
      end
    end
  end

  private

  def send_confirmation_email
    ParticipantMailer.confirmation(self).deliver_now
  end
end


