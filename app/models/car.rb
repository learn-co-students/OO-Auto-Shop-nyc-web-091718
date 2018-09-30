require 'pry'

class Car

  attr_reader :make, :model, :classification
  attr_accessor :car_owner, :mechanic

  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.class_cars
    self.all.map do |car|
      car.classification
    end
  end

  def mechanic_list
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end
