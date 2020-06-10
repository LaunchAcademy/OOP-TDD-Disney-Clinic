class Soundtrack
  attr_reader :songs

  def initialize(name, song_array)
    @name = name
    @songs = song_array
  end

  def add_song(song)
    @songs << song
  end

  def print_soundtrack
    output = ""
    @songs.each do |song|
      output += "#{song.name}\n"
    end
    return output
  end
end