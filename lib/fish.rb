class Fish
  
  attr_accessor :mood
  attr_reader :name
  attr_writer :fish
  
  def initialize(name, fish= fish)
    @name = name
    @fish = fish
    @mood = "nervous"
  end
end