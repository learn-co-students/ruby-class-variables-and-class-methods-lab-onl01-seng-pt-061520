class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist #shovel new info into artist to be set free line 27
    end

    def self.count
        @@count  #setted up count in line 5, need to call
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] +=1 #unique = will pass 1
            else
                genre_count[genre] =1 #duplicated = will not take second
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] +=1 #if unique, add 1
            else
                artist_count[artist] =1
            end
        end
        artist_count 
    end

end