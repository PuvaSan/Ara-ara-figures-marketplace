class Order < ApplicationRecord
  belongs_to :figure
  belongs_to :buyer, class_name: "User"
end
