require "spec_helper"
require "rules/is_boolean"

describe Validation::IsBoolean do
  before :each do
    extend Validation::IsBoolean
  end
  
  it "should return true" do
    expect(validate(true, true)).to eq(true)
  end

  it "should return true" do
    expect(validate(false, true)).to eq(true)
  end

  it "should return false" do
    expect(validate("String", true)).to eq(false)
  end

  it "should return true" do
    expect(validate("String", false)).to eq(true)
  end
end
