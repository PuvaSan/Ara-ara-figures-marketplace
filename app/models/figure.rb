class Figure < ApplicationRecord
  belongs_to :user
  belongs_to :anime
  validates :name, :price, :description, presense: true
  validates :description, length: {minimum: 3}
  validates :delivery, :pick_up, default: true
end
