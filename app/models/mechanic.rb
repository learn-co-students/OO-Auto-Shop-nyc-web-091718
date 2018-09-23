class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def work_on_new_car(make, model, classification, owner)
    Car.new(make, model, classification, owner, self)
  end

  def cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def owners
    self.cars.map do |cars|
      cars.owner
    end
  end

  def owners_by_name
    self.owners.map do |owner|
      owner.name
    end
  end

  ### Class Methods
  def self.all
    @@all
  end
end # End of Mechanic Class

#
# Mechanic
#
# DONE Get a list of all mechanics
#
# DONE Get a list of all cars that a mechanic services
#
# DONE Get a list of all the car owners that go to a specific mechanic
#
# DONE Get a list of the names of all car owners who go to a specific mechanic
