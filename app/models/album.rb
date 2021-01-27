class Album < ApplicationRecord
  has_one_attached :cover
  has_many_attached :photos

  validates :title, presence: true
end
