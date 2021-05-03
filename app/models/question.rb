class Question < ApplicationRecord
  belongs_to :event
  after_create :send_participant_question_email

  SECTOR = ["Enseignement scolaire", "Enseignement & formations professionnels",
  "Enseignement supérieur", "Jeunesse & sport", "Education des adultes"]

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :company, presence: true
  validates :organization, presence: true
  validates :position, presence: true
  validates :content, presence: true
  validates :accepted_conditions, inclusion: { in: [true] }

  CSV_HEADER = %w[Nom Prénom Email Organisation Secteur Fonction Questions]
  def self.to_csv
    CSV.generate(col_sep: ";") do |csv|
      csv << CSV_HEADER
      all.each do |question|
        csv << [
          question.last_name,
          question.first_name,
          question.email,
          question.organization,
          question.company,
          question.position,
          question.content.gsub(/\R+/, ' ')
        ]
      end
    end
  end

  private

  def send_participant_question_email
    ParticipantMailer.participant_question(self).deliver_now
  end

end
