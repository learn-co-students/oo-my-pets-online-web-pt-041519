class Owner
  @@all = []
  
  attr_accessor :pets
  attr_reader :species
  
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs:[]}
    @species = species
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def name= (name)
    @name = name
  end
  
  def name
    @name
  end
  
  def buy_cat(name)
    new_cat_instance = Cat.new(name)
    self.pets[:cats] << new_cat_instance
    # add the new instance of cat to the @pets hash
  end
  
  def buy_dog(name)
    new_dog_instance = Dog.new(name)
    self.pets[:dogs] << new_dog_instance
    # dd the new instance of dog to the @pets hash
  end
  
  def buy_fish(name)
    new_fish_instance = Fish.new(name)
    self.pets[:fishes] << new_fish_instance
    # add the new instance of fish to the @pets hash
  end
  
  def walk_dogs
    dogs_array = self.pets[:dogs]
    dogs_array.collect do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    cats_array = self.pets[:cats]
    cats_array.collect do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    fishes_array = self.pets[:fishes]
    fishes_array.collect do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    cats_array = self.pets[:cats]
    cats_array.collect do |cat|
      cat.mood = "nervous"
    end
    cats_array.clear
    dogs_array = self.pets[:dogs]
    dogs_array.collect do |dog|
      dog.mood = "nervous"
    end
    dogs_array.clear
    fishes_array = self.pets[:fishes]
    fishes_array.collect do |fish|
      fish.mood = "nervous"
    end
    fishes_array.clear
  end
  
  def list_pets
    return "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
      
end