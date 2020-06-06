class Album < ApplicationRecord

  def index
    @albums = Album.all
  end
end
