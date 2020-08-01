class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    set_genre
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new
    @genre.update(genre_params)
    if @genre.save
      redirect_to genre_path(@genre)
    else
      render :new
    end
  end

  def edit
    set_genre
  end

  def update
    set_genre
    @genre.update(genre_params)
    if @genre.save
      redirect_to genre_path(@genre)
    else
      render :new
    end
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end

  def set_genre
    @genre = Genre.find_by_id(params[:id])
  end
end
