class Owner
@@all = []
attr_reader :species

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end







end
