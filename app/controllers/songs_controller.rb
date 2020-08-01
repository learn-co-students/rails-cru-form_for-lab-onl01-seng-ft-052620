require 'pry'
class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    set_song
  end

  def new
    @song = Song.new
    puts params
  end

  def create
    @song = Song.new
    @song.update(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def edit
    set_song
  end

  def update
    set_song
    @song.update(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  private
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def set_song
    @song = Song.find_by_id(params[:id])
  end
end
