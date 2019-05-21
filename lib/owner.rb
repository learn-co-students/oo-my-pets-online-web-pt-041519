require_relative "../lib/dog.rb"
require_relative "../lib/cat.rb"
require_relative "../lib/fish.rb"
class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all_owners = []
  
  def initialize(species, pets = {:fishes => [], :cats => [], :dogs => []})
    @species = species
    @pets = pets
    @@all_owners << self
  end 
  
  def say_species
    return "I am a #{@species}."
  end
  
  def self.all
    @@all_owners
  end 
  
  def self.count
    @@all_owners.count
  end
  
  def self.reset_all
    @@all_owners.clear
  end
  
  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end 
  
  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end 
  
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end 
  
  def walk_dogs
    dog_array = @pets[:dogs]
    dog_array.each do |pup|
      pup.mood = "happy"
    end 
  end 
  
  def play_with_cats
    cat_array = @pets[:cats]
    cat_array.each do |kitty|
      kitty.mood = "happy"
    end 
  end
  
  def feed_fish
    fish_array = @pets[:fishes]
    fish_array.each do |fish|
      fish.mood = "happy"
    end 
  end
  
  def sell_pets
    pet_array = @pets.values.flatten
    pet_array.each do |baby|
      baby.mood = "nervous"
    end 
    @pets.clear
  end
  
  def list_pets
    cat_count = @pets[:cats].length
    fish_count = @pets[:fishes].length
    dog_count = @pets[:dogs].length
    
    list = "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end