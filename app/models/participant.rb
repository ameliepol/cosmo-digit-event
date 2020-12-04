class Participant < ApplicationRecord
  has_many :bookings, inverse_of: :participant, dependent: :destroy
  has_many :workshops, through: :bookings
  accepts_nested_attributes_for :bookings,
                                reject_if: proc { |attributes| attributes[:workshop_id].blank? },
                                allow_destroy: true
  after_create :send_confirmation_email

  SECTOR = ["Enseignement scolaire", "Enseignement & formations professionnels",
  "Enseignement supérieur", "Secteur jeunesse", "Education des adultes"]

  validates :company, presence: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :position, presence: true
  validates :organization, presence: true
  validates :accepted_conditions, inclusion: { in: [true] }

  CSV_HEADER = %w[Nom Prénom Email Organisation Secteur Fonction Ateliers_sélectionnés]
  def self.to_csv
    # @event = Event.last
    # @bookings = Booking.includes(:workshop).where(workshop: {event: @event})
    @participants = Participant.includes(:bookings).where(bookings: {status: "confirmed"})
    # @workshops = @event.workshops.visibles

    CSV.generate do |csv|
      csv << CSV_HEADER
      @participants.each do |participant|
        csv << [
          participant.last_name,
          participant.first_name,
          participant.email,
          participant.organization,
          participant.company,
          participant.position,
          participant.bookings.order_by_workshop_date.map {|booking| booking.workshop.name }.join(" , ")
        ]
      end
    end
  end

  private

  def send_confirmation_email
    ParticipantMailer.confirmation(self).deliver_now
  end

end
