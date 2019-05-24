require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  # def pets
  # end

  def buy_fish(fish_name)
    pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    dog  = Dog.new(dog_name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    pets[:cats][0].mood = "happy"
  end

  def feed_fish
    pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    pets.each do |pet, name|
      name.each {|elem| elem.mood = "nervous"}
      name.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
