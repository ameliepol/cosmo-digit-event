class Participant < ApplicationRecord
  belongs_to :event

  # WORKSHOPS = %w(1 2 3)
  # validates :workshop, inclusion: { in: WORKSHOPS }

  validates :company, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true
  # validates :workshop, presence: true
end
