class Character
  attr_reader :name, :actor

  def initialize(name, species, actor, type)
    @name = name
    @species = species
    @actor = actor
    @type = type
  end

  def summary
    "#{@name} (#{@species})"
  end

  def hero?
    # binding.pry

    # if @type === "hero"
    #   return true
    # else
    #   return false
    # end

    @type == "hero"
  end

  # def self.actor_as_character(species, actor, type)
  #   return Character.new(actor, species, actor, type)
  # end
end