class Dog
  
  attr_reader :name
  attr_accessor :mood

  def initialize(name, starting_mood = "nervous")
    @name = name
    @mood = starting_mood
  end

end