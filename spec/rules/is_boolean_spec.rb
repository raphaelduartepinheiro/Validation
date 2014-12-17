require "spec_helper"
require "rules/is_boolean"

describe Validation::IsBoolean do
  before { extend Validation::IsBoolean }
  
  context "with valid params" do
    it "should return true" do
      expect(validate(true, true)).to eq(true)
      expect(validate(false, true)).to eq(true)
      expect(validate("String", false)).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(validate("String", true)).to eq(false)
      expect(validate(2, true)).to eq(false)
    end
  end
end
