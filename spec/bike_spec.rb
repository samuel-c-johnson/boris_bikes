require "Bike"

describe Bike do
  # it "is bike working?" do
  #   is_expected.to respond_to :working?
  # end
  # why does this fail....
  it{ is_expected.to respond_to :working?} # this works...
end
