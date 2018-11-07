class Comment < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  has_one :reply
  
  validates :body, presence: true, allow_blank: false
end
