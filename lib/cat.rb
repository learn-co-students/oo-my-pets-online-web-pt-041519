require "pry"

class Cat

  attr_accessor :mood
  attr_reader :name

  def initialize(name, starting_mood = "nervous")
    @name = name
    @mood = starting_mood
    # @@all << self
  end

end