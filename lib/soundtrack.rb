class Soundtrack
  attr_reader :songs
  def initialize(name, songs)
    @songs = []
    songs.each do |song|
      @songs << song
    end
  end

  def add_song(song)
    @songs.push(song)
  end

  def print_soundtrack
    song_listing = ""
    @songs.each do |song|
      song_listing += "#{song.name}\n"
    end
    song_listing
  end

end
