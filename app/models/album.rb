class Album < ApplicationRecord
  has_one_attached :cover
  has_many_attached :photos

  rails_admin do
    configure :album do
      label 'Photo Album: '
    end
    grid do
      thumbnail_method do
        :thumb
      end
    end
  end
end
