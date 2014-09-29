require "spec_helper"
require "validation/is_integer"

describe Validation::IsInteger do
  before :each do
    extend Validation::IsInteger
  end

  it "should return true" do
    expect(valid?(5, true)).to eq(true)
  end

  it "should return true" do
    expect(valid?("five", false)).to eq(true)
  end

  it "should return false" do
    expect(valid?("five", true)).to eq(false)
  end
end

