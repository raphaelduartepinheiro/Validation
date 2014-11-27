require "spec_helper"
require "rules/is_integer"

describe Validation::IsInteger do
  before :each do
    extend Validation::IsInteger
  end

  it "should return true" do
    expect(validate(5, true)).to eq(true)
  end

  it "should return true" do
    expect(validate("five", false)).to eq(true)
  end

  it "should return false" do
    expect(validate("five", true)).to eq(false)
  end
end

