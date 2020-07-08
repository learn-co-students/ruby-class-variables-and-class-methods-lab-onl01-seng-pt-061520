require 'pry'
class Song 
  @@count = 0 
  @@artists = []
  @@genres = []
  
  attr_accessor :artist, :genre, :name
  
  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre 
    @name = name 
    @artist = artist 
    @genre = genre 
  end
  
  def self.count 
    @@count 
  end 

  def self.artists 
    a = []
    @@artists.each do |ll|
      if !a.include?(ll)
        a << ll 
      end 
    end 
    a
  end 
  
  def self.genres
    a = []
    @@genres.each do |ll|
      if !a.include?(ll)
        a << ll 
      end 
    end 
    a
  end 
  
  def self.genre_count
    a = {}
    @@genres.each do |one|
      if a.include?(one)
        a[one] += 1 
      else 
        a[one] = 1 
      end
    end 
    a
  end 
  
  def self.artist_count
    a = {}
    @@artists.each do |one|
      if a.include?(one)
        a[one] += 1 
      else 
        a[one] = 1 
      end
    end 
    a
  end 
      
end 
