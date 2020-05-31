class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @albums = Album.all

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
end
