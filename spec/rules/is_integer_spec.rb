require "spec_helper"
require "rules/is_integer"

describe Resize::Validation::Rules::IsInteger do
  before { extend Resize::Validation::Rules::IsInteger }

  context "with valid params" do
    it "should return true" do
      expect(is_valid?(5)).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?("five")).to eq(false)
    end
  end
end
