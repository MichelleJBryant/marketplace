require 'cloudinary'

class Listing < ApplicationRecord
  validates :title, :description, :subject, :price, :resource_type, presence: true
  validates :price, numericality: { only_integer: true }
  validates :description, length: { in: 100..1000 }

  has_many :comments, dependent: :destroy
  has_one_attached :image
  belongs_to :user

  def image_tag
    cl_image_tag(self.image.key, :width=>730, :crop=>"fit")
  end

  def thumb_tag
    cl_image_tag(self.image.key, :width=>300, :crop=>"fit")
  end


end
