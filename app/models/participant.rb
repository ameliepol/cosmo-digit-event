class Participant < ApplicationRecord
  has_many :bookings, inverse_of: :participant
  has_many :workshops, through: :bookings
  accepts_nested_attributes_for :bookings,
                                reject_if: proc { |attributes| attributes[:workshop_id].blank? },
                                allow_destroy: true
  after_create :send_confirmation_email

  SECTOR = ["Enseignement scolaire", "Enseignement & formations professionnels",
  "Enseignement supérieur", "Education des adultes"]

  validates :company, presence: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :position, presence: true
  validates :organization, presence: true
  validates :accepted_conditions, inclusion: { in: [true] }

  # def self.to_csv
  #   @bookings = Booking.includes(:workshop).where(workshop: {event: @event})
  #   @participants = Participant.includes(:bookings).where(bookings: {status: "confirmed"})
  #   @event = Event.last
  #   @workshops = @event.workshops.visibles

  #   CSV.generate(headers: true) do |csv|
  #     csv << attributes = %w{last_name first_name company email name}
  #     @participants.each do |participant|
  #       participant.bookings.each do |booking|
  #         booking.workshops.each do |workshop|
  #           csv << participant.attributes.merge(booking.workshop.name.join(', ').attributes).values_at(*attributes)
  #         end
  #       end
  #     end
  #   end
  # end


  def self.to_csv
    @bookings = Booking.includes(:workshop).where(workshop: {event: @event})
    @participants = Participant.includes(:bookings).where(bookings: {status: "confirmed"})
    @event = Event.last
    @workshops = @event.workshops.visibles

    CSV.generate(headers: true) do |csv|
      csv << attributes = %w{last_name first_name company email name}

      @participants.each do |participant|
        participant.bookings.each do |booking|
          csv << participant.attributes.merge(booking.workshop.attributes).values_at(*attributes)
        end
      end
    end
  end

  private

  def send_confirmation_email
    ParticipantMailer.confirmation(self).deliver_now
  end

end
