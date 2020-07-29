class GenresController < ApplicationController
  include GenresHelper

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create!(allowed_params(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @genre = current_resource(Genre)
  end

  def edit
    @genre = current_resource(Genre)
  end
  
  def update
    @genre = current_resource(Genre)
    @genre.update(allowed_params(:name))
    redirect_to genre_path(@genre)
  end

end
