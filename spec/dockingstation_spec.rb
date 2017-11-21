require '../lib/DockingStation.rb'
require '../lib/Bike.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it 'returns instance of Bike' do
    expect(:release_bike).to be_instance_of Bike
  end



end
