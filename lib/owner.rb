class Owner
  # code goes here
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  attr_accessor :pets, :name
  attr_reader :species
  
  def initialize(species, pets = {fishes: [], cats: [], dogs: []})
    @species = species
    @pets = pets
    @@all << self
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def buy_fish(name)
    fish_1 = Fish.new(name) 
    @pets[:fishes] << fish_1
  end
  
  def buy_cat(name)
    cat_1 = Cat.new(name) 
    @pets[:cats] << cat_1
  end
  
  def buy_dog(name)
    dog_1 = Dog.new(name)
    @pets[:dogs] << dog_1
  end
  
  def walk_dogs
    dog_array = @pets[:dogs]
    dog_array.each do |each_dog|
      each_dog.mood = "happy"
  end
end

  def play_with_cats
    cat_array = @pets[:cats]
    cat_array.each do |each_cat|
      each_cat.mood = "happy"
      end
  end
  
  def feed_fish
    fish_array = @pets[:fishes]
    fish_array.each do |each_fish|
      each_fish.mood = "happy"
      end
  end
  
  def sell_pets
    pets_array = @pets.values.flatten
    pets_array.each do |each_pet|
      each_pet.mood = "nervous"
    end
    @pets.clear
  end
  
  def list_pets
    return"I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end