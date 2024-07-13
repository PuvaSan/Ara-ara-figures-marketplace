class Review < ApplicationRecord
  belongs_to :reviewer, class_name: "User"
  belongs_to :reviewee, class_name: "User"
  belongs_to :order
  validates :bio, length: { minumum: 10 }
  validates :bio, length: { maximum: 1000 }
end
