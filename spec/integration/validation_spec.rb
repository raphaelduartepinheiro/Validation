require "spec_helper"
require "validation"

describe Validation do
  before :each do
    extend Validation
  end
  
  context "when call #validate" do
    it "set values" do
      result = { val_module: "IsInteger", input: 5, rule: true, option: "integer"}
      expect(Validation.set_values(5, integer: true)).to eq(result)
    end

    it "load module" do
      Validation.load_module("IsInteger")
      expect(Validation.valid?(5, true)).to eq(true)
    end

    it "read a block" do
      Validation.params do
        Validation.validate(5, integer: true)
        Validation.validate(true, boolean: true)
      end
    end
  end
end

