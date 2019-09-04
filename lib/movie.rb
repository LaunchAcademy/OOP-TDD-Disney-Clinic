class Movie
  attr_reader :watch_count, :characters
  def initialize(name, year, characters, soundtrack)
    @watch_count = 0
    @characters = []
    characters.each do |character|
      @characters << character
    end
  end

  def watch!
    @watch_count +=1
  end

  def add_character(character)
    @characters << character
  end

  def heroes
    list_of_heroes = ""
    @characters.each do |character|
      if character.hero?
        list_of_heroes += "#{character.name}\n"
      end
    end
    list_of_heroes
  end

  def villains
    list_of_villains = ""
    @characters.each do |character|
      if !character.hero?
        list_of_villains += "#{character.name}\n"
      end
    end
    list_of_villains
  end

  def cast
    cast_list = ""
    @characters.each do |character|
      cast_list += "#{character.actor}\n"
    end
    cast_list
  end
end
