class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    return self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    return self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    array = []
    artists = self.artists
    artists.each {|i| array << i.name }
    array
  end
end
