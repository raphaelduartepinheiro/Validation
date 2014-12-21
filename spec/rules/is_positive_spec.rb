require "rules/is_positive"
require "spec_helper"

describe Validation::Rules::IsPositive do
  before { extend Validation::Rules::IsPositive }

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
