require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

o1 = CarOwner.new("John") #clunker
o2 = CarOwner.new("Sara") #antique
o3 = CarOwner.new("Alice") #sports
o4 = CarOwner.new("Barry") #sports
o5 = CarOwner.new("Cooper") #clunker


m1 = Mechanic.new("Allen", "clunker")
m2 = Mechanic.new("Gary", "antique")
m3 = Mechanic.new("Mildred", "sports")


c1 = Car.new("hyndai", "accent", "clunker")
c2 = Car.new("buick", "century", "antique")
c3 = Car.new("porsche", "boxter", "sports")
c4 = Car.new("dodge", "charger", "sports")
c5 = Car.new("pontiac", "sunbird", "clunker")

c1.car_owner = o1
c2.car_owner = o2
c3.car_owner = o3
c4.car_owner = o4
c5.car_owner = o5

c1.mechanic = m1
c2.mechanic = m2
c3.mechanic = m3
c4.mechanic = m3
c5.mechanic = m1

o1.mechanic_list
c1.mechanic_list
m1.car_service

binding.pry
