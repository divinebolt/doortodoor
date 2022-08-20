class Dish < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # Geocode map
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # Search
  include PgSearch::Model
  pg_search_scope :search,
    against: [ :name, :price, :description, :quantity, :type, :rating, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
