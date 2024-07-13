class Anime < ApplicationRecord
  validates title:, uniquness: true
end
