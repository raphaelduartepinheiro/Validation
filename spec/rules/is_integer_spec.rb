require "spec_helper"
require "rules/is_integer"

describe Validation::Rules::IsInteger do
  before { extend Validation::Rules::IsInteger }

  context "with valid params" do
    it "should return true" do
      expect(is_valid?(5, true)).to eq(true)
      expect(is_valid?("five", false)).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?("five", true)).to eq(false)
      expect(is_valid?(5, false)).to eq(false)
    end
  end
end
