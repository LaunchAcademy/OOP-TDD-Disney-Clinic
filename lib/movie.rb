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

  def add_character(character)
    @characters.push(character)
  end

  def heroes
    list = ""
    @characters.each do |character|
      if character.hero?
        list += "#{character.name}\n"
      end
    end
    list
  end

  def villains
    list = ""
    @characters.each do |character|
      if !character.hero?
        list += "#{character.name}\n"
      end
    end
    list
  end

  def cast
    list = ""

    @characters.each do |character|
      list += "#{character.actor}\n"
    end
    list
  end
end
