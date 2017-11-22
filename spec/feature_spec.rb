require_relative "../lib/DockingStation.rb"
require_relative "../lib/Bike.rb"
station = DockingStation.new
20.times{ station.dock(Bike.new) }
#station.release_bike
21.times{ station.release_bike}
p station
