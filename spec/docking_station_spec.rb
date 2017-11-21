require "DockingStation"

describe DockingStation do

it "releases a bike" do
  is_expected.to respond_to :release_bike
end
  it "released bike is working?" do
    bike = subject.release_bike
    expect(bike.working?).to be(true)
  end
end
