class Soundtrack
  attr_reader :songs

  def initialize(name, songs)
    @name = name
    @songs = songs
  end

  def add_song(new_song)
    # @songs.push(new_song)
    # binding.pry
    @songs << new_song
  end

  def print_soundtrack
    song_names = ""
    @songs.each do |song|
      # binding.pry
      # get the song name here
      song_names += "#{song.name}\n"
    end
    # need to finally return complete string
    # return song_names
    song_names
  end
end