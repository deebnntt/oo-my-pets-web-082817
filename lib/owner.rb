class Owner

attr_reader :species
attr_accessor :name, :pets

ALL = []

  def self.all
    ALL
  end

  def self.count
    Owner.all.count
  end

  def self.reset_all
    Owner.all.clear
  end

  def initialize(name)
    @name =  name
    ALL << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{self.species}."
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
    @pets[:dogs].each do |d|
      d.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |c|
      c.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |f|
      f.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |keys, array|
      array.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count
    cat_count = @pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
