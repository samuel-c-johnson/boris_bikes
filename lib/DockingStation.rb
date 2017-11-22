require_relative "Bike"

class DockingStation
  attr_reader :bike #don't need to initiliaze the bike instance variable

  def release_bike
    raise RuntimeError.new
    @bike
    # if bike # if there is a docked bike
    #   a_bike = @bike
    #   @bike = nil #have to say that as the bike is returned (released) there will be no bike left before releasing said bike
    #   return a_bike
    # else
    #   raise RuntimeError.new()
    # end
  end

  def dock(a_bike)
    @bike = a_bike
  end

end
