require "spec_helper"

describe Resize::Validation::Rules::IsEmpty do
  before { extend Resize::Validation::Rules::IsEmpty }
  
  context "with valid params" do
    it "should return true" do
      expect(is_valid?("")).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?("londerson@gmail.com")).to eq(false)
    end
  end
end