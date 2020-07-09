class Song
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        count = Hash.new(0)
        @@genres.each {|a| count[a] += 1}
        count
    end

    def self.artist_count
        count = Hash.new(0)
        @@artists.each {|a| count[a] += 1}
        count
    end
end