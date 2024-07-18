class Figure < ApplicationRecord
  belongs_to :user
  belongs_to :anime
  has_many :orders

  #validations
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, length: { maximum: 500 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :pick_up, inclusion: { in: [true, false] }
  validates :delivery, inclusion: { in: [true, false] }
  has_many_attached :photos

  validates :pick_up_location, presence: true, if: :pick_up?

  def pick_up?
    pick_up
  end

  validate :at_least_one_delivery_option

  def at_least_one_delivery_option
    if !pick_up && !delivery
      errors.add(:pick_up, "must be selected or")
      errors.add(:delivery, "must be selected")
    end
  end
end
