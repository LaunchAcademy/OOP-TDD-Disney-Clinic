class Soundtrack
  attr_reader :songs

  def initialize(name, songs)
    @name = name
    @songs = songs
  end

  # def songs
  #   @song_array
  # end

  def add_song(song)
    @songs << song
  end

  def print_soundtrack
    list = ""
    @songs.each do |song|
      list += "#{song.name}\n"
    end
    return list
  end
end
