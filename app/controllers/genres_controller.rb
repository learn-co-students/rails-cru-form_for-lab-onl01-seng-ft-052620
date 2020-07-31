class GenresController < ApplicationController

    before_action :set_genre, only: [:show,:edit,:update]

    def show
    end

    def new
        @genre = Genre.new()
    end

    def create
        @genre = Genre.new(genre_params(:name))
        if @genre.save
            redirect_to @genre
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @genre.update(genre_params(:name))
            redirect_to @genre
        else
            render :edit
        end
    end

    private

    def set_genre
        @genre = Genre.find(params[:id])
    end

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end

end
