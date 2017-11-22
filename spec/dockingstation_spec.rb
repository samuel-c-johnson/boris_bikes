#require 'DockingStation.rb'
#require 'Bike.rb'

require_relative '../lib/DockingStation.rb'
require_relative '../lib/Bike.rb'

describe DockingStation do
  # Release a bike
  it { is_expected.to respond_to :release_bike }

  # Is the bike a working one
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  # Sams Dock a bike
  it { is_expected.to respond_to(:dock).with(1).argument}
  # ---------

  it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
  end



  #
  it { is_expected.to respond_to(:bike) }




end
