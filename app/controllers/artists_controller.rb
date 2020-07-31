class ArtistsController < ApplicationController 
        before_action :set_artist, except: [:index, :new, :create]
    def show
    end
    def index
    end
    def new
        @artist = Artist.new
    end
    def create
        @artist = Artist.new(artist_params(:name, :bio))
        @artist.save
        redirect_to artist_path(@artist)
    end
    def edit
    end
    def update
        @artist.update(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end
    def destroy
    end    
    private 
    def set_artist
        @artist = Artist.find_by_id(params[:id])
    end
    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
end