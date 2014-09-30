require "spec_helper"
require "validation/is_boolean"

describe Validation::IsBoolean do
  before :each do
    extend Validation::IsBoolean
  end
  
  it "should return true" do
    expect(valid?(true, true)).to eq(true)
  end

  it "should return true" do
    expect(valid?(false, true)).to eq(true)
  end

  it "should return false" do
    expect(valid?("String", true)).to eq(false)
  end

  it "should return true" do
    expect(valid?("String", false)).to eq(true)
  end
end
