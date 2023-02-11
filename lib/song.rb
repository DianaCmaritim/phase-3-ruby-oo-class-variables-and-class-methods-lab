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
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        @@artists.each_with_object(Hash.new(0)) do |artist, count|
          count[artist] += 1
        end
      end

      def self.genre_count
        @@genres.each_with_object(Hash.new(0)) do |genre, count|
          count[genre] += 1
        end
      end

end


gospel = Song.new("Miracles", "Promises", "Maombi")
puts Song.genres
puts Song.genre_count
puts Song.artist_count
puts Song.name
