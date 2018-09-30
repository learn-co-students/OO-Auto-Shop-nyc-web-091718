require 'pry'
class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def car_list
    Car.all.select do |car|
      car.car_owner == self
    end
  end

  def mechanic_list
    self.car_list.map do |car|
      car.mechanic
    end
  end

  def self.average
    total_cars = self.all.inject(0) do |sum, owner|
    sum + owner.car_list.size
    end
    total_cars / self.all.size
  end


end
