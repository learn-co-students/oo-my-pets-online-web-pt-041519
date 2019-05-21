require "pry"

class Owner

  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end


  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets.collect do |species, instance|
      if species == :dogs
        instance.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end


  def play_with_cats
    @pets.collect do |species, instance|
      if species == :cats
        instance.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    @pets.collect do |species, instance|
      if species == :fishes
        instance.each do |fish|
          fish.mood = "happy"
        end
      end
    end
  end

  def sell_pets
    @pets.collect do |species, instance|
        instance.each do |animal|
          animal.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    cats = @pets[:cats].size
    dogs = @pets[:dogs].size
    fish = @pets[:fishes].size
    return "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
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
end