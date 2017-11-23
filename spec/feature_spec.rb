require_relative "../lib/DockingStation.rb"
require_relative "../lib/Bike.rb"
station = DockingStation.new
21.times{ station.dock(Bike.new) }
#station.release_bike
1.times{ station.release_bike}
