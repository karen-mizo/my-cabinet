class Post < ApplicationRecord
  belongs_to :user
  has_many :cabinets
  has_many :tags through: :post_tag
end
