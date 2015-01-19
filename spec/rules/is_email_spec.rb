require "spec_helper"

describe Resize::Validation::Rules::IsEmail do
  before { extend Resize::Validation::Rules::IsEmail }
  
  context "with valid params" do
    it "should return true" do
      expect(is_valid?("user@example.com")).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?("usergjsgd.com")).to eq(false)
    end
  end
end