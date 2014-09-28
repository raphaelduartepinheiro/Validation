require "spec_helper"
require "validation/is_integer"

describe Validation::IsInteger do
  before :each do
    extend Validation::IsInteger
  end

  it "should return true for integer input" do
    validation(5, true).should eq(true)
  end

  it "should return true for string input with option false" do
    validation("five", false).should eq(true)
  end

  it "should return false for string input with option true" do
    validation("five", true).should eq(false)
  end
end

