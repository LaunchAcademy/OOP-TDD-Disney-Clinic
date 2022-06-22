class Character

    attr_reader :name, :actor

    def initialize(name, species, actor, hero_type)
        @name = name 
        @species = species 
        @actor = actor
        @hero_type = hero_type
    end

    def summary 
        return "#{@name} (#{@species})"
    end

    def hero? 
        @hero_type == "hero"
    end

    

end