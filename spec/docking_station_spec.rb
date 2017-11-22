require "DockingStation"
require "Bike.rb"

describe DockingStation do

  it "releases a bike" do
    is_expected.to respond_to :release_bike
  end
  it "released bike, is working" do
    bike = subject.release_bike
    expect(bike.working?).to be(true)
  end
  it "dock has accepted an argument" do
    expect(subject).to respond_to(:dock).with(1).argument
  end
end
