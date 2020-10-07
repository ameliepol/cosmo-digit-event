 class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
               :recoverable, :rememberable, :validatable
    has_many :events, dependent: :destroy

    validates :company, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    # validates :admin, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
end
