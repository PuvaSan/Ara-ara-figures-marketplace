class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  validates :username, :first_name, :lastname, :address, :bio, presence: true
  validates :username, :first_name, :lastname, :bio, uniqueness: true
  validates :bio, length: { minimum: 10 }
  validates :bio, length: { maximum: 500 }

  has_one_attached :photo
end
