class ArtistsController < ApplicationController
  include ArtistsHelper

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create!(allowed_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def show
    @artist = current_resource(Artist)
  end

  def edit
    @artist = current_resource(Artist)
  end
  
  def update
    @artist = current_resource(Artist)
    @artist.update(allowed_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

end
