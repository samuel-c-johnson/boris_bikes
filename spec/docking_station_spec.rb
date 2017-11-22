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
    it "should raise error when 2nd bike is attempted to docked" do
      a_bike = Bike.new
      b_bike = Bike.new # second bike trying to dock
      subject.dock(a_bike)
      expect{ subject.dock(b_bike) }.to raise_error(RuntimeError, "Dock full")
    end
  end
end
