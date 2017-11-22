#require 'DockingStation.rb'
#require 'Bike.rb'

require_relative '../lib/DockingStation.rb'
require_relative '../lib/Bike.rb'

describe DockingStation do
  # Release a bike
  it { is_expected.to respond_to :release_bike }

  describe "#release_bike" do
      it 'releases working bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end

      it "Cannot dock, Dock full" do
          20.times {subject.dock(Bike.new)}
          # subject.dock(bike)
          expect {subject.dock(Bike.new)}.to raise_error "Docking Station Full"
      end
  end


  it { is_expected.to respond_to(:dock).with(1).argument}


  it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
  end

  # Respond to .bike method
  it { is_expected.to respond_to(:bike) }

it "returns error when dock empty" do
  expect { DockingStation.new.release_bike }. to raise_error "No bikes available"
end

# it "Fills a docking station" do
#   # docking_station = DockingStation.new
#   20.times {subject.dock(Bike.new)}
#   bike_array
#   expect (bike_array.count).to eq 20
# end



end
