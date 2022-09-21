class Song
  attr_reader :name, :characters

  def initialize(name, character_array = [])
    @name = name
    @characters = character_array
  end
end