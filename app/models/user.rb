class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  validates :username, :first_name, :lastname, :address, :bio, presense: true
  validates :username, :first_name, :lastname, :bio, uniquness: true
end
