require_relative "Bike"

class DockingStation

attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(a_bike)
    @bike = a_bike
  end

end
