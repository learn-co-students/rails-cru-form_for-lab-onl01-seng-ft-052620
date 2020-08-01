class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre

  def set_genre(genre)
    @genre = Genre.find_or_create_by_name(genre)
    @genre_id = @genre.id
  end

  def set_artist(artist)
    @artist = Artist.find_or_create_by_name(artist)
    @artist_id = @genre.id
  end

end
