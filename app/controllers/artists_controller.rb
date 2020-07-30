class ArtistsController < ApplicationController
    before_action :set_artist, except: [:new, :create]

    def show 
    end

    def new 
        @artist = Artist.new
    end

    def create 
        @artist = Artist.new(artist_params)
        @artist.save 
        redirect_to artists_path
    end 

    def edit
    end

    def update 
        set_artist
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end 

    private 
    def set_artist 
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
    
end
