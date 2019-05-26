class Cat

  attr_reader :name

  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous" # You can initialize a behavior as a string
  end

end
