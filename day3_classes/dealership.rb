require './car.rb'

class Dealership
  attr_accessor :name
  attr_accessor :inventory

  def initialize
    self.name = ""
    self.inventory = []
  end

  def add_car(*car_attributes)
    car = Car.add_car(
      car_attributes [0],
      car_attributes[1],
      car_attributes[2],
      car_attributes[3],
      car_attributes[4],
      car_attributes[5],
      car_attributes[6]
    )
    
    self.inventory.push car
  end

  def remove_car index
    self.inventory.delete_at index
  end
end

nickys = Dealership.new
nickys.name = "Big Nicky's"
nickys.add_car("Elise", "Lazer Blue", 190, 2005,"Lotus", 30, false)
p nickys

jamies = Dealership.new
jamies.name = "Uncle Jamie's"
jamies.add_car("Wagon", "Lazer Blue", 190, 2005,"Volvo", 30, true)
jamies.add_car("Roadster", "Pink", "infinite", 2005,"Tesla", 30, true)
p jamies

removed_car = jamies.remove_car(0)
nickys.add_car(removed_car.model, removed_car.color, removed_car.horsepower, removed_car.year, removed_car.brand, removed_car.mpg, removed_car.cupholders)

p jamies
p nickys
