class MoviesController < ApplicationController
  def home
    @lists = List.all
  end

  def index
  end

  def destroy
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.find_by(movie_id: params[:id], list_id: params[:list_id])
    @bookmark.destroy
    redirect_to list_path(@list)
  end
end
