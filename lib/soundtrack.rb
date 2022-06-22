class Soundtrack 

    attr_reader :songs 

    def initialize(name, songs)
        @name = name 
        @songs = songs
    end

    def add_song(song_object)
        @songs << song_object
    end

    def print_soundtrack
        songs_string = ""
        @songs.each do |song| 
            songs_string += "#{song.name}\n" 
        end
        return songs_string
    end



end