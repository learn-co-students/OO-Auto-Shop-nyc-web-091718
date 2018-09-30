require 'pry'

class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def car_service
    Car.all.select do |car|
      car.mechanic == self
      # binding.pry
    end
  end

  #Get a list of all the car owners that go to a specific mechanic
  def mechanic_customers
    self.car_service.select do |mechanic|
      mechanic.car_owner
    end
  end

  #Get a list of the names of all car owners who go to a specific mechanic
  def owner_names
    self.car_service.map do |mechanic|
      mechanic.car_owner.name
    end
  end



end
