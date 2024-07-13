class Figure < ApplicationRecord
  belongs_to :user
  belongs_to :anime

  has_many_attached :photos
end
