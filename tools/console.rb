require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

o1 = CarOwner.new("name1")
o2 = CarOwner.new("name2")
o3 = CarOwner.new("name3")
o4 = CarOwner.new("name4")


m1 = Mechanic.new("mech1", "spec1")
m2 = Mechanic.new("mech2", "spec1")
m3 = Mechanic.new("mech3", "spec1")
m4 = Mechanic.new("mech4", "spec1")
m5 = Mechanic.new("mech5", "spec1")

c1 = Car.new("make1", "model1", "spec1", o1, m5)
c2 = Car.new("make2", "model2", "spec2", o1, m5)
c3 = Car.new("make3", "model3", "spec3", o1, m4)
c4 = Car.new("make4", "model4", "spec4", o2, m3)
c5 = Car.new("make5", "model5", "spec5", o2, m3)
c6 = Car.new("make6", "model6", "spec6", o3, m3)
c7 = Car.new("make7", "model7", "spec7", o4, m3)
c8 = Car.new("make8", "model8", "spec8", o4, m2)
c9 = Car.new("make9", "model9", "spec9", o4, m1)
c10 = Car.new("make10", "model10", "spec10", o4, m1)

binding.pry
