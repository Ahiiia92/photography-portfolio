class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :contact]

  def home
  end

  def about
  end

  def contact
  end

  def admin
    @albums = Album.where(user_id: current_user)
  end
end
