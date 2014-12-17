require "spec_helper"
require "rules/is_boolean"

describe Validation::Rules::IsBoolean do
  before { extend Validation::Rules::IsBoolean }
  
  context "with valid params" do
    it "should return true" do
      expect(is_valid?(true, true)).to eq(true)
      expect(is_valid?(false, true)).to eq(true)
      expect(is_valid?("String", false)).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?("String", true)).to eq(false)
      expect(is_valid?(2, true)).to eq(false)
    end
  end
end
