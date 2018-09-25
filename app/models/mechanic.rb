class Mechanic

  attr_reader :name, :specialty

  @@all = []
  def self.all
    @@all
  end

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def owners
    self.cars.map do |car|
      car.car_owner
    end
  end

  def owner_name
    self.owners.map do |owner|
      owner.name
    end
  end

end
