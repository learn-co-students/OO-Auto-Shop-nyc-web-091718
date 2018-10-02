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
    cars = []
    Car.all.select do |car|
      if car.mechanic == self
        cars << "#{car.make} #{car.model}"
      end
    end
    cars
  end

  def owners
    owners = []
    Car.all.select do |car|
      if car.mechanic == self
        owners << car.owner.name
      end
    end
    owners.uniq
  end

end
