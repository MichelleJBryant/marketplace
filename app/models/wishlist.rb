class Wishlist < ApplicationRecord
  has_many :listings
  belongs_to :user
end
