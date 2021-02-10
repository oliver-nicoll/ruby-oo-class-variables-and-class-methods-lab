class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.genres
       @@genres = @@genres.uniq
    end

    def self.artists
       @@artists = @@artists.uniq
    end

    def self.genre_count
        genre_count = Hash.new(0)
        @@genres.each {|genre| genre_count[genre] += 1}
        genre_count
    end
    #method that shows us all the artist of existing songs
#existing_artist

    #method that shows us all the existing genres (prob in an array)
#existing_genre

    #method that keeps track of the number of songs of each genre it creates
#genre_count, returns hashes of key and values


#method that reveals the number of songs each artist is responsible for
#artist_count, returns hashes of key and value pairs

    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each {|artist| artist_count[artist] += 1}
        artist_count
      end
end
