require 'cloudinary'

class Listing < ApplicationRecord
  validates :title, :description, :subject, :price, :resource_type, presence: true

  has_many :comments
  has_one_attached :image

  def image_tag
    cl_image_tag(self.image.key, :width=>730, :crop=>"fit")
  end

  def thumb_tag
    cl_image_tag(self.image.key, :width=>300, :crop=>"fit")
  end


end
