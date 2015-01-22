require "spec_helper"

describe Resize::Validation::Rules::IsRG do
  before { extend Resize::Validation::Rules::IsRG }
  
  context "a valid RG" do
    it "should return true" do
      expect(is_valid?("418757896")).to eq(true)
    end
  end

  context "an invalid RG" do
    it "should return false" do
      expect(is_valid?("121232123")).to eq(false)
    end
  end
end
