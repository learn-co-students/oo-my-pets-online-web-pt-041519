class Cat
  # code goes here
  attr_accessor :mood #can change its mood
  attr_reader :name #initializes with a name

  def initialize(name) #can initialize a cat
    @name = name
    @mood = "nervous"  #initializes with a nervous mood
  end



end
