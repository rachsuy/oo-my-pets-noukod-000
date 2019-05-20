class Owner
  # code goes here
  attr_accessor :name, :pets, :fish, :dog
  attr_reader  :say_species, :species
 
  
  @@pets = {:fishes => [], :dogs => [], :cats => []}
  @@all =[]
  def initialize(species)
    @species = species
    @name = name
   # @@pets = pets
    @@all << self
  end
  
  
  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end
  
  def say_species
    puts "I'm #{species}"
  end
  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end
  
  
  def buy_fish(cat)
    @@pets[:fishes] << Fish.new(cat)
  end
  
  
  def buy_dog(dog)
    @@pets[:Dogs] << Dog.new(cat)
  end
   
  
 
end