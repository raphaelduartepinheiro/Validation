require "spec_helper"
require "rules/is_string"

describe Validation::Rules::IsString do
  before { extend Validation::Rules::IsString }

  context "with valid params" do
    it "should return true" do
      expect(is_valid?("Matisyahu")).to eq(true)
    end
  end
end