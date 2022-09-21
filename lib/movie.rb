class Movie
  attr_reader :watch_count, :characters

  def initialize(name, year, characters, soundtrack)
    @name = name
    @year = year
    @characters = characters
    @soundtrack = soundtrack
    @watch_count = 0
  end

  def watch!
    @watch_count += 1
  end

  def add_character(new_character)
    @characters.push(new_character)
  end

  def heroes
    heroes = []
    @characters.each do |character|
      if character.hero?
        heroes << character.name
      end
    end
    heroes.join("\n") + "\n"
    # binding.pry
  end

  def villains
    villains = ""
    @characters.each do |character|
      if !character.hero?
        villains += "#{character.name}\n"
      end
    end
    villains
  end

  def cast
    actors = ""
    @characters.each do |character|
      actors += "#{character.actor}\n"
    end
    actors
  end
end