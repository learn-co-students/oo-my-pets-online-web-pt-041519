class Owner
  # code goes here
  attr_accessor :name , :pets
  attr_reader :species , :say_species # can't change its species
  @@all = [] #class array
  # @@count = 0 # class counter
  def initialize(name)
    @name = name
    @@all << self  #all returns all instances of Owner that have been created
    # @@count += 1 #count returns the number of owners that have been created
    @species = "human"
    @pets = {:cats =>[] , :dogs => [], :fishes => []}

  end

  def self.all #reader for all class
    @@all
  end

  def self.count #reader for count class
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
     "I am a #{@species}."
  end

  def buy_fish(fish_name) # can buy a fish that is an instance of the Fish class
    pets[:fishes] << Fish.new(fish_name)  #???
  end

  def buy_cat(cat_name)
    pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs #plural...duh.
    pets[:dogs].select{ |dog| dog.mood = "happy"}
  end

  def play_with_cats #plural...duh.
    pets[:cats].select{ |cat| cat.mood = "happy"}
  end

  def feed_fish #plural...duh.
    pets[:fishes].select{ |fish| fish.mood = "happy"}
  end

  def sell_pets #can sell all its pets, which make them nervous
    pets.each do |species, pets|
      pets.each {|pet| pet.mood = "nervous"}
      pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end


end
