class Owner
 
 attr_accessor :name, :pets  
 attr_reader :species
 
 @@all = []
 
 def initialize(species)
  # binding.pry
   @name = name 
   @species = species
   @pets = {:cats=>[], 
            :dogs=>[], 
            :fishes=>[]}
   @@all << self 
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
   # binding.pry 
   "I am a #{species}."
 end 
 
# def buy_fish(fish_name)
#   @pets[:fishes] << Fish.new(fish_name)
# end 
 
 def buy_cat(cat_name)
   @pets[:cats] << Cat.new(cat_name)
 end
 
 def buy_dog(dog_name)
   @pets[:dogs] << Dog.new(dog_name)
 end
 
 def walk_dogs
  # binding.pry 
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end 
 end 
 
 def play_with_cats 
   @pets[:cats].each do |cat|
     cat.mood = "happy"
   end 
 end 
 
# def feed_fish
#   @pets[:fishes].each do |fish|
#     fish.mood = "happy"
#   end 
# end
 
 def sell_pets
  @pets.each do |species, animals|
    # binding.pry 
      animals.each do |pet|
      pet.mood = "nervous"
    end
    animals.clear 
  end 
 end
  
  def list_pets
    # binding.pry 
     "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end 
 
 
end

