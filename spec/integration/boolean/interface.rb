require "spec_helper"
require "validation"

describe Validation do
  before :each do
    extend Validation
  end
  
  context "when input is validated" do
    it "validate a boolean and return a boolean" do
      expect(validate(true, boolean: true)).to eq(true)
    end
  end

  context "when input dont pass on validation" do
    it "validate a boolean and return raise error" do
      expect { validate!(true, boolean: false) }.to raise_error("The input true does not match the rule boolean with option false")
    end
  end
end


