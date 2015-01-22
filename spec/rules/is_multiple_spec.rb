require "spec_helper"

describe Resize::Validation::Rules::IsMultiple do
  before { extend Resize::Validation::Rules::IsMultiple }

  context "with valid params" do
    it "should return true" do
      expect(is_valid?(9, 3)).to eq(true)
    end
  end

  context "with invalid params" do
    it "shoul return false" do
      expect(is_valid?(8, 3)).to eq(false)
    end
  end
end
