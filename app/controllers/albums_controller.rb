require 'pry-byebug'
class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  CATEGORY = [
  'Nature',
  'Urban',
  'Wedding',
  'Black & White',
  'Travel',
  'LifeStyle',
  'Party',
  'Portrait',
  'Night'
]

  def index
    @albums = policy_scope(Album).order(created_at: :desc)
    if @category != nil
      @category = @album.category
    else
      @category = 'Undefined'
    end
  end

  def show
    set_album
    authorize @album
    if @category != nil
      @category = @album.category
    else
      @category = 'Undefined'
    end
  end

  def new
    @album = Album.new
    authorize @album
  end

  def create
    @album = Album.new(album_params)
    @album.user = current_user
    authorize @album
    if @album.save?
      flash[:notice] = "Successfully created album!"
      redirect_to albums_path
    else
      render :new
    end
  end

  def edit
    set_album
    authorize @album
  end

  def update
    set_album
    @album.update(album_params)
    @album.user = current_user
    authorize @album
    if @album.save?
      flash[:notice] = "Successfully updated album!"
      redirect_to album_path(@album)
    else
      render :edit
    end
  end

  def destroy
    set_album
    authorize @album
    @album.destroy
    redirect_to albums_path
  end

  private

  def album_params
    params.require(:album).permit(:title, :date, :city, :country, :quote, :category, :description, :cover, photos: [])
  end

  def set_album
    @album = Album.find(params[:id])
  end
end
