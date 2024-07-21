class Order < ApplicationRecord
  belongs_to :figure
  belongs_to :buyer, class_name: "User"
  has_many :reviews
  enum status: { pending: "pending", completed: "completed", cancelled: "cancelled" }

  #validations
  validates :mode_of_delivery, presence: true, inclusion: { in: ['pickup', 'delivery'] }
  validates :status, presence: true, inclusion: { in: statuses.keys }
end
