require_relative "../lib/DockingStation.rb"
require_relative "../lib/Bike.rb"
station = DockingStation.new
#station.capacity = 50
#9.times{ station.dock(Bike.new) }
#station.release_bike
#1.times{ station.release_bike}
a_bike = Bike.new
 p a_bike.working?
