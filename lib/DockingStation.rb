require_relative "Bike"

class DockingStation
  attr_reader :bike #don't need to initiliaze the bike instance variable

  def release_bike
    Bike.new
  end

  def dock(a_bike)
    @bike = a_bike
  end
end
