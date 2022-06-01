class Participant < ApplicationRecord
  has_many :bookings, inverse_of: :participant, dependent: :destroy
  has_many :workshops, through: :bookings
  accepts_nested_attributes_for :bookings,
                                reject_if: proc { |attributes| attributes[:workshop_id].blank? },
                                allow_destroy: true
  after_create :send_confirmation_email

  SECTOR = ["Enseignement scolaire", "Enseignement & formations professionnels",
  "Enseignement supérieur", "Jeunesse & sport", "Education des adultes"]


  validates :email, presence: { message: "Veuillez renseigner votre email" }
  validates :first_name, presence: { message: "Veuillez renseigner votre nom de famille" }
  validates :last_name, presence: { message: "Veuillez renseigner votre prénom" }
  validates :organization, presence: { message: "Veuillez renseigner le nom de votre établissement" }
  validates :service, presence: { message: "Veuillez renseigner votre service" }
  validates :position, presence: { message: "Veuillez renseigner votre fonction" }
  validates :city, presence: { message: "Veuillez renseigner le nom de votre ville" }
  validates :region, presence: { message: "Veuillez renseigner le nom de votre région" }
  validates :newsletter_subscription, inclusion: { in: [true, false] }
  validates :accepted_conditions, inclusion: { in: [true] }
  # validates :bookings, presence: { message: "Veuillez sélectionner au moins un atelier pour valider votre inscription" }
  # validates :company, presence: true

  CSV_HEADER = %w[Nom Prénom Email Organisation Fonction Ville Newsletter]
  def self.to_csv
    # @participants = Participant.includes(:bookings).where(bookings: {status: "confirmed"})
    @participants = Participant.all

    CSV.generate(col_sep: ";") do |csv|
      csv << CSV_HEADER
      @participants.each do |participant|
        csv << [
          participant.last_name,
          participant.first_name,
          participant.email,
          participant.organization,
          participant.position,
          participant.city,
          participant.newsletter_subscription.to_s
          # participant.zipcode,
          # participant.bookings.order_by_workshop_date.map {|booking| booking.workshop.name }.join(" , ")
        ]
      end
    end
  end

  private

  def send_confirmation_email
    ParticipantMailer.confirmation(self).deliver_now
  end

end
