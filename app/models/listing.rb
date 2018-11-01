class Listing < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :subject, presence: true
  has_many :comments
  has_one_attached :image
  end
