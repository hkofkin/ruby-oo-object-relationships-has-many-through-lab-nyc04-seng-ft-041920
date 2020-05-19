class Artist

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, artist=self, genre)
        new_song = Song.new(name, self, genre)
        new_song.artist = self
        new_song
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        songs.collect do |song|
            song.genre
        end
    end

end