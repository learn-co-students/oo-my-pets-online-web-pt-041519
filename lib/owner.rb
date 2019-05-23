require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  # CLASS VARIABLES AND METHODS

  @@all = []
  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  # - - - - - - - - - - - - - - - - - - - - -

  def initialize(species, name = nil)
    @species = species
    @name = name
    @pets = { :fishes => [], :dogs => [], :cats => [] }
    self.class.all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    pets.each do |species, pets|
      @pets[species].each {|pet| pet.mood = "nervous"}
      @pets[species].clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  private
  def species=(species)
    @species = species
  end
end
