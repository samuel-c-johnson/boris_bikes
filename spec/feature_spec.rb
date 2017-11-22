require_relative "../lib/DockingStation.rb"
require_relative "../lib/Bike.rb"
station = DockingStation.new
19.times{ station.dock(Bike.new) }
#station.release_bike
#20.times{ station.release_bike}
p station.full?
