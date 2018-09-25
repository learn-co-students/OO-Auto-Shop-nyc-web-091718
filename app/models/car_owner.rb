class CarOwner

  attr_reader :name
  @@all = []
  def self.all
    @@all
  end

  def self.average_cars
    CarOwner.all.map do |car_owner|
      car_owner.cars.size
    end.inject(0){|sum,x| sum + x}.to_f / CarOwner.all.size.to_f
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.all.select do |car|
      car.car_owner == self
    end
  end

  def mechanics
    self.cars.map do |car|
      car.mechanic
    end
  end

end
