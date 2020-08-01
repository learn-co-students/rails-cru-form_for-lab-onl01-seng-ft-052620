class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    #shows a new form that submits content and redirects and prints out params
    def create
        @song = Song.create(song_params)
        redirect_to song_path(@song)
    end

    #shows an edit form that submits content and redirects and prints out params
    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song = Song.update(song_params)
        redirect_to song_path(@song)
    end

    private
    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
