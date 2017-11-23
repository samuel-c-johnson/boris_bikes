require_relative "Bike"

class DockingStation

  attr_accessor :capacity
   #don't need to initiliaze the bike instance variable
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity #can have @capacity = DEFAULT_CAPACITY (WITHOUT THE LINE ^)
  end

  def release_bike #(b_bike) want a specific bike option ONLY
    raise RuntimeError, "No bikes available" unless !empty? #best practice as attr_reader adds '@'
    @bikes.pop     #.delete(b_bike)
  end

  def dock(a_bike)
    raise RuntimeError, "Dock full" unless !full?  #guard condition
    # adding bikes to the "DockingStation"
    @bikes.push(a_bike) # << same as .push
  end

  private

  attr_reader :bikes # clearer in the code

  def full?
    if bikes.length == @capacity then true else false end #single responibility principle does one thing!!
  end

  def empty?
    if bikes.length == 0 then true else false end
  end
end
