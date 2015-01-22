require "spec_helper"

describe Resize::Validation::Rules::IsString do
  before { extend Resize::Validation::Rules::IsString }

  context "with valid params" do
    it "should return true" do
      expect(is_valid?("Matisyahu")).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?(5)).to eq(false)
    end
  end  
end
