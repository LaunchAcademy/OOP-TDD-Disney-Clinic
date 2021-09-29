class Soundtrack 
  attr_reader :songs

  def initialize(name, songs_array)
    @name = name
    @songs = songs_array
  end

  def add_song(song_object)
    @songs << song_object

    return "foobar"
  end

  def print_soundtrack
    # look at each song in our songs array 
    # for each one, add them to some big final string
    # return the end result
    soundtrack_string = "" 
    @songs.each do |song_object|
     soundtrack_string += "#{song_object.name}\n"
    end

    return soundtrack_string
  end

end