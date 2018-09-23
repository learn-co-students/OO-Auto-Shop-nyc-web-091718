class Car

  attr_reader :make, :model, :classification
  attr_accessor :owner, :mechanic
  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic

    @@all << self
  end

  def mechanics_by_class
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

  #### Class Methods
  def self.all
    @@all
  end

  def self.classifications
    all_classes = self.all.map do |car|
      car.classification
    end
    all_classes.uniq
  end

end ### End of Car Class


#
# DONE Get a list of all cars
#
# DONE Get a list of all car classifications
#
# DONE Get a list of mechanics that have an expertise that matches the car classification
