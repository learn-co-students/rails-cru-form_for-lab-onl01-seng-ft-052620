class SongsController < ApplicationController
  include SongsHelper

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create!(allowed_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def show
    @song = current_resource(Song)
  end

  def edit
    @song = current_resource(Song)
  end
  
  def update
    @song = current_resource(Song)
    @song.update(allowed_params(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end

end
