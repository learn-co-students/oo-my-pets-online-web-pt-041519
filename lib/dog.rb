class Dog

  attr_accessor :mood
  attr_reader :name
  attr_writer :dog
  
  def initialize(name, dog= dog)
    @name = name
    @dog = dog
    @mood = "nervous"
  end
end