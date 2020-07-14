class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :contact]

  def home
    # @albums = Album.all
    @album = Album.find(33)
    # @cover = @album.cover
  end

  def about
  end

  def contact
  end

  def admin
    @albums = Album.where(user_id: current_user)
  end
end
