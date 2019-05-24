class Owner
@@all = []
attr_reader :species
attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
      fishy = Fish.new(name)
      @pets[:fishes] << fishy
  end

  def buy_cat(name)
      kitty = Cat.new(name)
      @pets[:cats] << kitty
  end

  def buy_dog(name)
      doggy = Dog.new(name)
      @pets[:dogs] << doggy
  end

  def walk_dogs
    @pets[:dogs].each{ |dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{ |cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{ |fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets[:dogs].each{ |dog| dog.mood = "nervous"}
    @pets[:cats].each{ |cat| cat.mood = "nervous"}
    @pets[:fishes].each{ |fish| fish.mood = "nervous"}
    @pets.clear
  end

end
