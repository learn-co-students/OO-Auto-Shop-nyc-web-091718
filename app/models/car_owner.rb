class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def buy_car(make, model, classification, mechanic)
    Car.new(make, model, classification, self, mechanic)
  end

  def cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def mechanics
    self.cars.map do |cars|
      cars.mechanic
    end
  end


  ### Class Methods
  def self.all
    @@all
  end

  def self.avg_count
  all_cars = self.all.map do |owner|
      owner.cars
    end
    all_cars.length / self.all.length
  end

end ### End of CarOwner class

# CarOwner
#
# DONE Get a list of all owners
#
# DONE Get a list of all the cars that a specific owner has
#
# DONE Get a list of all the mechanics that a specific owner goes to
#
# DONE Get the average amount of cars owned for all owners
