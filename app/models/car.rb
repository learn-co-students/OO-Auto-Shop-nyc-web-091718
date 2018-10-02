class Car

  attr_reader :make, :model, :owner, :mechanic

  @@all = []

  def self.all
    @@all
  end

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

end
