class SongsController < ApplicationController
    def index 
        @song = Song.all
       byebug
    end
    
    def new 
        @song = Song.new
    end
    
    def create 
        
        @song = Song.new(song_params(:name, :genre_id, :artist_id))
        @song.save
        redirect_to song_path(@song)
    end
    
    def show 
        @song = Song.find(params[:id])
    end
    
    def update 
        @song = Song.find(params[:id])
        @song.update(song_params(:name, :genre_id, :artist_id))
        redirect_to song_path(@song) 
    end
    
    def edit 
        @song = Song.find(params[:id])
    end
    
    def song_params(*args)
        params.require(:song).permit(*args)
      end
end
