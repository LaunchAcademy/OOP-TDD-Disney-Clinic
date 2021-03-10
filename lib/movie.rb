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
    @characters << new_character
  end

  def heroes
    # binding.pry
    output = ""
    @characters.each do |character|
      if character.hero?
        output += "#{character.name}\n"
      end
    end

    return output
  end

  def villains
    output = ""
    @characters.each do |character|
      if !character.hero?
        output += "#{character.name}\n"
      end
    end

    return output
  end

  def cast
    output = ""
    @characters.each do |character|
      output += "#{character.actor}\n"
    end

    return output

    # output = []
    # @characters.each do |character|
    #   # output <<"#{character.actor}\n"
    # end
    # return output.join()
  end
end