require "spec_helper"
require "resize/rules/is_email"

describe Resize::Validation::Rules::IsRg do
  before { extend Resize::Validation::Rules::IsRg }
  
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
