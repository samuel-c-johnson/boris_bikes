require_relative "Bike"

class DockingStation
  attr_reader :bikes
   #don't need to initiliaze the bike instance variable
  # DEFAULT_CAPACITY = 20
  DEFAULT_CAPACITY = 20
  def initialize
    @bikes = []
  end

  def release_bike #(b_bike) want a specific bike option ONLY
    raise RuntimeError, "No bikes available" unless !empty? #best practice as attr_reader adds '@'
    @bikes.pop     #.delete(b_bike)
  end

  def dock(a_bike)
    # should would 19 or less
    raise RuntimeError, "Dock full" unless !full?  #guard condition
    # adding bikes to the "DockingStation"
    @bikes.push(a_bike) # << same as .push
  end
  private

  def full?
    if bikes.length == DEFAULT_CAPACITY then true else false end #single responibility principle does one thing!!
  end

  def empty?
    if bikes.length == 0 then true else false end
  end

end
