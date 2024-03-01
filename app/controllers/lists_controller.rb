class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to movies_path
  end

  def show
    @list = List.find(params[:id])
    @reviews = @list.reviews
    @movies = @list.movies
    @bookmark = Bookmark.new
    @review = Review.new
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to movies_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
