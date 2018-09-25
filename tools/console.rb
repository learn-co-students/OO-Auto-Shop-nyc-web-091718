require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("co1")
co2 = CarOwner.new("co2")
co3 = CarOwner.new("co3")

m1 = Mechanic.new("m1", "s1")
m2 = Mechanic.new("m2", "s2")
m3 = Mechanic.new("m3", "s3")
m4 = Mechanic.new("m4", "s4")

c1 = Car.new("ma1","mo1","cl1",m1,co1)
c2 = Car.new("ma2","mo2","cl2",m2,co1)
c3 = Car.new("ma3","mo3","cl3",m2,co2)

binding.pry
