class MoviesController < ApplicationController
  def home
    @lists = List.all
  end

  def index
  end
end
