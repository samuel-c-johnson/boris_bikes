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

    bike = Bike.new
    bike.working = false
    subject.dock(bike)

    expect {subject.release_bike }.to raise_error("Bike broken")

  end
      it "dock has accepted an argument" do
        expect(subject).to respond_to(:dock).with(1).argument
      end

      it 'has a default capacity' do
        expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
      end

      it "allows user to set capacity of docking station" do
        expect(subject.capacity = 50).to eq(50)
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
    it "should raise error when full of bikes" do
      subject.capacity.times { subject.dock(Bike.new) }
    # station.dock(Bike.new).working?
    # it "should be able to report broken bike" do
    #   expect(subject.dock(Bike.new).working?).to
    # end
    expect{ subject.dock(Bike.new) }.to raise_error(RuntimeError, "Dock full")
    end
    it 'Will accept broken bikes' do
      bike = Bike.new
      bike.working = false
      expect {subject.dock(bike)}.not_to raise_error
    end

    it 'will accept an argument about whether the bike is working' do
      bike = Bike.new
      expect {subject.dock(bike, false).not_to raise_error}
      expect(subject).to respond_to(:dock).with(2).arguments
    end
end
end
