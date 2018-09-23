require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

o1 = CarOwner.new("Bill")
o2 = CarOwner.new("Tom")
o3 = CarOwner.new("Mike")

m1 = Mechanic.new("Cat","antique")
m2 = Mechanic.new("Dog","exotic")
m3 = Mechanic.new("Squirrel","clunker")

c1 = Car.new("Porsche", "911", "exotic", o1, m2)
c2 = Car.new("Honda", "Accord", "clunker", o2, m3)
c3 = Car.new("Ford", "Model T", "antique", o3, m1)



binding.pry
0
