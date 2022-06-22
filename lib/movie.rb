class Movie 

    attr_reader :watch_count, :characters

    def initialize(title, release_year, characters, soundtrack)
        @title = title
        @release_year = release_year
        @characters = characters
        @soundtrack = soundtrack
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
        @characters.each do |character| 
            if character.hero?
                hero_string += "#{character.name}\n"
            end
        end
        return hero_string
    end

    def villains 
        villains_string = ""

        @characters.each do |character| 
            if !character.hero? 
                villains_string += "#{character.name}\n"
            end
        end

        return villains_string
    end     
    
    def cast 
        cast_string = "" 
        @characters.each do |character| 
            cast_string += "#{character.actor}\n"
        end
        return cast_string
    end

end

#  { Movie.new('Aladdin', 1992, [aladdin, jasmine, jafar], aladdin_soundtrack) }
