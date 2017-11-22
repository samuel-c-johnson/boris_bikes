require "DockingStation"
require "Bike.rb"

describe DockingStation do

  it "releases a bike" do
    is_expected.to respond_to :release_bike #whenever refereing to a method inside rspec use symbol eg//: :release_bike not release_bike
  end
  it "released bike, is working" do
    bike = subject.release_bike
    expect(bike.working?).to be(true)
  end
  it "dock has accepted an argument" do
    expect(subject).to respond_to(:dock).with(1).argument
  end
  it "should raise error when no bike docked" do #if no bike is docked and you try to release a bike an error is raised
    expect(subject.release_bike).to raise_error(RuntimeError)
  end
end
