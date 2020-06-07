class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def article_params
    params.require(:album).permit(:title, :date, :city, :country, :quote,:description, :cover, photos: [])
  end
end
