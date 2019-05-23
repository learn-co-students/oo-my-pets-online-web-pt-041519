class Fish
  # code goes here
  attr_accessor :mood #can change its mood
  attr_reader :name  #can't change its name
  def initialize(name) # can initialize a fish
    @name = name
    @mood = "nervous"  #initializes with a nervous mood
  end
end
