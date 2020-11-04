class Question < ApplicationRecord
  belongs_to :event

  ORGANIZATION = ["Enseignement scolaire", "Enseignement & formations professionnels",
  "Enseignement supérieur", "Education des adultes"]

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :organization, presence: true
  validates :content, presence: true

  def self.to_csv
    attributes = %w{last_name first_name email organization questions}
    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |questions|
        csv << question.attributes.values_at(*attributes)
      end
    end
  end
end
