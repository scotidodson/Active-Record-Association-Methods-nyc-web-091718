require_relative './artist.rb'
require_relative './genre.rb'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drake = Artist.find_by(name: "Drake")
    # self.artist_id = drake.id
    self.artist = drake
    self.artist
  end
end
