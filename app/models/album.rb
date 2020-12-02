class Album < ApplicationRecord
  has_one_attached :cover
  has_many_attached :photos

  validates :name, presence: true

  rails_admin do
    configure :album do
      label 'Photo Album: '
    end
  end
end
