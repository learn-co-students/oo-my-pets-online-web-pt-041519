class Dog
  # code goes
  attr_accessor :mood  #can change its mood
  attr_reader :name   #can't change its name
  def initialize(name)
    @name = name
    @mood = "nervous"  #initializes with a nervous mood
  end
end
