require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @pets = pets
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.count
    #binding.pry
    @@owners.length
  end

  def self.reset_all
    #binding.pry
    @@owners.clear
  end

  def say_species
    #binding.pry
    "I am a #{@species}."
  end

  def buy_fish(fishname)
    #binding.pry
    @pets[:fishes] << Fish.new(fishname)
  end

  def buy_cat(catname)
    #binding.pry
    @pets[:cats] << Cat.new(catname)
  end

  def buy_dog(dogname)
    #binding.pry
    @pets[:dogs] << Dog.new(dogname)
  end

  def walk_dogs
    #binding.pry
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
    #binding.pry
    @pets.each do |type, pets_array| # Call each species and create pet array from @pets
      pets_array.each do |pet| # Pass each pets_array values of pet.mood with nervous value from happy
        pet.mood = "nervous"
      end
    end
    @pets = {} # Turn each pets nervous inside the empty hash
  end

  def list_pets
    #binding.pry
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)." # Use array.count or just count to return the number of elements just like length
  end

end
