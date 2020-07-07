class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
  
    def initialize(song_name,artist,genre)
      @name = song_name
      @artist = artist
      @genre = genre
      @@count += 1
      @@artists << artist
      @@genres << genre
    end
  
    def self.count 
      @@count
    end
  
    def self.artists
      @@artists.uniq
    end
  #the .uniq method allows the ability to not duplicate items
  #such as artists and genres
    def self.genres
      @@genres.uniq
    end
  
    def self.genre_count
      genre_count = Hash.new(0)
      @@genres.each {|genre| genre_count[genre] += 1}
      genre_count
    end
  # create a method and set it equal to a new empty hash
  #.each your class variable and allow the method to to take in an argument
  # make it have the ability to count
  #call it again
    def self.artist_count
      artist_count = Hash.new(0)
      @@artists.each {|artist| artist_count[artist] += 1}
      artist_count
    end
  
  end 