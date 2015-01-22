require "spec_helper"

describe Resize::Validation::Rules::IsDomain do
  before { extend Resize::Validation::Rules::IsDomain }

  context "with valid params" do
    it "should return true" do
      expect(is_valid?("http://gmail.com")).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?("http:||blah")).to eq(false)
    end
  end  
end