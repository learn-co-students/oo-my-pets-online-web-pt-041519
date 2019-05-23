class Cat
  
  attr_accessor :mood
  attr_reader :name
  attr_writer :cat
  
  def initialize(name, cat= cat)
    @name = name
    @cat = cat
    @mood = "nervous"
  end

end