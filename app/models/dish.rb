class Dish < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
