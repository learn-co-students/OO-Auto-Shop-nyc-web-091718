class CarOwner

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    cars = []
    Car.all.select do |car|
      if car.owner == self
        cars << "#{car.make} #{car.model}"
      end
    end
    cars
  end

  def mechanics
    mechanics = []
    Car.all.select do |car|
      if car.owner == self
        mechanics << car.mechanic.name
      end
    end
    mechanics.uniq
  end

  def self.average_owned
    Car.all.count.to_f / CarOwner.all.count.to_f
  end

end
