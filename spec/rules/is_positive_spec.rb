require "spec_helper"
require "resize/rules/is_positive"

describe Resize::Validation::Rules::IsPositive do
  before { extend Resize::Validation::Rules::IsPositive }

  context "with valid params" do
    it "should return true" do
      expect(is_valid?(5)).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?(-5)).to eq(false)
    end
  end
end
