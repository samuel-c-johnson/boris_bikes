require_relative "Bike"

class DockingStation
  attr_reader :bikes
   #don't need to initiliaze the bike instance variable
  def initialize
    @bikes = []
  end

  def release_bike
    raise RuntimeError, "No bikes available" unless !empty? #best practice as attr_reader adds '@'
    @bikes.pop
  end

  def dock(a_bike)
    # should would 19 or less
    raise RuntimeError, "Dock full" unless !full?  #guard condition
    # adding bikes to the "DockingStation"
    @bikes.push(a_bike)
  end
  private

  def full?
    if bikes.length == 20 then true else false end
  end

  def empty?
    if bikes.length == 0 then true else false end
  end

end
