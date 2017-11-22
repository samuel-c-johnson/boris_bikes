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
  end


  it { is_expected.to respond_to(:dock).with(1).argument}


  it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
  end

  # Respond to .bike method
  it { is_expected.to respond_to(:bike) }

it "returns error when dock empty" do
  expect { DockingStation.new.release_bike }. to raise_error "No bikes available"
end





end
