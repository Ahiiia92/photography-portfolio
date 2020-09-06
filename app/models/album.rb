class Album < ApplicationRecord
  has_one_attached :cover
  has_many_attached :photos
  has_many :categories
end
