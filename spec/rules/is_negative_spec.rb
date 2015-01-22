require "spec_helper"

describe Resize::Validation::Rules::IsNegative do
  before { extend Resize::Validation::Rules::IsNegative }

  context "with valid params" do
    it "should return true" do
      expect(is_valid?(-5)).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?(0)).to eq(false)
    end
  end
end
