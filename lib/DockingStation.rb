require_relative "Bike"

class DockingStation
  attr_reader :bikes
   #don't need to initiliaze the bike instance variable
  def initialize
    @bikes = []
  end

  def release_bike
    raise RuntimeError, "No bikes available" unless bikes.length >=1 #best practice as attr_reader adds '@'
    @bikes.pop
  end

  def dock(a_bike)
    # should would 19 or less
    raise RuntimeError, "Dock full" unless bikes.length <= 19  #guard condition
    # adding bikes to the "DockingStation"
    @bikes.push(a_bike)
  end

end
