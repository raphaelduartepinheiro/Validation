require "spec_helper"
require "validation"

describe Validation do
  before :each do
    extend Validation
  end

  context "when input is validated" do
    it "validate a integer and return a boolean" do
      expect(validate(5, integer: true)).to eq(true)
    end
  end

  context "when input dont pass on validation" do
    it "validate a integer and return raise error" do
      expect { validate!(5, integer: false) }.to raise_error("The input 5 does not match the rule integer with option false")
    end
  end
end


