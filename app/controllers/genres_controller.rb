class GenresController < ApplicationController 
    before_action :set_genre, except: [:index, :new, :create]
    def show
    end
    def index
    end
    def new
        @genre = Genre.new
    end
    def create
        @genre = Genre.new(genre_params(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end
    def edit
    end
    def update
        @genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end
    def destroy
    end    
    private 
    def set_genre
        @genre = Genre.find_by_id(params[:id])
    end
    def genre_params(*args)
        params.require(:genre).permit(*args)
    end
end