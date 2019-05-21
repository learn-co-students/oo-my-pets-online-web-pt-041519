require "pry"

class Fish
  
  attr_reader :name
  attr_accessor :mood

  @@all = []

  def initialize(name, starting_mood = "nervous")
    @name = name
    @mood = starting_mood
  end


end