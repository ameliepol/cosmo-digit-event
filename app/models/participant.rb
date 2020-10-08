class Participant < ApplicationRecord
  has_many :bookings
  after_create :send_confirmation_email

  validates :company, presence: true
  validates :email, presence: true
  # validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true

  private

  def send_welcome_email
    ParticipantMailer.with(participant: self).confirmation.deliver_now
  end
end
