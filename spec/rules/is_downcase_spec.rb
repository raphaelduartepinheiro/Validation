require "spec_helper"
require "resize/rules/is_downcase"

describe Resize::Validation::Rules::IsDowncase do
  before { extend Resize::Validation::Rules::IsDowncase }

  context "with valid params" do
    it "should return true" do
      expect(is_valid?("my name")).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?("My name")).to eq(false)
    end
  end  
end

