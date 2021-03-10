class Soundtrack
  attr_reader :songs
  
  def initialize(name, songs)
    @name = name
    @songs = songs
  end

  def add_song(new_song)
    # binding.pry
    @songs << new_song
    # @songs.push(new_song)
  end

  def print_soundtrack
    output = ""
    @songs.each do |song|
      output += "#{song.name}\n"
    end

    return output
  end
end