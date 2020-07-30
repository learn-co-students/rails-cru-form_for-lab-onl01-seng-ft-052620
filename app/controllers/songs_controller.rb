class SongsController < ApplicationController
    # before_action :set_song, except: [:new, :create]
    def index 
        @song = Song.all 
    end 

    def show 
        set_song
    end

    def new 
        @song = Song.new
    end

    def create 
        @song = Song.new(song_params)
        @song.save 
        redirect_to songs_path
    end 

    def edit
        set_song
    end

    def update 
        set_song
        @song.update(song_params)
        redirect_to song_path(@song)
    end 

    private 
    def set_song 
        @song = Song.find(params[:id])
    end

    def song_params
        params.require(:song).permit(:name, :artist_id, :song_id)
    end
end
