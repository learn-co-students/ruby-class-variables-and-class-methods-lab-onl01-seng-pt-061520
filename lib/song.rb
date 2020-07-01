require "pry"

class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
    #binding.pry
  end

  def self.artists
    #returns array no repeats!
    # binding.pry
    @@artists.uniq!
  end

  def self.genres
    #return an array with no repeats
    @@genres.uniq!
  end

  def self.genre_count
    @@genres.map do |genre|
      if @@genre_count.has_key?(genre)
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = []
        @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.map do |artist|
      if @@artist_count.has_key?(artist)
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = []
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end

end
