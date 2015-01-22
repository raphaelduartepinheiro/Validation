require "spec_helper"

describe Resize::Validation::Rules::IsJson do
  before { extend Resize::Validation::Rules::IsJson }

  context "with valid params" do
    it "should return true" do
      expect(is_valid?('{"name": "resize"}')).to eq(true)
    end
  end

  context "with invalid params" do
    it "should return false" do
      expect(is_valid?('{"name"; "resize"}')).to eq(false)
      expect(is_valid?('{name: resize}')).to eq(false)
      expect(is_valid?('{"name" => "resize"}')).to eq(false)
    end
  end
end
