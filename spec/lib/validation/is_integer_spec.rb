require "spec_helper"
require "validation/is_integer"

describe Validation::IsInteger do
  before :each do
    extend Validation::IsInteger
  end

  it "should return true for integer input" do
    validate(5, true).should eq(true)
  end

  it "should return true for string input with option false" do
    validate("five", false).should eq(true)
  end

  it "should return false for string input with option true" do
    validate("five", true).should eq(false)
  end
end

