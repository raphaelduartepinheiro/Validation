require "spec_helper"
require "validation"

describe Validation do
  before :each do
    extend Validation
  end
  
  context "when call #validate" do
    it "set values" do
      result = { val_module: "IsInteger", input: 5, rule: true, option: "integer"}
      expect(set_values(5, integer: true)).to eq(result)
    end

    it "load module" do
      load_module("IsInteger")
      expect(valid?(5, true)).to eq(true)
    end
  end

  context "when input is validated" do
    it "validate a integer and return a boolean" do
      expect(validate(5, integer: true)).to eq(true)
    end

    it "validate a boolean and return a boolean" do
      expect(validate(true, boolean: true)).to eq(true)
    end
  end

  context "when input dont pass on validation" do
    it "validate a integer and return raise error" do
      expect { validate!(5, integer: false) }.to raise_error("The input 5 does not match the rule integer with option false")
    end

    it "validate a boolean and return raise error" do
      expect { validate!(true, boolean: false) }.to raise_error("The input true does not match the rule boolean with option false")
    end
  end
end

