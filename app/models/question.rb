class Question < ApplicationRecord
  belongs_to :event
  # after_create :send_participant_question_email

  SECTOR = ["Enseignement scolaire", "Enseignement & formations professionnels",
  "Enseignement supérieur", "Education des adultes"]

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :company, presence: true
  validates :organization, presence: true
  validates :position, presence: true
  validates :content, presence: true
  validates :accepted_conditions, inclusion: { in: [true] }

  def self.to_csv
    attributes = %w{last_name first_name email organization content}
    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |question|
        csv << question.attributes.values_at(*attributes)
      end
    end
  end

  private

  def send_participant_question_email
    ParticipantMailer.participant_question(self).deliver_now
  end


end
