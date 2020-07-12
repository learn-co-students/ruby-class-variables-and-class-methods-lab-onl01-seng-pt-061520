class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []

  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    unique_artists = []
    @@artists.each do |x|
      if unique_artists.include?(x) == false
        unique_artists.push(x)
      end
    end
    
    unique_artists
  end
  
  def self.genres
    unique_genres = []
    @@genres.each do |x|
      if unique_genres.include?(x) == false
        unique_genres.push(x)
      end
    end
    unique_genres
  end
  
  def self.artist_count
    count_by_artist = {}
    @@artists.each do |x|
      if count_by_artist.include?(x)
        count_by_artist[x] += 1
      else
        count_by_artist[x] = 1
      end
    end
    
    count_by_artist
  end
  
  def self.genre_count
    count_by_genre = {}
    @@genres.each do |x|
      if count_by_genre.include?(x)
        count_by_genre[x] += 1
      else
        count_by_genre[x] = 1
      end
    end
    
    count_by_genre
  end
  
end