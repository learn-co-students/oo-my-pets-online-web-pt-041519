require 'pry'

class Owner

  @@owners = []

  attr_reader :species

  attr_accessor :name, :pets

  def initialize(species, pets = {:fishes=> [],:dogs => [],:cats => []})
    @species= species
    @@owners << self
    @name = name
    @pets = pets
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    # fishy = Fish.new(name) #uncommented code works the same as the commented code
    # pets[:fishes] << fishy
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end



end
