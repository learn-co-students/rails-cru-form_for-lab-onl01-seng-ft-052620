class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :edit, :update]

    def index 
    end 

    def show 
    end 

    def new 
        @artist = Artist.new
    end 

    def create 
        @artist = Artist.create(artist_params)
        if @artist.save 
            redirect_to artist_path(@artist)
        end 
    end 

    def edit 
    end 

    def update 
        @artist.update(artist_params)
        if @artist.save 
            redirect_to edit_artist_path(@artist)
        end 
    end 

    private 
    def set_artist 
        @artist = Artist.find_by_id(params[:id])
    end 

    def artist_params 
        params.require(:artist).permit(:name, :bio)
    end 

end
