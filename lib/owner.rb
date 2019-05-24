class Owner
@@all = []

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    sell.all.clear
  end







end
