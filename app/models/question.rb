class Question < ApplicationRecord
  belongs_to :event

  validates :email, presence: true
  validates :content, presence: true
end
