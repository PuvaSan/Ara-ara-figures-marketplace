class Review < ApplicationRecord
  belongs_to :reviewer, class_name: "User"
  belongs_to :reviewee, class_name: "User"
  belongs_to :order

    #validations
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :comment, length: { maximum: 500 }

  validate :distinct_reviewer_and_reviewee

  def distinct_reviewer_and_reviewee
    if reviewer == reviewee
      errors.add(:reviewer, "must be distinct from reviewee")
      errors.add(:reviewee, "must be distinct from reviewer")
    end
  end
end
