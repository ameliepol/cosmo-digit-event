class Question < ApplicationRecord
  belongs_to :event

  ORGANIZATION = ["Enseignement scolaire", "Enseignement & formations professionnels",
  "Enseignement supérieur", "Education des adultes"]

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :organization, presence: true
  validates :content, presence: true
end
