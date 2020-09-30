class Event < ApplicationRecord
  belongs_to :user
  has_many :participants

  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :place, presence: true
  validates :emailing_status, presence: true
  validates :description, presence: true

  enum emailing_status: { "confirmation" => 1, "J-30" => 2, "J-15" => 3, "J-7" => 4, "J-1" => 5 }
end
