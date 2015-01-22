require "spec_helper"

describe Resize::Validation::Rules::IsBoolean do
  before { extend Resize::Validation::Rules::IsBoolean }
  
  context "with valid params" do
    it "should return true" do
      expect(is_valid?(true)).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?("true")).to eq(false)
    end
  end
end
