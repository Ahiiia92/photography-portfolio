class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @albums = policy_scope(Album).order(created_at: :desc)
  end

  def show
    set_album
    authorize @album
    @category = Category.new
    @category = @album.category
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
    params.require(:album).permit(:title, :date, :city, :country, :quote,:description, :cover, photos: [])
  end

  def set_album
    @album = Album.find(params[:id])
  end
end
