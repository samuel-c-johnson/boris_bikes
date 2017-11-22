require_relative "Bike"

class DockingStation

attr_reader :bike

def initialize
@bike_array =[]
end

  def release_bike
    raise "No bikes available" if @bike_array.empty?
    @bike_array.pop
    # Bike.new
  end

  def dock(a_bike)
    raise "Docking Station Full" if @bike_array.count >=20
    @bike_array << a_bike
  end



end
