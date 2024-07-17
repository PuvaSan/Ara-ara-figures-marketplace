class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  #validations
  validates :username, :first_name, :last_name, :address, presence: true
  validates :username, uniqueness: true
  validates :bio, length: { maximum: 500 }

  has_one_attached :photo
end
