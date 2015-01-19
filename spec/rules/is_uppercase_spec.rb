require "spec_helper"
require "resize/rules/is_uppercase"

describe Resize::Validation::Rules::IsUppercase do
  before { extend Resize::Validation::Rules::IsUppercase }

  context "with valid params" do
    it "should return true" do
      expect(is_valid?("MY NAME")).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?("My name")).to eq(false)
    end
  end  
end