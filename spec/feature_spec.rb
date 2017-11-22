require_relative "../lib/DockingStation.rb"
require_relative "../lib/Bike.rb"
station = DockingStation.new
p station
a_bike = Bike.new
p a_bike
b_bike = Bike.new
p b_bike
#station.release_bike
station.dock(a_bike)
station.dock(b_bike)
