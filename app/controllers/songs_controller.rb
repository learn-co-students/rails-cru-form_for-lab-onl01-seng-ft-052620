class SongsController < ApplicationController 
    before_action :set_song, except: [:index, :new, :create]
    def show
        set_song 
    end
    def index
        @song = Song.all
    end
    def new
        @song = Song.new
    end
    def create
        @song = Song.new(song_params(:name, :artist_id, :genre_id))
        @song.save
        redirect_to song_path(@song)
    end
    def edit
    end
    def update
        @song.update(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end
    def destroy
    end    
    private 
    def set_song
        @song = Song.find_by_id(params[:id])
    end
    def song_params(*args)
        params.require(:song).permit(*args)
    end
end