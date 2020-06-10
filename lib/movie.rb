class Movie
  attr_reader :watch_count, :characters

  def initialize(name, year, character_array, soundtrack)
    @name = name
    @year = year
    @characters = character_array
    @soundtrack = soundtrack
    @watch_count = 0
  end

  def watch!
    @watch_count += 1
  end

  def add_character(character)
    @characters.push(character)
  end

  def heroes
    output = ""
    @characters.each do |character|
      if character.hero?
        output += "#{character.name}\n"
      end
    end

    output
  end

  def villains
    output = ""
    @characters.each do |character|
      if !character.hero?
        output += "#{character.name}\n"
      end
    end

    output
  end

  def cast
    output = ""
    @characters.each do |character|
      output += "#{character.actor}\n"
    end
    output
  end
end