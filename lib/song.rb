require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        # binding.pry
    end

    def self.count
        @@count
    end

    def self.artists
        # unique_artists = []
        # @@artists.each do |artist|
        #     unique_artists.include?(artist) ? false : unique_artists << artist
        # end
        # unique_artists

        @@artists.uniq
    end

    def self.genres
        # unique_genres = []
        # @@genres.each do |genre|
        #     unique_genres.include?(genre) ? false : unique_genres << genre
        # end
        # unique_genres

        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre|
            # genre_hash.include?(genre) ? genre_hash[genre] += 1 : genre_hash[genre] = 1
            genre_hash[genre] ? genre_hash[genre] += 1 : genre_hash[genre] = 1
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |artist|
            # artist_hash.include?(artist) ? artist_hash[artist] += 1 : artist_hash[artist] = 1
            artist_hash[artist] ? artist_hash[artist] += 1 : artist_hash[artist] = 1
        end
        artist_hash
    end
end