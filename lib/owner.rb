require 'pry'

# An owner will know about all its pets, be able to buy a pet, set the name of a pet (which the pet can't change, because that would be weird), change a pet's mood through walking, feeding, or playing with it, and sell all of its pets (for when it moves to that tiny NYC studio after college).
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end

  # Access @@all
  def self.all
    @@all
  end

  # Return number of owners in @@all
  def self.count 
    self.all.count
  end

  # Clear @@all
  def self.reset_all
    self.all.clear
  end

  # Return species statement
  def say_species
    return "I am a #{@species}."
  end

  # Add fish to pets array
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  # Add cat to pets array
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  # Add dog to pets array
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  # Change dogs' mood by walking them
  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy"}
  end

  # Change cats' mood by playing with them
  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy"}
  end

  # Change fish mood by feeding with them
  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  # Change mood and empty pets hash by selling pets
  def sell_pets
    @pets.each do |type, pet| 
      pet.each { |animal| animal.mood = "nervous"}
    end
    @pets.clear
  end

  # Return list of pets in sentence form
  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end