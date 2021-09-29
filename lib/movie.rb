class Movie
  attr_reader :watch_count, :characters

  def initialize(name, year, character_array, soundtrack)
    @characters = character_array
    @watch_count = 0
  end

  def watch!
    @watch_count += 1
  end

  def add_character(character_object)
    @characters << character_object
  end

  def heroes  
    hero_string = ""
    @characters.each do |character_object|
      if character_object.hero? 
        hero_string += "#{character_object.name}\n"
      end
    end

    return hero_string
  end

  def villains  
    villain_string = ""
    @characters.each do |character_object|
      if !character_object.hero?
        villain_string += "#{character_object.name}\n"
      end
    end

    return villain_string
  end

  def cast   
    cast_string = ""
    @characters.each do |character_object|
      cast_string += "#{character_object.actor}\n"
    end

    return cast_string
  end

end