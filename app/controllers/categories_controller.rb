class CategoriesController < ApplicationController

  def new
    @album = Album.find(params[:album_id])
    @category = Category.new
  end

  def create
    @album = Album.find(params[:album_id])
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Category successfully created"
      redirect_to @category
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

private

  def category_params
    params.require(:category).permit(:name, :album_id)
  end
end
