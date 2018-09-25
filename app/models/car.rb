class Car

  attr_reader :make, :model,:classification, :mechanic, :car_owner
  @@all = []

  def self.all
    @@all
  end

  def initialize(make, model, classification, mechanic, car_owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner
    @@all << self
  end

end
