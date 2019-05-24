require 'pry'

class Owner
  
  attr_reader :species 
  attr_accessor :name, :pets
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
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
    return "I am a #{@species}."
  end
  
  def pets
    @pets
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
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
  
  # sell (clear array?) then change each mood to nervous. do all within the each loop
  def sell_pets
    @pets.each do |k,v|
        v.each do |e|
          e.mood = "nervous"
        end 
         v.clear
    end
  end
   
  
  # "I have 2 fishes, 1 dog, 3 cats"
  def list_pets
    pets_list = []
    @pets.each do |k,v|
        pets_list << v.count.to_s + " " + k.to_s 
      end
    pets_list.each do |e|
      if e.end_with?("es")
        e.chop!.chop!
      elsif
        e.end_with?("s")
        e.chop!
        e << "(s)"
      end
    end
    pets_list.last.prepend("and ")<<(".")
    pets_list.join(", ").prepend("I have ") 
      
  end
  
  
end #Owner
