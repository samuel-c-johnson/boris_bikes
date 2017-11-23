require "DockingStation"
require "Bike.rb"

describe DockingStation do

  it { is_expected.to respond_to :release_bike }
  #another way of writing the test v
    # it "releases a bike" do
    #   is_expected.to respond_to :release_bike #whenever refereing to a method inside rspec use symbol eg//: :release_bike not release_bike
    # end
  it "releases working bikes" do
    bike = Bike.new
    subject.dock(bike)
    bike = subject.release_bike # setting up test ^
    expect(bike).to be_working # test
  end
      it "dock has accepted an argument" do
        expect(subject).to respond_to(:dock).with(1).argument
      end

  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike  #has () as testing if eq
    end

    it "should raise error when no bike docked" do # {} as testing if behaviour occurs
      expect{ subject.release_bike }.to raise_error(RuntimeError, "No bikes available")
    end
  end
  describe "#dock" do
    it "should raise error when 21st bike is attempted to docked" do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock(Bike.new)
      end
      expect{ subject.dock(Bike.new) }.to raise_error(RuntimeError, "Dock full")
    end
  end
end
